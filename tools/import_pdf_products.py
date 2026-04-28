# -*- coding: utf-8 -*-
from __future__ import annotations

import re
from pathlib import Path

import fitz
from PIL import Image, ImageDraw, ImageFont


ROOT = Path(__file__).resolve().parents[1]
PDF_DIR = ROOT / "pdf"
ASSET_DIR = ROOT / "Uploads" / "catalog" / "pdf_products"
SQL_PATH = ROOT / "docker" / "mysql" / "init" / "002_pdf_products.sql"

COMPANY_NAME = "南京科纬易机械设备有限公司"


def clean_utf8mb3(value: str) -> str:
    """MySQL 5.7 utf8 is utf8mb3, so strip characters outside the BMP."""
    return "".join(ch for ch in value if ord(ch) <= 0xFFFF)


def normalize_space(value: str) -> str:
    value = clean_utf8mb3(value)
    value = value.replace("\r", "\n")
    value = re.sub(r"[ \t\u00a0]+", " ", value)
    value = re.sub(r"\n{3,}", "\n\n", value)
    return value.strip()


def lines_from_text(value: str) -> list[str]:
    lines = []
    for line in normalize_space(value).splitlines():
        line = re.sub(r"\s+", " ", line).strip()
        if line:
            lines.append(line)
    return lines


def sql_str(value: str | None) -> str:
    if value is None:
        return "NULL"
    value = clean_utf8mb3(str(value)).replace("\\", "\\\\").replace("'", "''")
    return "'" + value + "'"


def truncate(value: str, size: int = 255) -> str:
    value = normalize_space(value)
    return value[:size]


def slugify_code(code: str, name: str) -> str:
    base = re.sub(r"[^a-zA-Z0-9]+", "-", code.lower()).strip("-")
    if base:
        return "kwy-" + base
    return re.sub(r"[^a-zA-Z0-9]+", "-", name.lower()).strip("-")


def open_pdfs() -> tuple[Path, Path]:
    pdfs = sorted(PDF_DIR.glob("*.pdf"), key=lambda p: p.stat().st_size)
    if len(pdfs) < 2:
        raise RuntimeError("pdf 目录下至少需要两个 PDF 文件")
    material = next((p for p in pdfs if "2026" in p.name), pdfs[0])
    company = next((p for p in pdfs if p != material), pdfs[-1])
    return company, material


def render_pdf_pages(pdf_path: Path, prefix: str, scale: float = 1.5) -> list[str]:
    ASSET_DIR.mkdir(parents=True, exist_ok=True)
    doc = fitz.open(str(pdf_path))
    rel_paths: list[str] = []
    matrix = fitz.Matrix(scale, scale)
    for index, page in enumerate(doc, start=1):
        out_name = f"{prefix}_p{index:02d}.jpg"
        out_path = ASSET_DIR / out_name
        pix = page.get_pixmap(matrix=matrix, alpha=False)
        image = Image.frombytes("RGB", (pix.width, pix.height), pix.samples)
        image.save(out_path, "JPEG", quality=84, optimize=True)
        rel_paths.append(f"catalog/pdf_products/{out_name}")
    return rel_paths


def fit_cover(image: Image.Image, size: tuple[int, int]) -> Image.Image:
    target_w, target_h = size
    ratio = max(target_w / image.width, target_h / image.height)
    resized = image.resize((int(image.width * ratio), int(image.height * ratio)), Image.LANCZOS)
    left = (resized.width - target_w) // 2
    top = (resized.height - target_h) // 2
    return resized.crop((left, top, left + target_w, top + target_h))


def load_font(size: int, bold: bool = False) -> ImageFont.FreeTypeFont | ImageFont.ImageFont:
    candidates = [
        Path("C:/Windows/Fonts/msyhbd.ttc" if bold else "C:/Windows/Fonts/msyh.ttc"),
        Path("C:/Windows/Fonts/simhei.ttf"),
        Path("C:/Windows/Fonts/simsun.ttc"),
    ]
    for path in candidates:
        if path.exists():
            return ImageFont.truetype(str(path), size=size)
    return ImageFont.load_default()


def create_banner(source_rel: str, out_name: str, title: str, subtitle: str, accent: tuple[int, int, int]) -> str:
    source = Image.open(ROOT / "Uploads" / source_rel).convert("RGB")
    canvas = fit_cover(source, (1170, 550)).convert("RGBA")
    overlay = Image.new("RGBA", canvas.size, (18, 26, 36, 142))
    canvas = Image.alpha_composite(canvas, overlay)
    draw = ImageDraw.Draw(canvas)
    title_font = load_font(48, bold=True)
    sub_font = load_font(25)
    small_font = load_font(19)
    draw.rectangle((0, 0, 14, 550), fill=accent + (255,))
    draw.text((72, 148), title, fill=(255, 255, 255, 255), font=title_font)
    draw.text((74, 228), subtitle, fill=(236, 242, 247, 255), font=sub_font)
    draw.text((74, 294), "医疗推车及配件 · 精密机加工 · 模具注塑 · 聚脲防腐防水材料", fill=(255, 255, 255, 235), font=small_font)
    draw.text((74, 344), COMPANY_NAME, fill=accent + (255,), font=small_font)
    out_path = ASSET_DIR / out_name
    canvas.convert("RGB").save(out_path, "JPEG", quality=88, optimize=True)
    return f"catalog/pdf_products/{out_name}"


def create_thumbnail(source_rel: str) -> str:
    source = Image.open(ROOT / "Uploads" / source_rel).convert("RGB")
    thumb = Image.new("RGB", (600, 420), (246, 248, 250))
    ratio = min(560 / source.width, 380 / source.height)
    resized = source.resize((int(source.width * ratio), int(source.height * ratio)), Image.LANCZOS)
    left = (thumb.width - resized.width) // 2
    top = (thumb.height - resized.height) // 2
    thumb.paste(resized, (left, top))
    stem = Path(source_rel).stem
    out_name = f"{stem}_thumb.jpg"
    out_path = ASSET_DIR / out_name
    thumb.save(out_path, "JPEG", quality=82, optimize=True)
    return f"catalog/pdf_products/{out_name}"


def paragraph_from_page(text: str, code: str, name: str) -> str:
    lines = lines_from_text(text)
    heading_words = (
        "产品描述", "Product description", "产品特性", "Product characteristics",
        "技术参数", "technical parameter", "产品应用范围", "施工注意事项",
        "施工基层处理", "产品健康和安全信息", "诚信声明", "产品包装及保质期",
    )
    start = 0
    for i, line in enumerate(lines[:8]):
        if line == code or line.startswith(code) or "是一种" in line or "是以" in line:
            start = i
            break
    chunks: list[str] = []
    for line in lines[start:]:
        if any(word in line for word in heading_words):
            if chunks:
                break
            continue
        if line in {code, name}:
            continue
        if len(line) <= 1:
            continue
        chunks.append(line)
        if len("".join(chunks)) >= 170:
            break
    desc = "".join(chunks).strip(" ，。")
    if not desc:
        desc = f"{code}{name}，来源于科纬易材料宣传册，适用于相关防腐、防水、防护及耐磨场景。"
    return truncate(desc, 380)


def html_content(name: str, desc: str, category: str, images: list[str], bullets: list[str]) -> str:
    bullet_html = "".join(f"<li>{b}</li>" for b in bullets)
    image_html = "\n".join(
        f'<p><img src="/Uploads/{rel}" alt="{name}" style="max-width:100%;height:auto;"></p>'
        for rel in images
    )
    return normalize_space(
        f"""
        <div class="pdf-product-detail">
          <p>{desc}</p>
          <ul>
            <li>产品分类：{category}</li>
            {bullet_html}
            <li>服务单位：{COMPANY_NAME}</li>
          </ul>
          <h4>宣传册页面</h4>
          <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
          {image_html}
        </div>
        """
    )


def english_from_material_page(text: str, fallback: str) -> str:
    lines = lines_from_text(text)
    if len(lines) > 1 and re.search(r"[A-Za-z]", lines[1]):
        return truncate(lines[1], 180)
    return fallback


def category_lookup(categories: list[dict]) -> dict[int, dict]:
    return {int(item["id"]): item for item in categories}


def build_data(company_pdf: Path, material_pdf: Path) -> tuple[list[dict], list[dict], list[dict]]:
    company_doc = fitz.open(str(company_pdf))
    material_doc = fitz.open(str(material_pdf))

    company_images = render_pdf_pages(company_pdf, "company")
    material_images = render_pdf_pages(material_pdf, "material")
    banner_medical = create_banner(company_images[2], "banner_medical_parts.jpg", "医疗推车、配件与加工服务", "面向医疗设备、智能设备和工业产品的配件解决方案", (65, 170, 164))
    banner_material = create_banner(material_images[3], "banner_polyurea_materials.jpg", "聚脲防腐防水材料", "喷涂聚脲、手刮聚脲、底涂料、水性涂料与工程案例", (236, 126, 48))

    categories = [
        dict(id=101, name="医疗推车及配件", ename="Medical Trolleys & Accessories", url="medical-trolleys-accessories", keywords="医疗推车,医疗推车配件,医疗设备配件", description="医疗推车、医疗设备配件及相关定制加工产品。"),
        dict(id=102, name="精密机加工", ename="Precision Machining", url="precision-machining", keywords="机加工,精密加工,医疗配件加工", description="面向医疗、电子、工业产品的精密机加工服务。"),
        dict(id=103, name="金属模具与ABS模具", ename="Metal & ABS Moulds", url="metal-abs-moulds", keywords="金属模具,ABS模具,塑料模具", description="金属模具、ABS 塑料产品模具与配套设计服务。"),
        dict(id=104, name="产品注塑与ABS配件", ename="Injection & ABS Parts", url="injection-abs-parts", keywords="产品注塑,ABS配件,塑料配件", description="ABS 相关产品注塑、医疗行业配件、玩具与汽车相关塑料件。"),
        dict(id=105, name="3D金属打印", ename="3D Metal Printing", url="3d-metal-printing", keywords="3D金属打印,金属打印,快速成型", description="3D 金属打印、产品打样与小批量定制服务。"),
        dict(id=106, name="喷涂聚脲防腐防水涂层", ename="Spray Polyurea Coatings", url="spray-polyurea-coatings", keywords="喷涂聚脲,聚脲防腐,聚脲防水", description="喷涂聚脲弹性体、防腐防水防护、耐磨涂层产品。"),
        dict(id=107, name="单组份与手刮聚脲材料", ename="One-Component Polyurea", url="one-component-polyurea", keywords="单组份聚脲,手刮聚脲,防水材料", description="单组份聚脲、手刮厚膜型聚脲、防水防腐材料。"),
        dict(id=108, name="天冬聚脲与地坪涂料", ename="Polyaspartic & Floor Coatings", url="polyaspartic-floor-coatings", keywords="天冬聚脲,地坪涂料,耐磨地坪", description="天冬聚脲、防腐耐磨地坪、脂肪族聚脲等涂料产品。"),
        dict(id=109, name="特种防腐防护涂料", ename="Special Anticorrosion Coatings", url="special-anticorrosion-coatings", keywords="特种防腐涂料,重防腐,防护涂料", description="重防腐、特种车辆防护、防爆、防腐节能与陶瓷有机涂料。"),
        dict(id=110, name="底涂料与水性涂料", ename="Primers & Waterborne Coatings", url="primers-waterborne-coatings", keywords="聚脲底涂料,水性涂料,金属防锈底涂", description="聚脲底涂料、水性金属防锈、水性外墙与石墨烯涂料。"),
        dict(id=111, name="纳米抗菌装饰涂料", ename="Nano Antibacterial Decorative Coatings", url="nano-antibacterial-coatings", keywords="抗菌涂料,抗病毒涂料,纳米装饰涂料", description="抗菌、抗病毒、净味纳米内墙与外墙装饰涂料。"),
        dict(id=112, name="工程案例与应用场景", ename="Engineering Cases", url="engineering-cases", keywords="聚脲工程案例,防腐防水工程,应用场景", description="聚脲防腐防水、防护耐磨及装饰涂料的工程案例。"),
    ]
    cats = category_lookup(categories)

    products: list[dict] = []

    def add_product(
        pid: int,
        name: str,
        ename: str,
        url: str,
        desc: str,
        images: list[str],
        code: str,
        featured: int,
        sort: int,
        bullets: list[str],
    ) -> None:
        category = cats[pid]
        products.append(
            dict(
                pid=pid,
                bid=1,
                name=truncate(name),
                ename=truncate(ename),
                title=truncate(f"{name} - {COMPANY_NAME}"),
                etitle=truncate(f"{ename} - {COMPANY_NAME}"),
                keywords=truncate(f"{name},{category['keywords']},{COMPANY_NAME}"),
                ekeywords=truncate(f"{ename},{category['ename']},KWY"),
                description=truncate(desc, 520),
                edescription=truncate(desc, 520),
                contents=html_content(name, desc, category["name"], images, bullets),
                econtents=html_content(name, desc, category["name"], images, bullets),
                url=url,
                thumb=create_thumbnail(images[0]),
                photo=",".join(images),
                property1=f"分类：{category['name']}",
                property2=f"产品编号：{code}" if code else "服务类型：定制加工",
                property3="来源：PDF宣传册",
                property4=f"公司：{COMPANY_NAME}",
                eproperty1=f"Category: {category['ename']}",
                eproperty2=f"Code: {code}" if code else "Service: Custom manufacturing",
                eproperty3="Source: PDF brochure",
                eproperty4=f"Company: {COMPANY_NAME}",
                featured=featured,
                sort=sort,
            )
        )

    company_texts = [company_doc[i].get_text("text") for i in range(len(company_doc))]
    add_product(
        101,
        "医疗推车及配件解决方案",
        "Medical trolley and accessories solution",
        "medical-trolley-accessories",
        "面向医疗推车、医疗设备和智能设备配套需求，提供结构件、安装件、塑料配件及相关定制加工服务。",
        [company_images[2], company_images[4], banner_medical],
        "",
        1,
        10,
        ["适用于医疗推车、医疗器械配件、智能设备配件等场景。", "可结合机加工、模具、注塑和装配需求提供配套服务。"],
    )
    add_product(
        102,
        "精密机加工配件",
        "Precision machined parts",
        "precision-machined-parts",
        paragraph_from_page(company_texts[2], "", "精密机加工配件"),
        [company_images[2]],
        "",
        1,
        20,
        ["依托技术团队完成零件加工、配件打样与批量生产。", "适用于医疗、电子、玩具和工业产品配套。"],
    )
    add_product(
        103,
        "金属模具与ABS模具",
        "Metal mould and ABS mould",
        "metal-abs-mould",
        paragraph_from_page(company_texts[3], "", "金属模具与ABS模具"),
        [company_images[3]],
        "",
        1,
        30,
        ["用于生产 ABS 塑料相关产品。", "覆盖医疗板块、工业产品、电子产品等行业。"],
    )
    add_product(
        104,
        "ABS注塑产品与塑料配件",
        "ABS injection products and plastic parts",
        "abs-injection-products",
        paragraph_from_page(company_texts[4], "", "ABS注塑产品与塑料配件"),
        [company_images[4]],
        "",
        1,
        40,
        ["覆盖医疗行业、玩具相关、汽车行业和 ABS 相关产品。", "可按客户需求完成注塑产品展示、试制与生产配套。"],
    )
    add_product(
        105,
        "3D金属打印服务",
        "3D metal printing service",
        "3d-metal-printing-service",
        paragraph_from_page(company_texts[5], "", "3D金属打印服务"),
        [company_images[5]],
        "",
        1,
        50,
        ["适用于产品打样、小批量金属件和复杂结构件成型。", "可配合设计研发团队完成快速验证。"],
    )

    material_specs = [
        (4, "900", "喷涂聚脲弹性体防腐防水防护涂层", 106),
        (5, "9001", "海水淡化沉箱专用聚脲防腐耐磨防护涂层", 106),
        (6, "9002", "电厂除盐水箱专用聚脲防腐防护涂层", 106),
        (7, "9003", "污水处理池专用聚脲防腐防水防护涂层", 106),
        (8, "9005", "矿山设备专用聚脲耐磨防腐防护涂层", 106),
        (9, "9006", "航天工业专用聚脲防腐耐磨防护涂层", 106),
        (10, "9007", "交通隧道专用阻燃聚脲防腐防护涂层", 106),
        (11, "9008", "斜拉桥钢绞线专用聚脲防腐防护耐磨涂层", 106),
        (12, "9009", "脂肪族喷涂聚脲防腐防水防护涂层", 106),
        (13, "9013", "地坪专用聚脲耐磨防腐防护涂层", 106),
        (14, "9014", "饮用水专用聚脲防水抑菌耐磨防护涂层", 106),
        (15, "951", "喷涂聚脲弹性体防腐防水防护涂层", 106),
        (16, "9511", "埋地管道专用聚脲防腐防护涂层", 106),
        (17, "9512", "石油化工重防腐专用聚脲防腐防护涂层", 106),
        (18, "9513", "卡车车厢专用聚脲耐磨防护涂层", 106),
        (19, "9514", "影视道具电器音箱专用聚脲防护装饰涂层", 106),
        (20, "562", "冷喷聚脲弹性体", 106),
        (21, "319", "特种车辆防护防爆高强涂料", 109),
        (22, "952", "单组份聚脲防腐防水防护涂层", 107),
        (23, "9522", "单组份聚脲工业地坪防腐耐磨涂层", 107),
        (24, "9526", "单组份手刮厚膜型聚脲防水防腐耐磨涂层", 107),
        (25, "9527", "手刮改性聚脲建筑屋面防水材料", 107),
        (26, "9528", "单组份改性聚脲防水防腐防护涂层", 107),
        (27, "9539", "单组份脂肪族聚脲防水防腐防护涂层", 107),
        (28, "959", "单组份改性聚脲重防腐蚀涂料", 109),
        (29, "9594", "湿固化聚氨酯化工储罐内壁重防腐涂料", 109),
        (30, "8027", "天冬聚脲防腐耐磨地坪涂料", 108),
        (31, "8028", "聚天门冬氨酸酯防腐涂料", 108),
        (32, "8029", "双组份聚天门冬氨酸酯面涂料", 108),
        (33, "8031", "无溶剂聚天门冬氨酸酯刚性涂料", 108),
        (34, "8526", "单组份手刮厚膜型脂肪族聚脲防水防腐耐磨涂层", 108),
        (35, "166", "改性聚脲阻尼降噪减震阻燃材料", 109),
        (36, "167", "改性聚脲建筑防水封闭腻子", 107),
        (37, "168L", "聚脲专用封孔腻子", 107),
        (38, "169", "无溶剂隧道桥梁结构加固胶", 109),
        (39, "189", "单组份聚脲密封胶", 107),
        (40, "6006", "弹性防水涂层材料", 107),
        (41, "850", "无溶剂纳米改性聚脲重防腐涂层", 109),
        (42, "851", "石墨烯锌粉涂料", 109),
        (43, "852", "水下固化环氧涂料", 109),
        (44, "860", "无溶剂重防腐陶瓷有机涂料", 109),
        (45, "8001", "抗紫外线聚氨酯工业防腐防护面涂料", 109),
        (46, "8007", "单组份封闭渗透混凝土专用聚脲底涂料", 110),
        (47, "8008", "双组份耐阴极剥离金属专用聚脲底涂料", 110),
        (48, "8009", "双组份封闭渗透混凝土专用聚脲底涂料", 110),
        (49, "8010", "双组份无溶剂聚脲底涂料", 110),
        (50, "969", "单组份改性聚脲银粉节能防腐涂料", 109),
        (51, "9601", "水性金属专用防锈底涂料", 110),
        (52, "9606", "水性环保高强装饰外墙涂料", 110),
        (53, "9607", "水性石墨烯锌粉涂料", 110),
        (54, "9609-9608", "抗菌、抗病毒净味纳米装饰涂料", 111),
    ]

    for offset, (page_no, code, name, pid) in enumerate(material_specs, start=1):
        text = material_doc[page_no - 1].get_text("text")
        desc = paragraph_from_page(text, code, name)
        images = [material_images[page_no - 1]]
        if code == "9609-9608":
            images.append(material_images[54])
        ename = f"{code} {english_from_material_page(text, name)}"
        add_product(
            pid,
            f"{code} {name}",
            ename,
            slugify_code(code, name),
            desc,
            images,
            code,
            1 if offset <= 18 else 0,
            100 + offset * 10,
            ["来源于 2026 科纬易材料宣传册。", "产品详情页保留宣传册原始参数表、应用范围和施工说明。"],
        )

    case_text = "\n".join(material_doc[i].get_text("text") for i in range(55, 58))
    case_desc = "宣传册收录了天然气管道、奥运场馆、除盐水箱、污水池、桥梁、地铁隧道、海水淡化、工业地坪、矿山设备等聚脲防腐防水工程案例。"
    add_product(
        112,
        "聚脲防腐防水工程案例与应用场景",
        "Polyurea engineering cases and application scenarios",
        "polyurea-engineering-cases",
        case_desc,
        [material_images[55], material_images[56], material_images[57], banner_material],
        "CASE",
        1,
        980,
        [truncate(normalize_space(case_text), 160), "覆盖防腐、防水、防护、耐磨、隔热、装饰等多类工程应用。"],
    )

    flash = [
        dict(title="医疗推车、配件与加工服务", link="/cn/products", photo=banner_medical, sort=1),
        dict(title="聚脲防腐防水材料", link="/cn/products", photo=banner_material, sort=2),
    ]
    return categories, products, flash


def write_sql(categories: list[dict], products: list[dict], flash: list[dict]) -> None:
    SQL_PATH.parent.mkdir(parents=True, exist_ok=True)
    statements: list[str] = [
        "SET NAMES utf8;",
        "START TRANSACTION;",
        "DELETE FROM `jchen_product`;",
        "ALTER TABLE `jchen_product` AUTO_INCREMENT=1;",
        "DELETE FROM `jchen_flash`;",
        "ALTER TABLE `jchen_flash` AUTO_INCREMENT=1;",
        "DELETE FROM `jchen_list` WHERE `type`='product' AND `id`<>1;",
        "UPDATE `jchen_list` SET "
        "`pid`=0, `bid`=1, `type`='product', `name`='产品中心', `ename`='Products', "
        "`title`='产品中心 - 南京科纬易机械设备有限公司', "
        "`etitle`='Products - Nanjing Keweiyi Machinery Equipment Co., Ltd.', "
        "`keywords`='医疗推车,医疗推车配件,机加工,模具注塑,聚脲防腐防水材料', "
        "`ekeywords`='medical trolleys,accessories,machining,mould,injection,polyurea coatings', "
        "`description`='南京科纬易机械设备有限公司产品中心，展示医疗推车及配件、精密机加工、模具注塑、3D金属打印、聚脲防腐防水材料及工程案例。', "
        "`edescription`='Products from Nanjing Keweiyi Machinery Equipment Co., Ltd.', "
        "`contents`='', `econtents`='', `url`='products', `link`='', `nav`=1, `sort`=1 WHERE `id`=1;",
    ]

    list_cols = [
        "id", "pid", "bid", "type", "name", "ename", "title", "etitle",
        "keywords", "ekeywords", "description", "edescription", "contents",
        "econtents", "url", "link", "nav", "sort",
    ]
    list_values = []
    for item in categories:
        row = [
            str(item["id"]),
            "1",
            "1",
            sql_str("product"),
            sql_str(item["name"]),
            sql_str(item["ename"]),
            sql_str(f"{item['name']} - {COMPANY_NAME}"),
            sql_str(f"{item['ename']} - {COMPANY_NAME}"),
            sql_str(item["keywords"]),
            sql_str(item["ename"]),
            sql_str(item["description"]),
            sql_str(item["description"]),
            sql_str(""),
            sql_str(""),
            sql_str(item["url"]),
            sql_str(""),
            "1",
            str(item["id"] - 100),
        ]
        list_values.append("(" + ",".join(row) + ")")
    statements.append(
        "INSERT INTO `jchen_list` (`" + "`,`".join(list_cols) + "`) VALUES\n"
        + ",\n".join(list_values)
        + ";"
    )

    product_cols = [
        "pid", "bid", "name", "ename", "title", "etitle", "keywords", "ekeywords",
        "description", "edescription", "contents", "econtents", "url", "thumb",
        "photo", "property1", "property2", "property3", "property4", "eproperty1",
        "eproperty2", "eproperty3", "eproperty4", "featured", "sort",
    ]
    product_values = []
    for item in products:
        row = []
        for col in product_cols:
            if col in {"pid", "bid", "featured", "sort"}:
                row.append(str(item[col]))
            else:
                row.append(sql_str(item[col]))
        product_values.append("(" + ",".join(row) + ")")
    statements.append(
        "INSERT INTO `jchen_product` (`" + "`,`".join(product_cols) + "`) VALUES\n"
        + ",\n".join(product_values)
        + ";"
    )

    flash_values = []
    for item in flash:
        flash_values.append(
            "("
            + ",".join(
                [
                    sql_str(item["title"]),
                    sql_str(item["link"]),
                    sql_str(item["photo"]),
                    str(item["sort"]),
                ]
            )
            + ")"
        )
    statements.append(
        "INSERT INTO `jchen_flash` (`title`,`link`,`photo`,`sort`) VALUES\n"
        + ",\n".join(flash_values)
        + ";"
    )
    statements.append("COMMIT;")
    SQL_PATH.write_text("\n\n".join(statements) + "\n", encoding="utf-8")


def main() -> None:
    company_pdf, material_pdf = open_pdfs()
    categories, products, flash = build_data(company_pdf, material_pdf)
    write_sql(categories, products, flash)
    print(f"company_pdf={company_pdf.name}")
    print(f"material_pdf={material_pdf.name}")
    print(f"categories={len(categories)}")
    print(f"products={len(products)}")
    print(f"sql={SQL_PATH}")
    print(f"assets={ASSET_DIR}")


if __name__ == "__main__":
    main()
