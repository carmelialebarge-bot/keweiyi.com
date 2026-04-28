SET NAMES utf8;

START TRANSACTION;

DELETE FROM `jchen_product`;

ALTER TABLE `jchen_product` AUTO_INCREMENT=1;

DELETE FROM `jchen_flash`;

ALTER TABLE `jchen_flash` AUTO_INCREMENT=1;

DELETE FROM `jchen_list` WHERE `type`='product' AND `id`<>1;

UPDATE `jchen_list` SET `pid`=0, `bid`=1, `type`='product', `name`='产品中心', `ename`='Products', `title`='产品中心 - 南京科纬易机械设备有限公司', `etitle`='Products - Nanjing Keweiyi Machinery Equipment Co., Ltd.', `keywords`='医疗推车,医疗推车配件,机加工,模具注塑,聚脲防腐防水材料', `ekeywords`='medical trolleys,accessories,machining,mould,injection,polyurea coatings', `description`='南京科纬易机械设备有限公司产品中心，展示医疗推车及配件、精密机加工、模具注塑、3D金属打印、聚脲防腐防水材料及工程案例。', `edescription`='Products from Nanjing Keweiyi Machinery Equipment Co., Ltd.', `contents`='', `econtents`='', `url`='products', `link`='', `nav`=1, `sort`=1 WHERE `id`=1;

INSERT INTO `jchen_list` (`id`,`pid`,`bid`,`type`,`name`,`ename`,`title`,`etitle`,`keywords`,`ekeywords`,`description`,`edescription`,`contents`,`econtents`,`url`,`link`,`nav`,`sort`) VALUES
(91,1,1,'product','标品及配件','Standard Products & Accessories','标品及配件 - 南京科纬易机械设备有限公司','Standard Products & Accessories - 南京科纬易机械设备有限公司','标品,医疗推车,医疗配件','Standard Products & Accessories','医疗推车、医疗设备配件及相关标准产品分类。','Medical trolleys, equipment accessories and related standard products.','','','standard-products-accessories','',1,1),
(92,1,1,'product','模具及注塑','Moulds & Injection','模具及注塑 - 南京科纬易机械设备有限公司','Moulds & Injection - 南京科纬易机械设备有限公司','模具,注塑,机加工,3D金属打印','Moulds & Injection','精密机加工、金属模具、ABS模具、产品注塑与3D金属打印分类。','Machining, moulds, injection and 3D metal printing categories.','','','moulds-injection','',1,2),
(93,1,1,'product','材料产品','Material Products','材料产品 - 南京科纬易机械设备有限公司','Material Products - 南京科纬易机械设备有限公司','聚脲,防腐防水材料,涂料','Material Products','聚脲防腐防水材料、底涂料、水性涂料、装饰涂料及工程案例分类。','Polyurea materials, primers, waterborne coatings, decorative coatings and engineering cases.','','','material-products','',1,3),
(101,91,1,'product','医疗推车及配件','Medical Trolleys & Accessories','医疗推车及配件 - 南京科纬易机械设备有限公司','Medical Trolleys & Accessories - 南京科纬易机械设备有限公司','医疗推车,医疗推车配件,医疗设备配件','Medical Trolleys & Accessories','医疗推车、医疗设备配件及相关定制加工产品。','医疗推车、医疗设备配件及相关定制加工产品。','','','medical-trolleys-accessories','',1,1),
(102,92,1,'product','精密机加工','Precision Machining','精密机加工 - 南京科纬易机械设备有限公司','Precision Machining - 南京科纬易机械设备有限公司','机加工,精密加工,医疗配件加工','Precision Machining','面向医疗、电子、工业产品的精密机加工服务。','面向医疗、电子、工业产品的精密机加工服务。','','','precision-machining','',1,1),
(103,92,1,'product','金属模具与ABS模具','Metal & ABS Moulds','金属模具与ABS模具 - 南京科纬易机械设备有限公司','Metal & ABS Moulds - 南京科纬易机械设备有限公司','金属模具,ABS模具,塑料模具','Metal & ABS Moulds','金属模具、ABS 塑料产品模具与配套设计服务。','金属模具、ABS 塑料产品模具与配套设计服务。','','','metal-abs-moulds','',1,2),
(104,92,1,'product','产品注塑与ABS配件','Injection & ABS Parts','产品注塑与ABS配件 - 南京科纬易机械设备有限公司','Injection & ABS Parts - 南京科纬易机械设备有限公司','产品注塑,ABS配件,塑料配件','Injection & ABS Parts','ABS 相关产品注塑、医疗行业配件、玩具与汽车相关塑料件。','ABS 相关产品注塑、医疗行业配件、玩具与汽车相关塑料件。','','','injection-abs-parts','',1,3),
(105,92,1,'product','3D金属打印','3D Metal Printing','3D金属打印 - 南京科纬易机械设备有限公司','3D Metal Printing - 南京科纬易机械设备有限公司','3D金属打印,金属打印,快速成型','3D Metal Printing','3D 金属打印、产品打样与小批量定制服务。','3D 金属打印、产品打样与小批量定制服务。','','','3d-metal-printing','',1,4),
(106,93,1,'product','喷涂聚脲防腐防水涂层','Spray Polyurea Coatings','喷涂聚脲防腐防水涂层 - 南京科纬易机械设备有限公司','Spray Polyurea Coatings - 南京科纬易机械设备有限公司','喷涂聚脲,聚脲防腐,聚脲防水','Spray Polyurea Coatings','喷涂聚脲弹性体、防腐防水防护、耐磨涂层产品。','喷涂聚脲弹性体、防腐防水防护、耐磨涂层产品。','','','spray-polyurea-coatings','',1,1),
(107,93,1,'product','单组份与手刮聚脲材料','One-Component Polyurea','单组份与手刮聚脲材料 - 南京科纬易机械设备有限公司','One-Component Polyurea - 南京科纬易机械设备有限公司','单组份聚脲,手刮聚脲,防水材料','One-Component Polyurea','单组份聚脲、手刮厚膜型聚脲、防水防腐材料。','单组份聚脲、手刮厚膜型聚脲、防水防腐材料。','','','one-component-polyurea','',1,2),
(108,93,1,'product','天冬聚脲与地坪涂料','Polyaspartic & Floor Coatings','天冬聚脲与地坪涂料 - 南京科纬易机械设备有限公司','Polyaspartic & Floor Coatings - 南京科纬易机械设备有限公司','天冬聚脲,地坪涂料,耐磨地坪','Polyaspartic & Floor Coatings','天冬聚脲、防腐耐磨地坪、脂肪族聚脲等涂料产品。','天冬聚脲、防腐耐磨地坪、脂肪族聚脲等涂料产品。','','','polyaspartic-floor-coatings','',1,3),
(109,93,1,'product','特种防腐防护涂料','Special Anticorrosion Coatings','特种防腐防护涂料 - 南京科纬易机械设备有限公司','Special Anticorrosion Coatings - 南京科纬易机械设备有限公司','特种防腐涂料,重防腐,防护涂料','Special Anticorrosion Coatings','重防腐、特种车辆防护、防爆、防腐节能与陶瓷有机涂料。','重防腐、特种车辆防护、防爆、防腐节能与陶瓷有机涂料。','','','special-anticorrosion-coatings','',1,4),
(110,93,1,'product','底涂料与水性涂料','Primers & Waterborne Coatings','底涂料与水性涂料 - 南京科纬易机械设备有限公司','Primers & Waterborne Coatings - 南京科纬易机械设备有限公司','聚脲底涂料,水性涂料,金属防锈底涂','Primers & Waterborne Coatings','聚脲底涂料、水性金属防锈、水性外墙与石墨烯涂料。','聚脲底涂料、水性金属防锈、水性外墙与石墨烯涂料。','','','primers-waterborne-coatings','',1,5),
(111,93,1,'product','纳米抗菌装饰涂料','Nano Antibacterial Decorative Coatings','纳米抗菌装饰涂料 - 南京科纬易机械设备有限公司','Nano Antibacterial Decorative Coatings - 南京科纬易机械设备有限公司','抗菌涂料,抗病毒涂料,纳米装饰涂料','Nano Antibacterial Decorative Coatings','抗菌、抗病毒、净味纳米内墙与外墙装饰涂料。','抗菌、抗病毒、净味纳米内墙与外墙装饰涂料。','','','nano-antibacterial-coatings','',1,6),
(112,93,1,'product','工程案例与应用场景','Engineering Cases','工程案例与应用场景 - 南京科纬易机械设备有限公司','Engineering Cases - 南京科纬易机械设备有限公司','聚脲工程案例,防腐防水工程,应用场景','Engineering Cases','聚脲防腐防水、防护耐磨及装饰涂料的工程案例。','聚脲防腐防水、防护耐磨及装饰涂料的工程案例。','','','engineering-cases','',1,7);

INSERT INTO `jchen_product` (`pid`,`bid`,`name`,`ename`,`title`,`etitle`,`keywords`,`ekeywords`,`description`,`edescription`,`contents`,`econtents`,`url`,`thumb`,`photo`,`property1`,`property2`,`property3`,`property4`,`eproperty1`,`eproperty2`,`eproperty3`,`eproperty4`,`featured`,`sort`) VALUES
(101,1,'医疗推车及配件解决方案','Medical trolley and accessories solution','医疗推车及配件解决方案 - 南京科纬易机械设备有限公司','Medical trolley and accessories solution - 南京科纬易机械设备有限公司','医疗推车及配件解决方案,医疗推车,医疗推车配件,医疗设备配件,南京科纬易机械设备有限公司','Medical trolley and accessories solution,Medical Trolleys & Accessories,KWY','面向医疗推车、医疗设备和智能设备配套需求，提供结构件、安装件、塑料配件及相关定制加工服务。','面向医疗推车、医疗设备和智能设备配套需求，提供结构件、安装件、塑料配件及相关定制加工服务。','<div class="pdf-product-detail">
 <p>面向医疗推车、医疗设备和智能设备配套需求，提供结构件、安装件、塑料配件及相关定制加工服务。</p>
 <ul>
 <li>产品分类：医疗推车及配件</li>
 <li>适用于医疗推车、医疗器械配件、智能设备配件等场景。</li><li>可结合机加工、模具、注塑和装配需求提供配套服务。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p03.jpg" alt="医疗推车及配件解决方案" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/company_p05.jpg" alt="医疗推车及配件解决方案" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/banner_medical_parts.jpg" alt="医疗推车及配件解决方案" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>面向医疗推车、医疗设备和智能设备配套需求，提供结构件、安装件、塑料配件及相关定制加工服务。</p>
 <ul>
 <li>产品分类：医疗推车及配件</li>
 <li>适用于医疗推车、医疗器械配件、智能设备配件等场景。</li><li>可结合机加工、模具、注塑和装配需求提供配套服务。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p03.jpg" alt="医疗推车及配件解决方案" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/company_p05.jpg" alt="医疗推车及配件解决方案" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/banner_medical_parts.jpg" alt="医疗推车及配件解决方案" style="max-width:100%;height:auto;"></p>
 </div>','medical-trolley-accessories','catalog/pdf_products/company_p03_thumb.jpg','catalog/pdf_products/company_p03.jpg,catalog/pdf_products/company_p05.jpg,catalog/pdf_products/banner_medical_parts.jpg','分类：医疗推车及配件','服务类型：定制加工','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Medical Trolleys & Accessories','Service: Custom manufacturing','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,10),
(102,1,'精密机加工配件','Precision machined parts','精密机加工配件 - 南京科纬易机械设备有限公司','Precision machined parts - 南京科纬易机械设备有限公司','精密机加工配件,机加工,精密加工,医疗配件加工,南京科纬易机械设备有限公司','Precision machined parts,Precision Machining,KWY','南京科纬易机械设备有限公司南京科纬易机械设备有限公司Machining机加工公司简介南京科纬易机械设备有限公司，坐落于南京市江宁区，毗邻南京市江宁中心，交通便利。我们深刻地认识到没有优质的产品以及良好的服务，就无法在市场激烈竞争的环境中生存。所以我们始终坚持“品质高于一切，服务重于泰山”的经营理念，汇集众多行业技术精英组建强大的技术和研发团队，全心全意为客','南京科纬易机械设备有限公司南京科纬易机械设备有限公司Machining机加工公司简介南京科纬易机械设备有限公司，坐落于南京市江宁区，毗邻南京市江宁中心，交通便利。我们深刻地认识到没有优质的产品以及良好的服务，就无法在市场激烈竞争的环境中生存。所以我们始终坚持“品质高于一切，服务重于泰山”的经营理念，汇集众多行业技术精英组建强大的技术和研发团队，全心全意为客','<div class="pdf-product-detail">
 <p>南京科纬易机械设备有限公司南京科纬易机械设备有限公司Machining机加工公司简介南京科纬易机械设备有限公司，坐落于南京市江宁区，毗邻南京市江宁中心，交通便利。我们深刻地认识到没有优质的产品以及良好的服务，就无法在市场激烈竞争的环境中生存。所以我们始终坚持“品质高于一切，服务重于泰山”的经营理念，汇集众多行业技术精英组建强大的技术和研发团队，全心全意为客</p>
 <ul>
 <li>产品分类：精密机加工</li>
 <li>依托技术团队完成零件加工、配件打样与批量生产。</li><li>适用于医疗、电子、玩具和工业产品配套。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p03.jpg" alt="精密机加工配件" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>南京科纬易机械设备有限公司南京科纬易机械设备有限公司Machining机加工公司简介南京科纬易机械设备有限公司，坐落于南京市江宁区，毗邻南京市江宁中心，交通便利。我们深刻地认识到没有优质的产品以及良好的服务，就无法在市场激烈竞争的环境中生存。所以我们始终坚持“品质高于一切，服务重于泰山”的经营理念，汇集众多行业技术精英组建强大的技术和研发团队，全心全意为客</p>
 <ul>
 <li>产品分类：精密机加工</li>
 <li>依托技术团队完成零件加工、配件打样与批量生产。</li><li>适用于医疗、电子、玩具和工业产品配套。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p03.jpg" alt="精密机加工配件" style="max-width:100%;height:auto;"></p>
 </div>','precision-machined-parts','catalog/pdf_products/company_p03_thumb.jpg','catalog/pdf_products/company_p03.jpg','分类：精密机加工','服务类型：定制加工','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Precision Machining','Service: Custom manufacturing','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,20),
(103,1,'金属模具与ABS模具','Metal mould and ABS mould','金属模具与ABS模具 - 南京科纬易机械设备有限公司','Metal mould and ABS mould - 南京科纬易机械设备有限公司','金属模具与ABS模具,金属模具,ABS模具,塑料模具,南京科纬易机械设备有限公司','Metal mould and ABS mould,Metal & ABS Moulds,KWY','模具特色精度保证Accuracy assurance品牌模架Brand mold base快速交货Fast deliveryMould金属模具（用于生产ABS塑料相关产品）业务覆盖我们服务的客户遍及各个行业，医疗板块、工业产品、电子产品、模具横跨各个行业与公司。除模具外，我们还帮助客户完成以下工作：ABS材质生产产品，以提高模具使用绩效；改进运营流程；提','模具特色精度保证Accuracy assurance品牌模架Brand mold base快速交货Fast deliveryMould金属模具（用于生产ABS塑料相关产品）业务覆盖我们服务的客户遍及各个行业，医疗板块、工业产品、电子产品、模具横跨各个行业与公司。除模具外，我们还帮助客户完成以下工作：ABS材质生产产品，以提高模具使用绩效；改进运营流程；提','<div class="pdf-product-detail">
 <p>模具特色精度保证Accuracy assurance品牌模架Brand mold base快速交货Fast deliveryMould金属模具（用于生产ABS塑料相关产品）业务覆盖我们服务的客户遍及各个行业，医疗板块、工业产品、电子产品、模具横跨各个行业与公司。除模具外，我们还帮助客户完成以下工作：ABS材质生产产品，以提高模具使用绩效；改进运营流程；提</p>
 <ul>
 <li>产品分类：金属模具与ABS模具</li>
 <li>用于生产 ABS 塑料相关产品。</li><li>覆盖医疗板块、工业产品、电子产品等行业。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p04.jpg" alt="金属模具与ABS模具" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>模具特色精度保证Accuracy assurance品牌模架Brand mold base快速交货Fast deliveryMould金属模具（用于生产ABS塑料相关产品）业务覆盖我们服务的客户遍及各个行业，医疗板块、工业产品、电子产品、模具横跨各个行业与公司。除模具外，我们还帮助客户完成以下工作：ABS材质生产产品，以提高模具使用绩效；改进运营流程；提</p>
 <ul>
 <li>产品分类：金属模具与ABS模具</li>
 <li>用于生产 ABS 塑料相关产品。</li><li>覆盖医疗板块、工业产品、电子产品等行业。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p04.jpg" alt="金属模具与ABS模具" style="max-width:100%;height:auto;"></p>
 </div>','metal-abs-mould','catalog/pdf_products/company_p04_thumb.jpg','catalog/pdf_products/company_p04.jpg','分类：金属模具与ABS模具','服务类型：定制加工','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Metal & ABS Moulds','Service: Custom manufacturing','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,30),
(104,1,'ABS注塑产品与塑料配件','ABS injection products and plastic parts','ABS注塑产品与塑料配件 - 南京科纬易机械设备有限公司','ABS injection products and plastic parts - 南京科纬易机械设备有限公司','ABS注塑产品与塑料配件,产品注塑,ABS配件,塑料配件,南京科纬易机械设备有限公司','ABS injection products and plastic parts,Injection & ABS Parts,KWY','Productinjection产品注塑团队优势注塑产品展示医疗行业Medical industry玩具相关Toy related汽车行业Automobile industry所有ABS相关产品All ABS related products选择我们稿定对行业内外通透彻底的理解，竞争者无人能望其项背。为求得不断发展，稿定公司各组织不断跟踪同业竞争动态','Productinjection产品注塑团队优势注塑产品展示医疗行业Medical industry玩具相关Toy related汽车行业Automobile industry所有ABS相关产品All ABS related products选择我们稿定对行业内外通透彻底的理解，竞争者无人能望其项背。为求得不断发展，稿定公司各组织不断跟踪同业竞争动态','<div class="pdf-product-detail">
 <p>Productinjection产品注塑团队优势注塑产品展示医疗行业Medical industry玩具相关Toy related汽车行业Automobile industry所有ABS相关产品All ABS related products选择我们稿定对行业内外通透彻底的理解，竞争者无人能望其项背。为求得不断发展，稿定公司各组织不断跟踪同业竞争动态</p>
 <ul>
 <li>产品分类：产品注塑与ABS配件</li>
 <li>覆盖医疗行业、玩具相关、汽车行业和 ABS 相关产品。</li><li>可按客户需求完成注塑产品展示、试制与生产配套。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p05.jpg" alt="ABS注塑产品与塑料配件" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>Productinjection产品注塑团队优势注塑产品展示医疗行业Medical industry玩具相关Toy related汽车行业Automobile industry所有ABS相关产品All ABS related products选择我们稿定对行业内外通透彻底的理解，竞争者无人能望其项背。为求得不断发展，稿定公司各组织不断跟踪同业竞争动态</p>
 <ul>
 <li>产品分类：产品注塑与ABS配件</li>
 <li>覆盖医疗行业、玩具相关、汽车行业和 ABS 相关产品。</li><li>可按客户需求完成注塑产品展示、试制与生产配套。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p05.jpg" alt="ABS注塑产品与塑料配件" style="max-width:100%;height:auto;"></p>
 </div>','abs-injection-products','catalog/pdf_products/company_p05_thumb.jpg','catalog/pdf_products/company_p05.jpg','分类：产品注塑与ABS配件','服务类型：定制加工','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Injection & ABS Parts','Service: Custom manufacturing','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,40),
(105,1,'3D金属打印服务','3D metal printing service','3D金属打印服务 - 南京科纬易机械设备有限公司','3D metal printing service - 南京科纬易机械设备有限公司','3D金属打印服务,3D金属打印,金属打印,快速成型,南京科纬易机械设备有限公司','3D metal printing service,3D Metal Printing,KWY','3D金属打印3D Metal printing专业团队35位专业工程师进行产品打印专业设计一致好评获得500位客户一致好评长久合作400位客户通过3D打印与公司建立长久合作高校技术团队University technical team3D打印技术论坛3D Printing Technology Forum南京科纬易机械设备有限公司我们所做的一切工作都是围绕着客户的利益与影','3D金属打印3D Metal printing专业团队35位专业工程师进行产品打印专业设计一致好评获得500位客户一致好评长久合作400位客户通过3D打印与公司建立长久合作高校技术团队University technical team3D打印技术论坛3D Printing Technology Forum南京科纬易机械设备有限公司我们所做的一切工作都是围绕着客户的利益与影','<div class="pdf-product-detail">
 <p>3D金属打印3D Metal printing专业团队35位专业工程师进行产品打印专业设计一致好评获得500位客户一致好评长久合作400位客户通过3D打印与公司建立长久合作高校技术团队University technical team3D打印技术论坛3D Printing Technology Forum南京科纬易机械设备有限公司我们所做的一切工作都是围绕着客户的利益与影</p>
 <ul>
 <li>产品分类：3D金属打印</li>
 <li>适用于产品打样、小批量金属件和复杂结构件成型。</li><li>可配合设计研发团队完成快速验证。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p06.jpg" alt="3D金属打印服务" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>3D金属打印3D Metal printing专业团队35位专业工程师进行产品打印专业设计一致好评获得500位客户一致好评长久合作400位客户通过3D打印与公司建立长久合作高校技术团队University technical team3D打印技术论坛3D Printing Technology Forum南京科纬易机械设备有限公司我们所做的一切工作都是围绕着客户的利益与影</p>
 <ul>
 <li>产品分类：3D金属打印</li>
 <li>适用于产品打样、小批量金属件和复杂结构件成型。</li><li>可配合设计研发团队完成快速验证。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/company_p06.jpg" alt="3D金属打印服务" style="max-width:100%;height:auto;"></p>
 </div>','3d-metal-printing-service','catalog/pdf_products/company_p06_thumb.jpg','catalog/pdf_products/company_p06.jpg','分类：3D金属打印','服务类型：定制加工','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: 3D Metal Printing','Service: Custom manufacturing','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,50),
(106,1,'900 喷涂聚脲弹性体防腐防水防护涂层','900 Spray polyurea elastomer anti-corrosion and waterproof protective coating','900 喷涂聚脲弹性体防腐防水防护涂层 - 南京科纬易机械设备有限公司','900 Spray polyurea elastomer anti-corrosion and waterproof protective coating - 南京科纬易机械设备有限公司','900 喷涂聚脲弹性体防腐防水防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','900 Spray polyurea elastomer anti-corrosion and waterproof protective coating,Spray Polyurea Coatings,KWY','900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域','900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域','<div class="pdf-product-detail">
 <p>900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p04.jpg" alt="900 喷涂聚脲弹性体防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p04.jpg" alt="900 喷涂聚脲弹性体防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-900','catalog/pdf_products/material_p04_thumb.jpg','catalog/pdf_products/material_p04.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：900','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 900','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,110),
(106,1,'9001 海水淡化沉箱专用聚脲防腐耐磨防护涂层','9001 Special polyurea anti-corrosion and wear-resistant protective coating for seawater desalination caisson','9001 海水淡化沉箱专用聚脲防腐耐磨防护涂层 - 南京科纬易机械设备有限公司','9001 Special polyurea anti-corrosion and wear-resistant protective coating for seawater desalination caisson - 南京科纬易机械设备有限公司','9001 海水淡化沉箱专用聚脲防腐耐磨防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9001 Special polyurea anti-corrosion and wear-resistant protective coating for seawater desalination caisson,Spray Polyurea Coatings,KWY','9001海水淡化沉箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有超强的耐海水腐蚀、浸蚀性能，抗阴极剥离效果好，在美洲、澳洲以及国内的许多大型海水淡化工程项目中得到广泛应用','9001海水淡化沉箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有超强的耐海水腐蚀、浸蚀性能，抗阴极剥离效果好，在美洲、澳洲以及国内的许多大型海水淡化工程项目中得到广泛应用','<div class="pdf-product-detail">
 <p>9001海水淡化沉箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有超强的耐海水腐蚀、浸蚀性能，抗阴极剥离效果好，在美洲、澳洲以及国内的许多大型海水淡化工程项目中得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p05.jpg" alt="9001 海水淡化沉箱专用聚脲防腐耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9001海水淡化沉箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有超强的耐海水腐蚀、浸蚀性能，抗阴极剥离效果好，在美洲、澳洲以及国内的许多大型海水淡化工程项目中得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p05.jpg" alt="9001 海水淡化沉箱专用聚脲防腐耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9001','catalog/pdf_products/material_p05_thumb.jpg','catalog/pdf_products/material_p05.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9001','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9001','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,120),
(106,1,'9002 电厂除盐水箱专用聚脲防腐防护涂层','9002 Special polyurea anticorrosive protective coating for demineralized water tank of power plant','9002 电厂除盐水箱专用聚脲防腐防护涂层 - 南京科纬易机械设备有限公司','9002 Special polyurea anticorrosive protective coating for demineralized water tank of power plant - 南京科纬易机械设备有限公司','9002 电厂除盐水箱专用聚脲防腐防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9002 Special polyurea anticorrosive protective coating for demineralized water tank of power plant,Spray Polyurea Coatings,KWY','9002电厂除盐水箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的附着力，涂层致密无接缝，同时兼具良好的耐腐蚀、耐水、防潮、防渗透性能。在国内外电厂除盐水箱工程项目中得到广泛应用','9002电厂除盐水箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的附着力，涂层致密无接缝，同时兼具良好的耐腐蚀、耐水、防潮、防渗透性能。在国内外电厂除盐水箱工程项目中得到广泛应用','<div class="pdf-product-detail">
 <p>9002电厂除盐水箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的附着力，涂层致密无接缝，同时兼具良好的耐腐蚀、耐水、防潮、防渗透性能。在国内外电厂除盐水箱工程项目中得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p06.jpg" alt="9002 电厂除盐水箱专用聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9002电厂除盐水箱专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的附着力，涂层致密无接缝，同时兼具良好的耐腐蚀、耐水、防潮、防渗透性能。在国内外电厂除盐水箱工程项目中得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p06.jpg" alt="9002 电厂除盐水箱专用聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9002','catalog/pdf_products/material_p06_thumb.jpg','catalog/pdf_products/material_p06.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9002','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9002','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,130),
(106,1,'9003 污水处理池专用聚脲防腐防水防护涂层','9003 special polyurea anticorrosive protective coating for sewage water treatment pool','9003 污水处理池专用聚脲防腐防水防护涂层 - 南京科纬易机械设备有限公司','9003 special polyurea anticorrosive protective coating for sewage water treatment pool - 南京科纬易机械设备有限公司','9003 污水处理池专用聚脲防腐防水防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9003 special polyurea anticorrosive protective coating for sewage water treatment pool,Spray Polyurea Coatings,KWY','9003污水处理池专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品耐腐蚀性能稳定，适用于多种腐蚀环境，防腐效果远远优于传统防腐材料，有效提高污水池使用寿命。已在国内外各类污水处理池工程项目上得到广泛应用','9003污水处理池专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品耐腐蚀性能稳定，适用于多种腐蚀环境，防腐效果远远优于传统防腐材料，有效提高污水池使用寿命。已在国内外各类污水处理池工程项目上得到广泛应用','<div class="pdf-product-detail">
 <p>9003污水处理池专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品耐腐蚀性能稳定，适用于多种腐蚀环境，防腐效果远远优于传统防腐材料，有效提高污水池使用寿命。已在国内外各类污水处理池工程项目上得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p07.jpg" alt="9003 污水处理池专用聚脲防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9003污水处理池专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品耐腐蚀性能稳定，适用于多种腐蚀环境，防腐效果远远优于传统防腐材料，有效提高污水池使用寿命。已在国内外各类污水处理池工程项目上得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p07.jpg" alt="9003 污水处理池专用聚脲防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9003','catalog/pdf_products/material_p07_thumb.jpg','catalog/pdf_products/material_p07.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9003','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9003','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,140),
(106,1,'9005 矿山设备专用聚脲耐磨防腐防护涂层','9005 Polyurea wear-resistant and anti-corrosion protective coating for mining equipment','9005 矿山设备专用聚脲耐磨防腐防护涂层 - 南京科纬易机械设备有限公司','9005 Polyurea wear-resistant and anti-corrosion protective coating for mining equipment - 南京科纬易机械设备有限公司','9005 矿山设备专用聚脲耐磨防腐防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9005 Polyurea wear-resistant and anti-corrosion protective coating for mining equipment,Spray Polyurea Coatings,KWY','9005矿山设备专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其优良的耐冲击性、高耐磨性和出色的防腐性能，已应用在中国上海加工的矿山螺旋分离器上，同时在美洲、欧洲等地区的矿山机械上也被广泛应用','9005矿山设备专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其优良的耐冲击性、高耐磨性和出色的防腐性能，已应用在中国上海加工的矿山螺旋分离器上，同时在美洲、欧洲等地区的矿山机械上也被广泛应用','<div class="pdf-product-detail">
 <p>9005矿山设备专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其优良的耐冲击性、高耐磨性和出色的防腐性能，已应用在中国上海加工的矿山螺旋分离器上，同时在美洲、欧洲等地区的矿山机械上也被广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p08.jpg" alt="9005 矿山设备专用聚脲耐磨防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9005矿山设备专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其优良的耐冲击性、高耐磨性和出色的防腐性能，已应用在中国上海加工的矿山螺旋分离器上，同时在美洲、欧洲等地区的矿山机械上也被广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p08.jpg" alt="9005 矿山设备专用聚脲耐磨防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9005','catalog/pdf_products/material_p08_thumb.jpg','catalog/pdf_products/material_p08.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9005','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9005','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,150),
(106,1,'9006 航天工业专用聚脲防腐耐磨防护涂层','9006 Special polyurea anti-corrosion and wear-resistant protective coating for aerospace industry','9006 航天工业专用聚脲防腐耐磨防护涂层 - 南京科纬易机械设备有限公司','9006 Special polyurea anti-corrosion and wear-resistant protective coating for aerospace industry - 南京科纬易机械设备有限公司','9006 航天工业专用聚脲防腐耐磨防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9006 Special polyurea anti-corrosion and wear-resistant protective coating for aerospace industry,Spray Polyurea Coatings,KWY','900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域。9006航天工业专用聚脲是一种100%固含量的芳香族聚脲弹性体以其超群的品质得到了航天工业的认可，现已在中国航天工业的卫星、火箭设备上应用，并达到了理想的防护效果','900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域。9006航天工业专用聚脲是一种100%固含量的芳香族聚脲弹性体以其超群的品质得到了航天工业的认可，现已在中国航天工业的卫星、火箭设备上应用，并达到了理想的防护效果','<div class="pdf-product-detail">
 <p>900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域。9006航天工业专用聚脲是一种100%固含量的芳香族聚脲弹性体以其超群的品质得到了航天工业的认可，现已在中国航天工业的卫星、火箭设备上应用，并达到了理想的防护效果</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p09.jpg" alt="9006 航天工业专用聚脲防腐耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>900是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于其优异的防水、防腐及良好的耐磨性能，该产品被广泛应用在工业和商业防腐防水领域。9006航天工业专用聚脲是一种100%固含量的芳香族聚脲弹性体以其超群的品质得到了航天工业的认可，现已在中国航天工业的卫星、火箭设备上应用，并达到了理想的防护效果</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p09.jpg" alt="9006 航天工业专用聚脲防腐耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9006','catalog/pdf_products/material_p09_thumb.jpg','catalog/pdf_products/material_p09.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9006','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9006','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,160),
(106,1,'9007 交通隧道专用阻燃聚脲防腐防护涂层','9007 Special flame retardant polyurea anti-corrosion protective coating for traffic tunnel','9007 交通隧道专用阻燃聚脲防腐防护涂层 - 南京科纬易机械设备有限公司','9007 Special flame retardant polyurea anti-corrosion protective coating for traffic tunnel - 南京科纬易机械设备有限公司','9007 交通隧道专用阻燃聚脲防腐防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9007 Special flame retardant polyurea anti-corrosion protective coating for traffic tunnel,Spray Polyurea Coatings,KWY','9007交通隧道专用阻燃聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品兼具聚脲优良的物理性能外，同时兼具离火自熄的阻燃特点，现在国内隧道工程中已开始得到广泛应用','9007交通隧道专用阻燃聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品兼具聚脲优良的物理性能外，同时兼具离火自熄的阻燃特点，现在国内隧道工程中已开始得到广泛应用','<div class="pdf-product-detail">
 <p>9007交通隧道专用阻燃聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品兼具聚脲优良的物理性能外，同时兼具离火自熄的阻燃特点，现在国内隧道工程中已开始得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p10.jpg" alt="9007 交通隧道专用阻燃聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9007交通隧道专用阻燃聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品兼具聚脲优良的物理性能外，同时兼具离火自熄的阻燃特点，现在国内隧道工程中已开始得到广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p10.jpg" alt="9007 交通隧道专用阻燃聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9007','catalog/pdf_products/material_p10_thumb.jpg','catalog/pdf_products/material_p10.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9007','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9007','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,170),
(106,1,'9008 斜拉桥钢绞线专用聚脲防腐防护耐磨涂层','9008 Special polyurea anticorrosive protective wear-resistant coating for steel strand of cable-stayed bridge','9008 斜拉桥钢绞线专用聚脲防腐防护耐磨涂层 - 南京科纬易机械设备有限公司','9008 Special polyurea anticorrosive protective wear-resistant coating for steel strand of cable-stayed bridge - 南京科纬易机械设备有限公司','9008 斜拉桥钢绞线专用聚脲防腐防护耐磨涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9008 Special polyurea anticorrosive protective wear-resistant coating for steel strand of cable-stayed bridge,Spray Polyurea Coatings,KWY','9008斜拉桥钢绞线专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其卓越的防腐耐、耐磨性能，已在美洲、欧洲地区斜拉桥上被广泛应用','9008斜拉桥钢绞线专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其卓越的防腐耐、耐磨性能，已在美洲、欧洲地区斜拉桥上被广泛应用','<div class="pdf-product-detail">
 <p>9008斜拉桥钢绞线专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其卓越的防腐耐、耐磨性能，已在美洲、欧洲地区斜拉桥上被广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p11.jpg" alt="9008 斜拉桥钢绞线专用聚脲防腐防护耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9008斜拉桥钢绞线专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品以其卓越的防腐耐、耐磨性能，已在美洲、欧洲地区斜拉桥上被广泛应用</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p11.jpg" alt="9008 斜拉桥钢绞线专用聚脲防腐防护耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9008','catalog/pdf_products/material_p11_thumb.jpg','catalog/pdf_products/material_p11.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9008','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9008','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,180),
(106,1,'9009 脂肪族喷涂聚脲防腐防水防护涂层','9009 Aliphatic spray polyurea anti-corrosion and waterproof protective coating','9009 脂肪族喷涂聚脲防腐防水防护涂层 - 南京科纬易机械设备有限公司','9009 Aliphatic spray polyurea anti-corrosion and waterproof protective coating - 南京科纬易机械设备有限公司','9009 脂肪族喷涂聚脲防腐防水防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9009 Aliphatic spray polyurea anti-corrosion and waterproof protective coating,Spray Polyurea Coatings,KWY','9009是一种100%固含量的脂肪族聚脲弹性体，由脂肪族异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该涂层不仅具有优异的防水、防腐及耐磨性能，而且有优良的耐老化性能，户外使有不粉化，不变色。该产品被广泛应用在工业和商业防腐防水领域','9009是一种100%固含量的脂肪族聚脲弹性体，由脂肪族异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该涂层不仅具有优异的防水、防腐及耐磨性能，而且有优良的耐老化性能，户外使有不粉化，不变色。该产品被广泛应用在工业和商业防腐防水领域','<div class="pdf-product-detail">
 <p>9009是一种100%固含量的脂肪族聚脲弹性体，由脂肪族异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该涂层不仅具有优异的防水、防腐及耐磨性能，而且有优良的耐老化性能，户外使有不粉化，不变色。该产品被广泛应用在工业和商业防腐防水领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p12.jpg" alt="9009 脂肪族喷涂聚脲防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9009是一种100%固含量的脂肪族聚脲弹性体，由脂肪族异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该涂层不仅具有优异的防水、防腐及耐磨性能，而且有优良的耐老化性能，户外使有不粉化，不变色。该产品被广泛应用在工业和商业防腐防水领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p12.jpg" alt="9009 脂肪族喷涂聚脲防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9009','catalog/pdf_products/material_p12_thumb.jpg','catalog/pdf_products/material_p12.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9009','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9009','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,190),
(106,1,'9013 地坪专用聚脲耐磨防腐防护涂层','9013 Special polyurea wear-resistant and anti-corrosion protective coating for floor','9013 地坪专用聚脲耐磨防腐防护涂层 - 南京科纬易机械设备有限公司','9013 Special polyurea wear-resistant and anti-corrosion protective coating for floor - 南京科纬易机械设备有限公司','9013 地坪专用聚脲耐磨防腐防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9013 Special polyurea wear-resistant and anti-corrosion protective coating for floor,Spray Polyurea Coatings,KWY','9013地坪专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的柔韧性和耐磨性，解决了传统环氧类、金刚砂类地坪因硬度度过高涂层易脆，不耐冲击的难题。同时由于其百分百固含量、无溶剂等特点也被广泛应用在食品加工和医药地坪等领域','9013地坪专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的柔韧性和耐磨性，解决了传统环氧类、金刚砂类地坪因硬度度过高涂层易脆，不耐冲击的难题。同时由于其百分百固含量、无溶剂等特点也被广泛应用在食品加工和医药地坪等领域','<div class="pdf-product-detail">
 <p>9013地坪专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的柔韧性和耐磨性，解决了传统环氧类、金刚砂类地坪因硬度度过高涂层易脆，不耐冲击的难题。同时由于其百分百固含量、无溶剂等特点也被广泛应用在食品加工和医药地坪等领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p13.jpg" alt="9013 地坪专用聚脲耐磨防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9013地坪专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品具有优异的柔韧性和耐磨性，解决了传统环氧类、金刚砂类地坪因硬度度过高涂层易脆，不耐冲击的难题。同时由于其百分百固含量、无溶剂等特点也被广泛应用在食品加工和医药地坪等领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p13.jpg" alt="9013 地坪专用聚脲耐磨防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9013','catalog/pdf_products/material_p13_thumb.jpg','catalog/pdf_products/material_p13.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9013','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9013','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,200),
(106,1,'9014 饮用水专用聚脲防水抑菌耐磨防护涂层','9014 Special polyurea waterproof, bacteriostatic and wear-resistant protective coating for drinking water','9014 饮用水专用聚脲防水抑菌耐磨防护涂层 - 南京科纬易机械设备有限公司','9014 Special polyurea waterproof, bacteriostatic and wear-resistant protective coating for drinking water - 南京科纬易机械设备有限公司','9014 饮用水专用聚脲防水抑菌耐磨防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9014 Special polyurea waterproof, bacteriostatic and wear-resistant protective coating for drinking water,Spray Polyurea Coatings,KWY','9014饮用水专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品由上海市疾病预防控制中心进行卫生安全性检验，符合国家卫生部《生活饮用水输配水设备及防护材料卫生安全评价规范》的要求，获得饮用水卫生安全产品卫生许可批件。具有优异的防水抗菌性能，耐磨、耐水浸蚀、抗阴极剥离效果好，在美洲、澳','9014饮用水专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品由上海市疾病预防控制中心进行卫生安全性检验，符合国家卫生部《生活饮用水输配水设备及防护材料卫生安全评价规范》的要求，获得饮用水卫生安全产品卫生许可批件。具有优异的防水抗菌性能，耐磨、耐水浸蚀、抗阴极剥离效果好，在美洲、澳','<div class="pdf-product-detail">
 <p>9014饮用水专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品由上海市疾病预防控制中心进行卫生安全性检验，符合国家卫生部《生活饮用水输配水设备及防护材料卫生安全评价规范》的要求，获得饮用水卫生安全产品卫生许可批件。具有优异的防水抗菌性能，耐磨、耐水浸蚀、抗阴极剥离效果好，在美洲、澳</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p14.jpg" alt="9014 饮用水专用聚脲防水抑菌耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9014饮用水专用聚脲是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。该产品由上海市疾病预防控制中心进行卫生安全性检验，符合国家卫生部《生活饮用水输配水设备及防护材料卫生安全评价规范》的要求，获得饮用水卫生安全产品卫生许可批件。具有优异的防水抗菌性能，耐磨、耐水浸蚀、抗阴极剥离效果好，在美洲、澳</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p14.jpg" alt="9014 饮用水专用聚脲防水抑菌耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9014','catalog/pdf_products/material_p14_thumb.jpg','catalog/pdf_products/material_p14.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9014','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9014','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,210),
(106,1,'951 喷涂聚脲弹性体防腐防水防护涂层','951 Spray polyurea elastomer anti-corrosion and waterproof protective coating','951 喷涂聚脲弹性体防腐防水防护涂层 - 南京科纬易机械设备有限公司','951 Spray polyurea elastomer anti-corrosion and waterproof protective coating - 南京科纬易机械设备有限公司','951 喷涂聚脲弹性体防腐防水防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','951 Spray polyurea elastomer anti-corrosion and waterproof protective coating,Spray Polyurea Coatings,KWY','951是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。施工时对环境湿气和温度不敏感，完全能满足各种防腐防水防护工程的使用要求，广泛应用于工业和商业防腐防水领域','951是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。施工时对环境湿气和温度不敏感，完全能满足各种防腐防水防护工程的使用要求，广泛应用于工业和商业防腐防水领域','<div class="pdf-product-detail">
 <p>951是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。施工时对环境湿气和温度不敏感，完全能满足各种防腐防水防护工程的使用要求，广泛应用于工业和商业防腐防水领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p15.jpg" alt="951 喷涂聚脲弹性体防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>951是一种100%固含量的芳香族聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。施工时对环境湿气和温度不敏感，完全能满足各种防腐防水防护工程的使用要求，广泛应用于工业和商业防腐防水领域</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p15.jpg" alt="951 喷涂聚脲弹性体防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-951','catalog/pdf_products/material_p15_thumb.jpg','catalog/pdf_products/material_p15.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：951','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 951','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,220),
(106,1,'9511 埋地管道专用聚脲防腐防护涂层','9511 Special polyurea anticorrosive protective coating for buried pipeline','9511 埋地管道专用聚脲防腐防护涂层 - 南京科纬易机械设备有限公司','9511 Special polyurea anticorrosive protective coating for buried pipeline - 南京科纬易机械设备有限公司','9511 埋地管道专用聚脲防腐防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9511 Special polyurea anticorrosive protective coating for buried pipeline,Spray Polyurea Coatings,KWY','9511是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。适应复杂多变的地质结构层，酷热严寒的气候环境带，不同气候土壤的腐蚀，以其优良的综合物理特性和稳定的耐腐蚀性能，得到相关工程设计、施工单位的重视，并不断应用到埋地管道项目中','9511是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。适应复杂多变的地质结构层，酷热严寒的气候环境带，不同气候土壤的腐蚀，以其优良的综合物理特性和稳定的耐腐蚀性能，得到相关工程设计、施工单位的重视，并不断应用到埋地管道项目中','<div class="pdf-product-detail">
 <p>9511是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。适应复杂多变的地质结构层，酷热严寒的气候环境带，不同气候土壤的腐蚀，以其优良的综合物理特性和稳定的耐腐蚀性能，得到相关工程设计、施工单位的重视，并不断应用到埋地管道项目中</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p16.jpg" alt="9511 埋地管道专用聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9511是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。适应复杂多变的地质结构层，酷热严寒的气候环境带，不同气候土壤的腐蚀，以其优良的综合物理特性和稳定的耐腐蚀性能，得到相关工程设计、施工单位的重视，并不断应用到埋地管道项目中</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p16.jpg" alt="9511 埋地管道专用聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9511','catalog/pdf_products/material_p16_thumb.jpg','catalog/pdf_products/material_p16.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9511','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9511','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,230),
(106,1,'9512 石油化工重防腐专用聚脲防腐防护涂层','9512 Special polyurea heavy anticorrosion protective coating for petrochemical industry','9512 石油化工重防腐专用聚脲防腐防护涂层 - 南京科纬易机械设备有限公司','9512 Special polyurea heavy anticorrosion protective coating for petrochemical industry - 南京科纬易机械设备有限公司','9512 石油化工重防腐专用聚脲防腐防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9512 Special polyurea heavy anticorrosion protective coating for petrochemical industry,Spray Polyurea Coatings,KWY','9512是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。美国公司与重点科研院校联合攻关，在普通聚脲产品的基础上，研发了针对石油化工行业的重防腐聚脲。该材料在美洲地区得到推广应用，收到了很好的防腐防护效果','9512是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。美国公司与重点科研院校联合攻关，在普通聚脲产品的基础上，研发了针对石油化工行业的重防腐聚脲。该材料在美洲地区得到推广应用，收到了很好的防腐防护效果','<div class="pdf-product-detail">
 <p>9512是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。美国公司与重点科研院校联合攻关，在普通聚脲产品的基础上，研发了针对石油化工行业的重防腐聚脲。该材料在美洲地区得到推广应用，收到了很好的防腐防护效果</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p17.jpg" alt="9512 石油化工重防腐专用聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9512是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。美国公司与重点科研院校联合攻关，在普通聚脲产品的基础上，研发了针对石油化工行业的重防腐聚脲。该材料在美洲地区得到推广应用，收到了很好的防腐防护效果</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p17.jpg" alt="9512 石油化工重防腐专用聚脲防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9512','catalog/pdf_products/material_p17_thumb.jpg','catalog/pdf_products/material_p17.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9512','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9512','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,240),
(106,1,'9513 卡车车厢专用聚脲耐磨防护涂层','9513 Special polyurea wear-resistant protective coating for truck carriage','9513 卡车车厢专用聚脲耐磨防护涂层 - 南京科纬易机械设备有限公司','9513 Special polyurea wear-resistant protective coating for truck carriage - 南京科纬易机械设备有限公司','9513 卡车车厢专用聚脲耐磨防护涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9513 Special polyurea wear-resistant protective coating for truck carriage,Spray Polyurea Coatings,KWY','9513是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于卡车车厢频繁的装卸货物，受到冲击、碰撞、碾磨的破坏很大，普通的油漆只能达到装饰效果，不能对车厢形成有效的防护。一辆新卡车往往使用不到一年，车厢就遭到损坏。9513喷涂聚脲弹性体的出现为卡车车厢的防护带来了全新的解决方案，现已在美国汽车制','9513是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于卡车车厢频繁的装卸货物，受到冲击、碰撞、碾磨的破坏很大，普通的油漆只能达到装饰效果，不能对车厢形成有效的防护。一辆新卡车往往使用不到一年，车厢就遭到损坏。9513喷涂聚脲弹性体的出现为卡车车厢的防护带来了全新的解决方案，现已在美国汽车制','<div class="pdf-product-detail">
 <p>9513是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于卡车车厢频繁的装卸货物，受到冲击、碰撞、碾磨的破坏很大，普通的油漆只能达到装饰效果，不能对车厢形成有效的防护。一辆新卡车往往使用不到一年，车厢就遭到损坏。9513喷涂聚脲弹性体的出现为卡车车厢的防护带来了全新的解决方案，现已在美国汽车制</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p18.jpg" alt="9513 卡车车厢专用聚脲耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9513是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。由于卡车车厢频繁的装卸货物，受到冲击、碰撞、碾磨的破坏很大，普通的油漆只能达到装饰效果，不能对车厢形成有效的防护。一辆新卡车往往使用不到一年，车厢就遭到损坏。9513喷涂聚脲弹性体的出现为卡车车厢的防护带来了全新的解决方案，现已在美国汽车制</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p18.jpg" alt="9513 卡车车厢专用聚脲耐磨防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9513','catalog/pdf_products/material_p18_thumb.jpg','catalog/pdf_products/material_p18.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9513','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9513','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,250),
(106,1,'9514 影视道具电器音箱专用聚脲防护装饰涂层','9514 Special polyurea protective decorative coating for film and television props and electrical speakers','9514 影视道具电器音箱专用聚脲防护装饰涂层 - 南京科纬易机械设备有限公司','9514 Special polyurea protective decorative coating for film and television props and electrical speakers - 南京科纬易机械设备有限公司','9514 影视道具电器音箱专用聚脲防护装饰涂层,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','9514 Special polyurea protective decorative coating for film and television props and electrical speakers,Spray Polyurea Coatings,KWY','9514是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。与木材完美结合，对在剧院、影院、礼堂、会场等公共场所使用的高档音箱，起到了防护和装饰的双重效果，避免音箱受到碰撞、磨损的破坏，保证了音质效果。适用于影视道具、公园景观等的防护装饰','9514是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。与木材完美结合，对在剧院、影院、礼堂、会场等公共场所使用的高档音箱，起到了防护和装饰的双重效果，避免音箱受到碰撞、磨损的破坏，保证了音质效果。适用于影视道具、公园景观等的防护装饰','<div class="pdf-product-detail">
 <p>9514是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。与木材完美结合，对在剧院、影院、礼堂、会场等公共场所使用的高档音箱，起到了防护和装饰的双重效果，避免音箱受到碰撞、磨损的破坏，保证了音质效果。适用于影视道具、公园景观等的防护装饰</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p19.jpg" alt="9514 影视道具电器音箱专用聚脲防护装饰涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9514是一种100%固含量的芳香族喷涂聚脲弹性体，由异氰酸酯组份与氨基化合物组份反应生成，需要专业聚脲设备喷涂施工。与木材完美结合，对在剧院、影院、礼堂、会场等公共场所使用的高档音箱，起到了防护和装饰的双重效果，避免音箱受到碰撞、磨损的破坏，保证了音质效果。适用于影视道具、公园景观等的防护装饰</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p19.jpg" alt="9514 影视道具电器音箱专用聚脲防护装饰涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9514','catalog/pdf_products/material_p19_thumb.jpg','catalog/pdf_products/material_p19.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：9514','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 9514','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,260),
(106,1,'562 冷喷聚脲弹性体','562 Cold Sprayed polyurea elastomer','562 冷喷聚脲弹性体 - 南京科纬易机械设备有限公司','562 Cold Sprayed polyurea elastomer - 南京科纬易机械设备有限公司','562 冷喷聚脲弹性体,喷涂聚脲,聚脲防腐,聚脲防水,南京科纬易机械设备有限公司','562 Cold Sprayed polyurea elastomer,Spray Polyurea Coatings,KWY','562是一种100%固含量的芳香族聚脲弹性体。采用一把几千元的简易喷枪施工，操作简单，一个人可以完成作业。它是聚脲行业的一个革命性产品，颠覆了人们对喷涂聚脲施工技术的认识，为喷涂聚脲弹性体的广泛应用创造了条件','562是一种100%固含量的芳香族聚脲弹性体。采用一把几千元的简易喷枪施工，操作简单，一个人可以完成作业。它是聚脲行业的一个革命性产品，颠覆了人们对喷涂聚脲施工技术的认识，为喷涂聚脲弹性体的广泛应用创造了条件','<div class="pdf-product-detail">
 <p>562是一种100%固含量的芳香族聚脲弹性体。采用一把几千元的简易喷枪施工，操作简单，一个人可以完成作业。它是聚脲行业的一个革命性产品，颠覆了人们对喷涂聚脲施工技术的认识，为喷涂聚脲弹性体的广泛应用创造了条件</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p20.jpg" alt="562 冷喷聚脲弹性体" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>562是一种100%固含量的芳香族聚脲弹性体。采用一把几千元的简易喷枪施工，操作简单，一个人可以完成作业。它是聚脲行业的一个革命性产品，颠覆了人们对喷涂聚脲施工技术的认识，为喷涂聚脲弹性体的广泛应用创造了条件</p>
 <ul>
 <li>产品分类：喷涂聚脲防腐防水涂层</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p20.jpg" alt="562 冷喷聚脲弹性体" style="max-width:100%;height:auto;"></p>
 </div>','kwy-562','catalog/pdf_products/material_p20_thumb.jpg','catalog/pdf_products/material_p20.jpg','分类：喷涂聚脲防腐防水涂层','产品编号：562','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Spray Polyurea Coatings','Code: 562','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,270),
(109,1,'319 特种车辆防护防爆高强涂料','319 Explosion proof high strength coating for special vehicle protection','319 特种车辆防护防爆高强涂料 - 南京科纬易机械设备有限公司','319 Explosion proof high strength coating for special vehicle protection - 南京科纬易机械设备有限公司','319 特种车辆防护防爆高强涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','319 Explosion proof high strength coating for special vehicle protection,Special Anticorrosion Coatings,KWY','319是一种100%固含量的防爆高强涂料。涂层坚韧致密，与基材牢固粘附形成一体，能大幅度增加车身的强度，形成刚柔结合、减震回弹、降噪，防止爆炸物的冲击波及飞溅物对车辆的损伤破坏，有效保护特种车辆财物及人身安全。美国公司早在上世纪80年代就开始为美国军用装甲车，武装警车，运钞车，富人私家车配套提供了这种防爆高强涂料，经过三十多年的应用实验，为特种车辆起到较','319是一种100%固含量的防爆高强涂料。涂层坚韧致密，与基材牢固粘附形成一体，能大幅度增加车身的强度，形成刚柔结合、减震回弹、降噪，防止爆炸物的冲击波及飞溅物对车辆的损伤破坏，有效保护特种车辆财物及人身安全。美国公司早在上世纪80年代就开始为美国军用装甲车，武装警车，运钞车，富人私家车配套提供了这种防爆高强涂料，经过三十多年的应用实验，为特种车辆起到较','<div class="pdf-product-detail">
 <p>319是一种100%固含量的防爆高强涂料。涂层坚韧致密，与基材牢固粘附形成一体，能大幅度增加车身的强度，形成刚柔结合、减震回弹、降噪，防止爆炸物的冲击波及飞溅物对车辆的损伤破坏，有效保护特种车辆财物及人身安全。美国公司早在上世纪80年代就开始为美国军用装甲车，武装警车，运钞车，富人私家车配套提供了这种防爆高强涂料，经过三十多年的应用实验，为特种车辆起到较</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p21.jpg" alt="319 特种车辆防护防爆高强涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>319是一种100%固含量的防爆高强涂料。涂层坚韧致密，与基材牢固粘附形成一体，能大幅度增加车身的强度，形成刚柔结合、减震回弹、降噪，防止爆炸物的冲击波及飞溅物对车辆的损伤破坏，有效保护特种车辆财物及人身安全。美国公司早在上世纪80年代就开始为美国军用装甲车，武装警车，运钞车，富人私家车配套提供了这种防爆高强涂料，经过三十多年的应用实验，为特种车辆起到较</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p21.jpg" alt="319 特种车辆防护防爆高强涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-319','catalog/pdf_products/material_p21_thumb.jpg','catalog/pdf_products/material_p21.jpg','分类：特种防腐防护涂料','产品编号：319','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 319','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,280),
(107,1,'952 单组份聚脲防腐防水防护涂层','952 One component polyurea anticorrosive and waterproof protective coating','952 单组份聚脲防腐防水防护涂层 - 南京科纬易机械设备有限公司','952 One component polyurea anticorrosive and waterproof protective coating - 南京科纬易机械设备有限公司','952 单组份聚脲防腐防水防护涂层,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','952 One component polyurea anticorrosive and waterproof protective coating,One-Component Polyurea,KWY','952是一种单组份芳香族聚脲防腐防水防护涂层材料，本产品与多种基材都具有优异的附着力。由于其独特的化学结构，该产品不但具有优秀的耐化学介质腐蚀性能，还具有优秀的高弹性、高强度、耐磨、抗撞击、耐刻划等物理特性','952是一种单组份芳香族聚脲防腐防水防护涂层材料，本产品与多种基材都具有优异的附着力。由于其独特的化学结构，该产品不但具有优秀的耐化学介质腐蚀性能，还具有优秀的高弹性、高强度、耐磨、抗撞击、耐刻划等物理特性','<div class="pdf-product-detail">
 <p>952是一种单组份芳香族聚脲防腐防水防护涂层材料，本产品与多种基材都具有优异的附着力。由于其独特的化学结构，该产品不但具有优秀的耐化学介质腐蚀性能，还具有优秀的高弹性、高强度、耐磨、抗撞击、耐刻划等物理特性</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p22.jpg" alt="952 单组份聚脲防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>952是一种单组份芳香族聚脲防腐防水防护涂层材料，本产品与多种基材都具有优异的附着力。由于其独特的化学结构，该产品不但具有优秀的耐化学介质腐蚀性能，还具有优秀的高弹性、高强度、耐磨、抗撞击、耐刻划等物理特性</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p22.jpg" alt="952 单组份聚脲防腐防水防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-952','catalog/pdf_products/material_p22_thumb.jpg','catalog/pdf_products/material_p22.jpg','分类：单组份与手刮聚脲材料','产品编号：952','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 952','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,290),
(107,1,'9522 单组份聚脲工业地坪防腐耐磨涂层','9522 One component polyurea industrial floor anti-corrosion and wear-resistant coating','9522 单组份聚脲工业地坪防腐耐磨涂层 - 南京科纬易机械设备有限公司','9522 One component polyurea industrial floor anti-corrosion and wear-resistant coating - 南京科纬易机械设备有限公司','9522 单组份聚脲工业地坪防腐耐磨涂层,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','9522 One component polyurea industrial floor anti-corrosion and wear-resistant coating,One-Component Polyurea,KWY','9522是一种单组份芳香族聚脲防腐耐磨涂层材料，本产品同混凝土基材及环氧、聚氨酯体系涂层材料具有优秀的结合强度。由于其独特的化学结构，产品具有优秀的耐化学介质腐蚀能力；高强度，高韧性等特性，可使涂层具有耐磨、抗冲击、耐划伤等特性，有效防止混凝土地面因撞击、开裂而造成的涂层破坏，特别适合化工、印染、制药行业的应用。达到食品级的检验，也可使涂层应用于食品','9522是一种单组份芳香族聚脲防腐耐磨涂层材料，本产品同混凝土基材及环氧、聚氨酯体系涂层材料具有优秀的结合强度。由于其独特的化学结构，产品具有优秀的耐化学介质腐蚀能力；高强度，高韧性等特性，可使涂层具有耐磨、抗冲击、耐划伤等特性，有效防止混凝土地面因撞击、开裂而造成的涂层破坏，特别适合化工、印染、制药行业的应用。达到食品级的检验，也可使涂层应用于食品','<div class="pdf-product-detail">
 <p>9522是一种单组份芳香族聚脲防腐耐磨涂层材料，本产品同混凝土基材及环氧、聚氨酯体系涂层材料具有优秀的结合强度。由于其独特的化学结构，产品具有优秀的耐化学介质腐蚀能力；高强度，高韧性等特性，可使涂层具有耐磨、抗冲击、耐划伤等特性，有效防止混凝土地面因撞击、开裂而造成的涂层破坏，特别适合化工、印染、制药行业的应用。达到食品级的检验，也可使涂层应用于食品</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p23.jpg" alt="9522 单组份聚脲工业地坪防腐耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9522是一种单组份芳香族聚脲防腐耐磨涂层材料，本产品同混凝土基材及环氧、聚氨酯体系涂层材料具有优秀的结合强度。由于其独特的化学结构，产品具有优秀的耐化学介质腐蚀能力；高强度，高韧性等特性，可使涂层具有耐磨、抗冲击、耐划伤等特性，有效防止混凝土地面因撞击、开裂而造成的涂层破坏，特别适合化工、印染、制药行业的应用。达到食品级的检验，也可使涂层应用于食品</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p23.jpg" alt="9522 单组份聚脲工业地坪防腐耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9522','catalog/pdf_products/material_p23_thumb.jpg','catalog/pdf_products/material_p23.jpg','分类：单组份与手刮聚脲材料','产品编号：9522','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 9522','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,300),
(107,1,'9526 单组份手刮厚膜型聚脲防水防腐耐磨涂层','9526 One component hand scraping thick film polyurea waterproof, anti-corrosion and wear-resistant coating','9526 单组份手刮厚膜型聚脲防水防腐耐磨涂层 - 南京科纬易机械设备有限公司','9526 One component hand scraping thick film polyurea waterproof, anti-corrosion and wear-resistant coating - 南京科纬易机械设备有限公司','9526 单组份手刮厚膜型聚脲防水防腐耐磨涂层,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','9526 One component hand scraping thick film polyurea waterproof, anti-corrosion and wear-resistant coating,One-Component Polyurea,KWY','9526是一种单组份芳香族厚涂型聚脲防腐防水防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，一次性成膜厚，无需专用聚脲喷涂设备。由于其独特的化学结构，本产品耐化学介质腐蚀性能卓越，防水性能优异，是防水防腐防护应用的理想材料。高弹性、高强度的特点特别适合应用于建筑屋面防水，结构裂缝、伸缩缝的止水，港口码头、水利大坝的防渗堵漏','9526是一种单组份芳香族厚涂型聚脲防腐防水防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，一次性成膜厚，无需专用聚脲喷涂设备。由于其独特的化学结构，本产品耐化学介质腐蚀性能卓越，防水性能优异，是防水防腐防护应用的理想材料。高弹性、高强度的特点特别适合应用于建筑屋面防水，结构裂缝、伸缩缝的止水，港口码头、水利大坝的防渗堵漏','<div class="pdf-product-detail">
 <p>9526是一种单组份芳香族厚涂型聚脲防腐防水防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，一次性成膜厚，无需专用聚脲喷涂设备。由于其独特的化学结构，本产品耐化学介质腐蚀性能卓越，防水性能优异，是防水防腐防护应用的理想材料。高弹性、高强度的特点特别适合应用于建筑屋面防水，结构裂缝、伸缩缝的止水，港口码头、水利大坝的防渗堵漏</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p24.jpg" alt="9526 单组份手刮厚膜型聚脲防水防腐耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9526是一种单组份芳香族厚涂型聚脲防腐防水防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，一次性成膜厚，无需专用聚脲喷涂设备。由于其独特的化学结构，本产品耐化学介质腐蚀性能卓越，防水性能优异，是防水防腐防护应用的理想材料。高弹性、高强度的特点特别适合应用于建筑屋面防水，结构裂缝、伸缩缝的止水，港口码头、水利大坝的防渗堵漏</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p24.jpg" alt="9526 单组份手刮厚膜型聚脲防水防腐耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9526','catalog/pdf_products/material_p24_thumb.jpg','catalog/pdf_products/material_p24.jpg','分类：单组份与手刮聚脲材料','产品编号：9526','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 9526','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,310),
(107,1,'9527 手刮改性聚脲建筑屋面防水材料','9527 Hand scraping mixed polyurea building roof waterproof material','9527 手刮改性聚脲建筑屋面防水材料 - 南京科纬易机械设备有限公司','9527 Hand scraping mixed polyurea building roof waterproof material - 南京科纬易机械设备有限公司','9527 手刮改性聚脲建筑屋面防水材料,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','9527 Hand scraping mixed polyurea building roof waterproof material,One-Component Polyurea,KWY','9527手刮改性聚脲建筑屋面防水材料，无溶剂，绿色环保，该材料具有较长的可操作时间，较好的施工性能、非常优异的防水性能','9527手刮改性聚脲建筑屋面防水材料，无溶剂，绿色环保，该材料具有较长的可操作时间，较好的施工性能、非常优异的防水性能','<div class="pdf-product-detail">
 <p>9527手刮改性聚脲建筑屋面防水材料，无溶剂，绿色环保，该材料具有较长的可操作时间，较好的施工性能、非常优异的防水性能</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p25.jpg" alt="9527 手刮改性聚脲建筑屋面防水材料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9527手刮改性聚脲建筑屋面防水材料，无溶剂，绿色环保，该材料具有较长的可操作时间，较好的施工性能、非常优异的防水性能</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p25.jpg" alt="9527 手刮改性聚脲建筑屋面防水材料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9527','catalog/pdf_products/material_p25_thumb.jpg','catalog/pdf_products/material_p25.jpg','分类：单组份与手刮聚脲材料','产品编号：9527','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 9527','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,320),
(107,1,'9528 单组份改性聚脲防水防腐防护涂层','9528 One-component modified polyurea waterproof and anti-corrosion protective coating','9528 单组份改性聚脲防水防腐防护涂层 - 南京科纬易机械设备有限公司','9528 One-component modified polyurea waterproof and anti-corrosion protective coating - 南京科纬易机械设备有限公司','9528 单组份改性聚脲防水防腐防护涂层,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','9528 One-component modified polyurea waterproof and anti-corrosion protective coating,One-Component Polyurea,KWY','9528是一种单组份芳香族改性聚脲防水防腐防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，无需专用聚脲喷涂设备。由于其独特的化学结构，成膜涂层具有较好的耐化学介质腐蚀性能，优异的防水性能，是防水防腐防护应用的理想材料。高弹性、高粘附力的特点特别适合应用于建筑屋面、阳台、卫生间、外墙、地下室的防水，尤其是老旧卷材屋面的修复，旧彩钢','9528是一种单组份芳香族改性聚脲防水防腐防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，无需专用聚脲喷涂设备。由于其独特的化学结构，成膜涂层具有较好的耐化学介质腐蚀性能，优异的防水性能，是防水防腐防护应用的理想材料。高弹性、高粘附力的特点特别适合应用于建筑屋面、阳台、卫生间、外墙、地下室的防水，尤其是老旧卷材屋面的修复，旧彩钢','<div class="pdf-product-detail">
 <p>9528是一种单组份芳香族改性聚脲防水防腐防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，无需专用聚脲喷涂设备。由于其独特的化学结构，成膜涂层具有较好的耐化学介质腐蚀性能，优异的防水性能，是防水防腐防护应用的理想材料。高弹性、高粘附力的特点特别适合应用于建筑屋面、阳台、卫生间、外墙、地下室的防水，尤其是老旧卷材屋面的修复，旧彩钢</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p26.jpg" alt="9528 单组份改性聚脲防水防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9528是一种单组份芳香族改性聚脲防水防腐防护涂层材料，本产品与混凝土及钢结构基材具有良好的附着力，施工简便，无需专用聚脲喷涂设备。由于其独特的化学结构，成膜涂层具有较好的耐化学介质腐蚀性能，优异的防水性能，是防水防腐防护应用的理想材料。高弹性、高粘附力的特点特别适合应用于建筑屋面、阳台、卫生间、外墙、地下室的防水，尤其是老旧卷材屋面的修复，旧彩钢</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p26.jpg" alt="9528 单组份改性聚脲防水防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9528','catalog/pdf_products/material_p26_thumb.jpg','catalog/pdf_products/material_p26.jpg','分类：单组份与手刮聚脲材料','产品编号：9528','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 9528','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,330),
(107,1,'9539 单组份脂肪族聚脲防水防腐防护涂层','9539 One-component aliphatic polyurea waterproof and anti-corrosion protective coating','9539 单组份脂肪族聚脲防水防腐防护涂层 - 南京科纬易机械设备有限公司','9539 One-component aliphatic polyurea waterproof and anti-corrosion protective coating - 南京科纬易机械设备有限公司','9539 单组份脂肪族聚脲防水防腐防护涂层,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','9539 One-component aliphatic polyurea waterproof and anti-corrosion protective coating,One-Component Polyurea,KWY','9539是一种单组份脂肪族聚脲防水防腐防护涂层材料，本产品与多种基材都具有优异的附着力。由于脂肪族预聚体独特的化学结构，该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好','9539是一种单组份脂肪族聚脲防水防腐防护涂层材料，本产品与多种基材都具有优异的附着力。由于脂肪族预聚体独特的化学结构，该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好','<div class="pdf-product-detail">
 <p>9539是一种单组份脂肪族聚脲防水防腐防护涂层材料，本产品与多种基材都具有优异的附着力。由于脂肪族预聚体独特的化学结构，该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p27.jpg" alt="9539 单组份脂肪族聚脲防水防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9539是一种单组份脂肪族聚脲防水防腐防护涂层材料，本产品与多种基材都具有优异的附着力。由于脂肪族预聚体独特的化学结构，该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p27.jpg" alt="9539 单组份脂肪族聚脲防水防腐防护涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9539','catalog/pdf_products/material_p27_thumb.jpg','catalog/pdf_products/material_p27.jpg','分类：单组份与手刮聚脲材料','产品编号：9539','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 9539','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,340),
(109,1,'959 单组份改性聚脲重防腐蚀涂料','959 Single component modified polyurea heavy-duty anti-corrosion coating','959 单组份改性聚脲重防腐蚀涂料 - 南京科纬易机械设备有限公司','959 Single component modified polyurea heavy-duty anti-corrosion coating - 南京科纬易机械设备有限公司','959 单组份改性聚脲重防腐蚀涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','959 Single component modified polyurea heavy-duty anti-corrosion coating,Special Anticorrosion Coatings,KWY','959以单组份MDI树脂预聚加工合成，成膜涂层致密有韧性。能适应工业企业的各种金属结构在使用过程中受震动、热胀冷缩的轻微变形而不产生裂痕，有效阻止空气、水份、各种腐蚀介质渗入，延缓金属结构发生腐蚀。涂层中存在大量脲键、缩二脲键、氨酯键和氢键，因此具有优异的机械物理性能和防腐蚀性能','959以单组份MDI树脂预聚加工合成，成膜涂层致密有韧性。能适应工业企业的各种金属结构在使用过程中受震动、热胀冷缩的轻微变形而不产生裂痕，有效阻止空气、水份、各种腐蚀介质渗入，延缓金属结构发生腐蚀。涂层中存在大量脲键、缩二脲键、氨酯键和氢键，因此具有优异的机械物理性能和防腐蚀性能','<div class="pdf-product-detail">
 <p>959以单组份MDI树脂预聚加工合成，成膜涂层致密有韧性。能适应工业企业的各种金属结构在使用过程中受震动、热胀冷缩的轻微变形而不产生裂痕，有效阻止空气、水份、各种腐蚀介质渗入，延缓金属结构发生腐蚀。涂层中存在大量脲键、缩二脲键、氨酯键和氢键，因此具有优异的机械物理性能和防腐蚀性能</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p28.jpg" alt="959 单组份改性聚脲重防腐蚀涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>959以单组份MDI树脂预聚加工合成，成膜涂层致密有韧性。能适应工业企业的各种金属结构在使用过程中受震动、热胀冷缩的轻微变形而不产生裂痕，有效阻止空气、水份、各种腐蚀介质渗入，延缓金属结构发生腐蚀。涂层中存在大量脲键、缩二脲键、氨酯键和氢键，因此具有优异的机械物理性能和防腐蚀性能</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p28.jpg" alt="959 单组份改性聚脲重防腐蚀涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-959','catalog/pdf_products/material_p28_thumb.jpg','catalog/pdf_products/material_p28.jpg','分类：特种防腐防护涂料','产品编号：959','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 959','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,350),
(109,1,'9594 湿固化聚氨酯化工储罐内壁重防腐涂料','9594 moisture cure polyurethane heavy anticorrosive coating for inner wall of chemical storage tank','9594 湿固化聚氨酯化工储罐内壁重防腐涂料 - 南京科纬易机械设备有限公司','9594 moisture cure polyurethane heavy anticorrosive coating for inner wall of chemical storage tank - 南京科纬易机械设备有限公司','9594 湿固化聚氨酯化工储罐内壁重防腐涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','9594 moisture cure polyurethane heavy anticorrosive coating for inner wall of chemical storage tank,Special Anticorrosion Coatings,KWY','企业中各类化工储罐经常是最受关注的设备，一旦出现腐蚀穿透损坏，不但财产受损，也易带来人员伤害。9594是一种高性能单组份湿固化聚氨酯体系涂层材料，成膜树脂在预聚过程中，引入了大量的脲键、缩二脲键、氨酯键及氢键，涂装后的涂层吸收环境中的湿汽发生反应而固化成膜，形成密实的交联互穿网络分子结构，使涂层具有强力的耐化学介质腐蚀及物理机械性能。良好的浸润渗透特','企业中各类化工储罐经常是最受关注的设备，一旦出现腐蚀穿透损坏，不但财产受损，也易带来人员伤害。9594是一种高性能单组份湿固化聚氨酯体系涂层材料，成膜树脂在预聚过程中，引入了大量的脲键、缩二脲键、氨酯键及氢键，涂装后的涂层吸收环境中的湿汽发生反应而固化成膜，形成密实的交联互穿网络分子结构，使涂层具有强力的耐化学介质腐蚀及物理机械性能。良好的浸润渗透特','<div class="pdf-product-detail">
 <p>企业中各类化工储罐经常是最受关注的设备，一旦出现腐蚀穿透损坏，不但财产受损，也易带来人员伤害。9594是一种高性能单组份湿固化聚氨酯体系涂层材料，成膜树脂在预聚过程中，引入了大量的脲键、缩二脲键、氨酯键及氢键，涂装后的涂层吸收环境中的湿汽发生反应而固化成膜，形成密实的交联互穿网络分子结构，使涂层具有强力的耐化学介质腐蚀及物理机械性能。良好的浸润渗透特</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p29.jpg" alt="9594 湿固化聚氨酯化工储罐内壁重防腐涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>企业中各类化工储罐经常是最受关注的设备，一旦出现腐蚀穿透损坏，不但财产受损，也易带来人员伤害。9594是一种高性能单组份湿固化聚氨酯体系涂层材料，成膜树脂在预聚过程中，引入了大量的脲键、缩二脲键、氨酯键及氢键，涂装后的涂层吸收环境中的湿汽发生反应而固化成膜，形成密实的交联互穿网络分子结构，使涂层具有强力的耐化学介质腐蚀及物理机械性能。良好的浸润渗透特</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p29.jpg" alt="9594 湿固化聚氨酯化工储罐内壁重防腐涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9594','catalog/pdf_products/material_p29_thumb.jpg','catalog/pdf_products/material_p29.jpg','分类：特种防腐防护涂料','产品编号：9594','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 9594','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,360),
(108,1,'8027 天冬聚脲防腐耐磨地坪涂料','8027 polyaspartic polyurea anticorrosive and wear-resistant floor coating','8027 天冬聚脲防腐耐磨地坪涂料 - 南京科纬易机械设备有限公司','8027 polyaspartic polyurea anticorrosive and wear-resistant floor coating - 南京科纬易机械设备有限公司','8027 天冬聚脲防腐耐磨地坪涂料,天冬聚脲,地坪涂料,耐磨地坪,南京科纬易机械设备有限公司','8027 polyaspartic polyurea anticorrosive and wear-resistant floor coating,Polyaspartic & Floor Coatings,KWY','8027是一种双组份以脂肪族聚天门冬氨酸酯聚脲树脂为主要成膜物质的材料，具有卓越的耐腐蚀、耐色变、耐候性能。产品高固低粘，流平性好、符合环保要求；施工性优异，可采用任意施工涂装方式施工，并可在冬季低温0°C环境固化；涂层柔韧、耐磨损、抗冲击、耐化学品性能优异，是理想的耐候环保地坪涂层材料','8027是一种双组份以脂肪族聚天门冬氨酸酯聚脲树脂为主要成膜物质的材料，具有卓越的耐腐蚀、耐色变、耐候性能。产品高固低粘，流平性好、符合环保要求；施工性优异，可采用任意施工涂装方式施工，并可在冬季低温0°C环境固化；涂层柔韧、耐磨损、抗冲击、耐化学品性能优异，是理想的耐候环保地坪涂层材料','<div class="pdf-product-detail">
 <p>8027是一种双组份以脂肪族聚天门冬氨酸酯聚脲树脂为主要成膜物质的材料，具有卓越的耐腐蚀、耐色变、耐候性能。产品高固低粘，流平性好、符合环保要求；施工性优异，可采用任意施工涂装方式施工，并可在冬季低温0°C环境固化；涂层柔韧、耐磨损、抗冲击、耐化学品性能优异，是理想的耐候环保地坪涂层材料</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p30.jpg" alt="8027 天冬聚脲防腐耐磨地坪涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8027是一种双组份以脂肪族聚天门冬氨酸酯聚脲树脂为主要成膜物质的材料，具有卓越的耐腐蚀、耐色变、耐候性能。产品高固低粘，流平性好、符合环保要求；施工性优异，可采用任意施工涂装方式施工，并可在冬季低温0°C环境固化；涂层柔韧、耐磨损、抗冲击、耐化学品性能优异，是理想的耐候环保地坪涂层材料</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p30.jpg" alt="8027 天冬聚脲防腐耐磨地坪涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8027','catalog/pdf_products/material_p30_thumb.jpg','catalog/pdf_products/material_p30.jpg','分类：天冬聚脲与地坪涂料','产品编号：8027','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Polyaspartic & Floor Coatings','Code: 8027','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,370),
(108,1,'8028 聚天门冬氨酸酯防腐涂料','8028 polyaspartic anticorrosive coating','8028 聚天门冬氨酸酯防腐涂料 - 南京科纬易机械设备有限公司','8028 polyaspartic anticorrosive coating - 南京科纬易机械设备有限公司','8028 聚天门冬氨酸酯防腐涂料,天冬聚脲,地坪涂料,耐磨地坪,南京科纬易机械设备有限公司','8028 polyaspartic anticorrosive coating,Polyaspartic & Floor Coatings,KWY','8028是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性','8028是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性','<div class="pdf-product-detail">
 <p>8028是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p31.jpg" alt="8028 聚天门冬氨酸酯防腐涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8028是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p31.jpg" alt="8028 聚天门冬氨酸酯防腐涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8028','catalog/pdf_products/material_p31_thumb.jpg','catalog/pdf_products/material_p31.jpg','分类：天冬聚脲与地坪涂料','产品编号：8028','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Polyaspartic & Floor Coatings','Code: 8028','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,380),
(108,1,'8029 双组份聚天门冬氨酸酯面涂料','8029 two components polyaspartic polyurea topcoat','8029 双组份聚天门冬氨酸酯面涂料 - 南京科纬易机械设备有限公司','8029 two components polyaspartic polyurea topcoat - 南京科纬易机械设备有限公司','8029 双组份聚天门冬氨酸酯面涂料,天冬聚脲,地坪涂料,耐磨地坪,南京科纬易机械设备有限公司','8029 two components polyaspartic polyurea topcoat,Polyaspartic & Floor Coatings,KWY','8029是一种双组份高性能的防腐装饰面涂料，以脂肪族聚天门冬氨酸树脂预聚体为主要成膜物质，具有卓越的耐色变、耐侯性能','8029是一种双组份高性能的防腐装饰面涂料，以脂肪族聚天门冬氨酸树脂预聚体为主要成膜物质，具有卓越的耐色变、耐侯性能','<div class="pdf-product-detail">
 <p>8029是一种双组份高性能的防腐装饰面涂料，以脂肪族聚天门冬氨酸树脂预聚体为主要成膜物质，具有卓越的耐色变、耐侯性能</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p32.jpg" alt="8029 双组份聚天门冬氨酸酯面涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8029是一种双组份高性能的防腐装饰面涂料，以脂肪族聚天门冬氨酸树脂预聚体为主要成膜物质，具有卓越的耐色变、耐侯性能</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p32.jpg" alt="8029 双组份聚天门冬氨酸酯面涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8029','catalog/pdf_products/material_p32_thumb.jpg','catalog/pdf_products/material_p32.jpg','分类：天冬聚脲与地坪涂料','产品编号：8029','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Polyaspartic & Floor Coatings','Code: 8029','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,390),
(108,1,'8031 无溶剂聚天门冬氨酸酯刚性涂料','8031 solvent free polyaspartic rigid coating','8031 无溶剂聚天门冬氨酸酯刚性涂料 - 南京科纬易机械设备有限公司','8031 solvent free polyaspartic rigid coating - 南京科纬易机械设备有限公司','8031 无溶剂聚天门冬氨酸酯刚性涂料,天冬聚脲,地坪涂料,耐磨地坪,南京科纬易机械设备有限公司','8031 solvent free polyaspartic rigid coating,Polyaspartic & Floor Coatings,KWY','8031是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性，是创新升级更新换代、防腐综合性能最优异的产品','8031是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性，是创新升级更新换代、防腐综合性能最优异的产品','<div class="pdf-product-detail">
 <p>8031是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性，是创新升级更新换代、防腐综合性能最优异的产品</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p33.jpg" alt="8031 无溶剂聚天门冬氨酸酯刚性涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8031是选用聚天门冬氨酸酯与多聚异氰酸酯反应聚合而成，因聚天门冬氨酸酯是脂肪族位阻型仲胺，而选用的固化成分为脂肪族多聚异氰酸酯，形成的涂膜具有高保光、保色特性，适合在户外长期使用。当仲胺基团与异氰酸酯基团发生反应时，形成了高交联密度、交叉互穿的高分子链网状结构，也使得本产品具有良好的物理、化学特性，是创新升级更新换代、防腐综合性能最优异的产品</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p33.jpg" alt="8031 无溶剂聚天门冬氨酸酯刚性涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8031','catalog/pdf_products/material_p33_thumb.jpg','catalog/pdf_products/material_p33.jpg','分类：天冬聚脲与地坪涂料','产品编号：8031','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Polyaspartic & Floor Coatings','Code: 8031','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,400),
(108,1,'8526 单组份手刮厚膜型脂肪族聚脲防水防腐耐磨涂层','8526 Single component hand scraped thick film type aliphatic polyurea waterproof, anti-corrosion, and wear-resistant coating','8526 单组份手刮厚膜型脂肪族聚脲防水防腐耐磨涂层 - 南京科纬易机械设备有限公司','8526 Single component hand scraped thick film type aliphatic polyurea waterproof, anti-corrosion, and wear-resistant coating - 南京科纬易机械设备有限公司','8526 单组份手刮厚膜型脂肪族聚脲防水防腐耐磨涂层,天冬聚脲,地坪涂料,耐磨地坪,南京科纬易机械设备有限公司','8526 Single component hand scraped thick film type aliphatic polyurea waterproof, anti-corrosion, and wear-resistant coating,Polyaspartic & Floor Coatings,KWY','8526是一种单组份脂肪族聚脲防腐防水防护涂层材料，由于该产品采用高强树脂、脂肪族异氰酸酯与一些特殊助剂进行预聚合成，生成的涂层粘度高，采用刮板进行刮涂施工。该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好','8526是一种单组份脂肪族聚脲防腐防水防护涂层材料，由于该产品采用高强树脂、脂肪族异氰酸酯与一些特殊助剂进行预聚合成，生成的涂层粘度高，采用刮板进行刮涂施工。该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好','<div class="pdf-product-detail">
 <p>8526是一种单组份脂肪族聚脲防腐防水防护涂层材料，由于该产品采用高强树脂、脂肪族异氰酸酯与一些特殊助剂进行预聚合成，生成的涂层粘度高，采用刮板进行刮涂施工。该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p34.jpg" alt="8526 单组份手刮厚膜型脂肪族聚脲防水防腐耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8526是一种单组份脂肪族聚脲防腐防水防护涂层材料，由于该产品采用高强树脂、脂肪族异氰酸酯与一些特殊助剂进行预聚合成，生成的涂层粘度高，采用刮板进行刮涂施工。该产品不但具有卓越的高弹性、高强度、耐磨、抗撞击性能，而且耐腐蚀、耐候性能优异，长期户外使用不粉化、不变色，装饰效果好</p>
 <ul>
 <li>产品分类：天冬聚脲与地坪涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p34.jpg" alt="8526 单组份手刮厚膜型脂肪族聚脲防水防腐耐磨涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8526','catalog/pdf_products/material_p34_thumb.jpg','catalog/pdf_products/material_p34.jpg','分类：天冬聚脲与地坪涂料','产品编号：8526','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Polyaspartic & Floor Coatings','Code: 8526','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,410),
(109,1,'166 改性聚脲阻尼降噪减震阻燃材料','166 modified polyurea damping noise reduction, shock absorption and flame retardant material','166 改性聚脲阻尼降噪减震阻燃材料 - 南京科纬易机械设备有限公司','166 modified polyurea damping noise reduction, shock absorption and flame retardant material - 南京科纬易机械设备有限公司','166 改性聚脲阻尼降噪减震阻燃材料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','166 modified polyurea damping noise reduction, shock absorption and flame retardant material,Special Anticorrosion Coatings,KWY','166混合聚脲阻尼降噪减振阻燃材料是一种无溶剂双组份聚氨酯改性材料。它具有非常好的粘合性能，对结构体产生的噪音能够起到良好的阻尼降噪功能，同时还具有阻燃、防水、减震等功效。是一种绿色环保产品','166混合聚脲阻尼降噪减振阻燃材料是一种无溶剂双组份聚氨酯改性材料。它具有非常好的粘合性能，对结构体产生的噪音能够起到良好的阻尼降噪功能，同时还具有阻燃、防水、减震等功效。是一种绿色环保产品','<div class="pdf-product-detail">
 <p>166混合聚脲阻尼降噪减振阻燃材料是一种无溶剂双组份聚氨酯改性材料。它具有非常好的粘合性能，对结构体产生的噪音能够起到良好的阻尼降噪功能，同时还具有阻燃、防水、减震等功效。是一种绿色环保产品</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p35.jpg" alt="166 改性聚脲阻尼降噪减震阻燃材料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>166混合聚脲阻尼降噪减振阻燃材料是一种无溶剂双组份聚氨酯改性材料。它具有非常好的粘合性能，对结构体产生的噪音能够起到良好的阻尼降噪功能，同时还具有阻燃、防水、减震等功效。是一种绿色环保产品</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p35.jpg" alt="166 改性聚脲阻尼降噪减震阻燃材料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-166','catalog/pdf_products/material_p35_thumb.jpg','catalog/pdf_products/material_p35.jpg','分类：特种防腐防护涂料','产品编号：166','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 166','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,420),
(107,1,'167 改性聚脲建筑防水封闭腻子','167 two components hand scraping modified polyurea roof waterproof coating','167 改性聚脲建筑防水封闭腻子 - 南京科纬易机械设备有限公司','167 two components hand scraping modified polyurea roof waterproof coating - 南京科纬易机械设备有限公司','167 改性聚脲建筑防水封闭腻子,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','167 two components hand scraping modified polyurea roof waterproof coating,One-Component Polyurea,KWY','167改性聚脲建筑防水封闭腻子，无溶剂，绿色环保，该涂料具有较长的可操作时间，较好的施工性能、封孔性能和极优异的层间附着力','167改性聚脲建筑防水封闭腻子，无溶剂，绿色环保，该涂料具有较长的可操作时间，较好的施工性能、封孔性能和极优异的层间附着力','<div class="pdf-product-detail">
 <p>167改性聚脲建筑防水封闭腻子，无溶剂，绿色环保，该涂料具有较长的可操作时间，较好的施工性能、封孔性能和极优异的层间附着力</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p36.jpg" alt="167 改性聚脲建筑防水封闭腻子" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>167改性聚脲建筑防水封闭腻子，无溶剂，绿色环保，该涂料具有较长的可操作时间，较好的施工性能、封孔性能和极优异的层间附着力</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p36.jpg" alt="167 改性聚脲建筑防水封闭腻子" style="max-width:100%;height:auto;"></p>
 </div>','kwy-167','catalog/pdf_products/material_p36_thumb.jpg','catalog/pdf_products/material_p36.jpg','分类：单组份与手刮聚脲材料','产品编号：167','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 167','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,430),
(107,1,'168L 聚脲专用封孔腻子','168L Polyurea special hole sealing putty','168L 聚脲专用封孔腻子 - 南京科纬易机械设备有限公司','168L Polyurea special hole sealing putty - 南京科纬易机械设备有限公司','168L 聚脲专用封孔腻子,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','168L Polyurea special hole sealing putty,One-Component Polyurea,KWY','168L聚脲专用封孔腻子属聚氨酯改性腻子，该腻子的可操作时间长，施工性能良好，具有较好的封孔性能和极优异的层间附着力','168L聚脲专用封孔腻子属聚氨酯改性腻子，该腻子的可操作时间长，施工性能良好，具有较好的封孔性能和极优异的层间附着力','<div class="pdf-product-detail">
 <p>168L聚脲专用封孔腻子属聚氨酯改性腻子，该腻子的可操作时间长，施工性能良好，具有较好的封孔性能和极优异的层间附着力</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p37.jpg" alt="168L 聚脲专用封孔腻子" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>168L聚脲专用封孔腻子属聚氨酯改性腻子，该腻子的可操作时间长，施工性能良好，具有较好的封孔性能和极优异的层间附着力</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p37.jpg" alt="168L 聚脲专用封孔腻子" style="max-width:100%;height:auto;"></p>
 </div>','kwy-168l','catalog/pdf_products/material_p37_thumb.jpg','catalog/pdf_products/material_p37.jpg','分类：单组份与手刮聚脲材料','产品编号：168L','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 168L','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,440),
(109,1,'169 无溶剂隧道桥梁结构加固胶','169 Solvent free tunnel bridge structural reinforcement adhesive','169 无溶剂隧道桥梁结构加固胶 - 南京科纬易机械设备有限公司','169 Solvent free tunnel bridge structural reinforcement adhesive - 南京科纬易机械设备有限公司','169 无溶剂隧道桥梁结构加固胶,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','169 Solvent free tunnel bridge structural reinforcement adhesive,Special Anticorrosion Coatings,KWY','169无溶剂隧道桥梁结构加固胶也叫结构灌浆材料，该产品密度高、强度高、粘度低、流动性好。施工对温度、湿度不敏感。加固致密坚韧，对金属基层、混凝土基层表面附着力很强，抗冲击、耐磨、耐酸、耐碱、耐盐雾等多种介质的腐蚀性能稳定。能承受较大荷载，且耐老化、耐疲劳、耐海水浸泡，在预期寿命内性能稳定，可在水中施工、水中固化','169无溶剂隧道桥梁结构加固胶也叫结构灌浆材料，该产品密度高、强度高、粘度低、流动性好。施工对温度、湿度不敏感。加固致密坚韧，对金属基层、混凝土基层表面附着力很强，抗冲击、耐磨、耐酸、耐碱、耐盐雾等多种介质的腐蚀性能稳定。能承受较大荷载，且耐老化、耐疲劳、耐海水浸泡，在预期寿命内性能稳定，可在水中施工、水中固化','<div class="pdf-product-detail">
 <p>169无溶剂隧道桥梁结构加固胶也叫结构灌浆材料，该产品密度高、强度高、粘度低、流动性好。施工对温度、湿度不敏感。加固致密坚韧，对金属基层、混凝土基层表面附着力很强，抗冲击、耐磨、耐酸、耐碱、耐盐雾等多种介质的腐蚀性能稳定。能承受较大荷载，且耐老化、耐疲劳、耐海水浸泡，在预期寿命内性能稳定，可在水中施工、水中固化</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p38.jpg" alt="169 无溶剂隧道桥梁结构加固胶" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>169无溶剂隧道桥梁结构加固胶也叫结构灌浆材料，该产品密度高、强度高、粘度低、流动性好。施工对温度、湿度不敏感。加固致密坚韧，对金属基层、混凝土基层表面附着力很强，抗冲击、耐磨、耐酸、耐碱、耐盐雾等多种介质的腐蚀性能稳定。能承受较大荷载，且耐老化、耐疲劳、耐海水浸泡，在预期寿命内性能稳定，可在水中施工、水中固化</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p38.jpg" alt="169 无溶剂隧道桥梁结构加固胶" style="max-width:100%;height:auto;"></p>
 </div>','kwy-169','catalog/pdf_products/material_p38_thumb.jpg','catalog/pdf_products/material_p38.jpg','分类：特种防腐防护涂料','产品编号：169','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 169','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,450),
(107,1,'189 单组份聚脲密封胶','189 One-component polyurea sealant','189 单组份聚脲密封胶 - 南京科纬易机械设备有限公司','189 One-component polyurea sealant - 南京科纬易机械设备有限公司','189 单组份聚脲密封胶,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','189 One-component polyurea sealant,One-Component Polyurea,KWY','189单组份聚脲密封胶是以新型硅烷封端聚醚为主体树脂的湿固化型高分子单液型产品，与空气中湿气反应生成类橡胶的弹性体，以达到灌封效果。因其高固含、不发泡、高粘结和亲水反应的特点，该产品的密封效果比普通同类产品更优。同时该产品的低模量和高弹性使得其能有效解决变形缝、伸缩缝和交接缝等结构出现的渗漏问题','189单组份聚脲密封胶是以新型硅烷封端聚醚为主体树脂的湿固化型高分子单液型产品，与空气中湿气反应生成类橡胶的弹性体，以达到灌封效果。因其高固含、不发泡、高粘结和亲水反应的特点，该产品的密封效果比普通同类产品更优。同时该产品的低模量和高弹性使得其能有效解决变形缝、伸缩缝和交接缝等结构出现的渗漏问题','<div class="pdf-product-detail">
 <p>189单组份聚脲密封胶是以新型硅烷封端聚醚为主体树脂的湿固化型高分子单液型产品，与空气中湿气反应生成类橡胶的弹性体，以达到灌封效果。因其高固含、不发泡、高粘结和亲水反应的特点，该产品的密封效果比普通同类产品更优。同时该产品的低模量和高弹性使得其能有效解决变形缝、伸缩缝和交接缝等结构出现的渗漏问题</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p39.jpg" alt="189 单组份聚脲密封胶" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>189单组份聚脲密封胶是以新型硅烷封端聚醚为主体树脂的湿固化型高分子单液型产品，与空气中湿气反应生成类橡胶的弹性体，以达到灌封效果。因其高固含、不发泡、高粘结和亲水反应的特点，该产品的密封效果比普通同类产品更优。同时该产品的低模量和高弹性使得其能有效解决变形缝、伸缩缝和交接缝等结构出现的渗漏问题</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p39.jpg" alt="189 单组份聚脲密封胶" style="max-width:100%;height:auto;"></p>
 </div>','kwy-189','catalog/pdf_products/material_p39_thumb.jpg','catalog/pdf_products/material_p39.jpg','分类：单组份与手刮聚脲材料','产品编号：189','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 189','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,460),
(107,1,'6006 弹性防水涂层材料','6006 Elastic waterproof coating material','6006 弹性防水涂层材料 - 南京科纬易机械设备有限公司','6006 Elastic waterproof coating material - 南京科纬易机械设备有限公司','6006 弹性防水涂层材料,单组份聚脲,手刮聚脲,防水材料,南京科纬易机械设备有限公司','6006 Elastic waterproof coating material,One-Component Polyurea,KWY','6006弹性防水涂层材料以单组份环保型水性高分子聚合物树脂为主要原料，通过科学工艺生产精制而成，涂料涂层致密、与各类基材附着力强，封闭性能和抗渗性能优良，遮盖力好，具有优异的耐老化性能，户外长期使用不脱落、不粉化、不变色，对建筑物表面具有优异防水保护作用，在欧美地区应用广泛','6006弹性防水涂层材料以单组份环保型水性高分子聚合物树脂为主要原料，通过科学工艺生产精制而成，涂料涂层致密、与各类基材附着力强，封闭性能和抗渗性能优良，遮盖力好，具有优异的耐老化性能，户外长期使用不脱落、不粉化、不变色，对建筑物表面具有优异防水保护作用，在欧美地区应用广泛','<div class="pdf-product-detail">
 <p>6006弹性防水涂层材料以单组份环保型水性高分子聚合物树脂为主要原料，通过科学工艺生产精制而成，涂料涂层致密、与各类基材附着力强，封闭性能和抗渗性能优良，遮盖力好，具有优异的耐老化性能，户外长期使用不脱落、不粉化、不变色，对建筑物表面具有优异防水保护作用，在欧美地区应用广泛</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p40.jpg" alt="6006 弹性防水涂层材料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>6006弹性防水涂层材料以单组份环保型水性高分子聚合物树脂为主要原料，通过科学工艺生产精制而成，涂料涂层致密、与各类基材附着力强，封闭性能和抗渗性能优良，遮盖力好，具有优异的耐老化性能，户外长期使用不脱落、不粉化、不变色，对建筑物表面具有优异防水保护作用，在欧美地区应用广泛</p>
 <ul>
 <li>产品分类：单组份与手刮聚脲材料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p40.jpg" alt="6006 弹性防水涂层材料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-6006','catalog/pdf_products/material_p40_thumb.jpg','catalog/pdf_products/material_p40.jpg','分类：单组份与手刮聚脲材料','产品编号：6006','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: One-Component Polyurea','Code: 6006','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,470),
(109,1,'850 无溶剂纳米改性聚脲重防腐涂层','850 Solvent-free nano-modified polyurea heavy-duty coating','850 无溶剂纳米改性聚脲重防腐涂层 - 南京科纬易机械设备有限公司','850 Solvent-free nano-modified polyurea heavy-duty coating - 南京科纬易机械设备有限公司','850 无溶剂纳米改性聚脲重防腐涂层,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','850 Solvent-free nano-modified polyurea heavy-duty coating,Special Anticorrosion Coatings,KWY','850无溶剂纳米改性聚脲重防腐涂层是将具有高硬度、高耐磨性、高韧性、高耐腐蚀性和耐温性的无机物氧化锆与高交联密度的改性聚脲有机物相连接，形成刚柔并济的防腐涂层，可有效防止热冷交替下水汽、酸、碱、盐、氯离子等腐蚀性介质的渗透，同时因其超高的耐磨性、抗冲击性，也可用于一些基层表面的防护','850无溶剂纳米改性聚脲重防腐涂层是将具有高硬度、高耐磨性、高韧性、高耐腐蚀性和耐温性的无机物氧化锆与高交联密度的改性聚脲有机物相连接，形成刚柔并济的防腐涂层，可有效防止热冷交替下水汽、酸、碱、盐、氯离子等腐蚀性介质的渗透，同时因其超高的耐磨性、抗冲击性，也可用于一些基层表面的防护','<div class="pdf-product-detail">
 <p>850无溶剂纳米改性聚脲重防腐涂层是将具有高硬度、高耐磨性、高韧性、高耐腐蚀性和耐温性的无机物氧化锆与高交联密度的改性聚脲有机物相连接，形成刚柔并济的防腐涂层，可有效防止热冷交替下水汽、酸、碱、盐、氯离子等腐蚀性介质的渗透，同时因其超高的耐磨性、抗冲击性，也可用于一些基层表面的防护</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p41.jpg" alt="850 无溶剂纳米改性聚脲重防腐涂层" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>850无溶剂纳米改性聚脲重防腐涂层是将具有高硬度、高耐磨性、高韧性、高耐腐蚀性和耐温性的无机物氧化锆与高交联密度的改性聚脲有机物相连接，形成刚柔并济的防腐涂层，可有效防止热冷交替下水汽、酸、碱、盐、氯离子等腐蚀性介质的渗透，同时因其超高的耐磨性、抗冲击性，也可用于一些基层表面的防护</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p41.jpg" alt="850 无溶剂纳米改性聚脲重防腐涂层" style="max-width:100%;height:auto;"></p>
 </div>','kwy-850','catalog/pdf_products/material_p41_thumb.jpg','catalog/pdf_products/material_p41.jpg','分类：特种防腐防护涂料','产品编号：850','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 850','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,480),
(109,1,'851 石墨烯锌粉涂料','851 Graphene zinc powder coating','851 石墨烯锌粉涂料 - 南京科纬易机械设备有限公司','851 Graphene zinc powder coating - 南京科纬易机械设备有限公司','851 石墨烯锌粉涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','851 Graphene zinc powder coating,Special Anticorrosion Coatings,KWY','851石墨烯锌粉涂料，是由环氧树脂、防腐型石墨烯，填料，锌粉、助剂、稀释剂和聚酰胺固化剂等配制而成的双组份防腐涂料。本产品涂层致密、防腐性能优异','851石墨烯锌粉涂料，是由环氧树脂、防腐型石墨烯，填料，锌粉、助剂、稀释剂和聚酰胺固化剂等配制而成的双组份防腐涂料。本产品涂层致密、防腐性能优异','<div class="pdf-product-detail">
 <p>851石墨烯锌粉涂料，是由环氧树脂、防腐型石墨烯，填料，锌粉、助剂、稀释剂和聚酰胺固化剂等配制而成的双组份防腐涂料。本产品涂层致密、防腐性能优异</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p42.jpg" alt="851 石墨烯锌粉涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>851石墨烯锌粉涂料，是由环氧树脂、防腐型石墨烯，填料，锌粉、助剂、稀释剂和聚酰胺固化剂等配制而成的双组份防腐涂料。本产品涂层致密、防腐性能优异</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p42.jpg" alt="851 石墨烯锌粉涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-851','catalog/pdf_products/material_p42_thumb.jpg','catalog/pdf_products/material_p42.jpg','分类：特种防腐防护涂料','产品编号：851','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 851','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,490),
(109,1,'852 水下固化环氧涂料','852 Underwater curing epoxy coating','852 水下固化环氧涂料 - 南京科纬易机械设备有限公司','852 Underwater curing epoxy coating - 南京科纬易机械设备有限公司','852 水下固化环氧涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','852 Underwater curing epoxy coating,Special Anticorrosion Coatings,KWY','852水下固化环氧涂料，是由环氧树脂、钛白粉、体系填料、助剂和特种胺固化剂等配制而成的双组份防腐涂料。本产品可水下施工固化，涂层致密，坚固耐磨损、防腐性能优异','852水下固化环氧涂料，是由环氧树脂、钛白粉、体系填料、助剂和特种胺固化剂等配制而成的双组份防腐涂料。本产品可水下施工固化，涂层致密，坚固耐磨损、防腐性能优异','<div class="pdf-product-detail">
 <p>852水下固化环氧涂料，是由环氧树脂、钛白粉、体系填料、助剂和特种胺固化剂等配制而成的双组份防腐涂料。本产品可水下施工固化，涂层致密，坚固耐磨损、防腐性能优异</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p43.jpg" alt="852 水下固化环氧涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>852水下固化环氧涂料，是由环氧树脂、钛白粉、体系填料、助剂和特种胺固化剂等配制而成的双组份防腐涂料。本产品可水下施工固化，涂层致密，坚固耐磨损、防腐性能优异</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p43.jpg" alt="852 水下固化环氧涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-852','catalog/pdf_products/material_p43_thumb.jpg','catalog/pdf_products/material_p43.jpg','分类：特种防腐防护涂料','产品编号：852','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 852','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,500),
(109,1,'860 无溶剂重防腐陶瓷有机涂料','860 Solvent free heavy-duty anticorrosive ceramic organic coating','860 无溶剂重防腐陶瓷有机涂料 - 南京科纬易机械设备有限公司','860 Solvent free heavy-duty anticorrosive ceramic organic coating - 南京科纬易机械设备有限公司','860 无溶剂重防腐陶瓷有机涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','860 Solvent free heavy-duty anticorrosive ceramic organic coating,Special Anticorrosion Coatings,KWY','860无溶剂重防腐陶瓷有机涂料是将具有高度耐蚀和耐温性的无机物二氧化硅（SiO2）与有机物相连接，系双组份、多官能度、无溶剂型的无机有机结合体涂膜，其固化后的涂膜具有很高的交联密度，分子链结构中不含羟基和酯基，而代之以最强的化学键醚键（—C—O—C），因此具有突出的耐蚀性能','860无溶剂重防腐陶瓷有机涂料是将具有高度耐蚀和耐温性的无机物二氧化硅（SiO2）与有机物相连接，系双组份、多官能度、无溶剂型的无机有机结合体涂膜，其固化后的涂膜具有很高的交联密度，分子链结构中不含羟基和酯基，而代之以最强的化学键醚键（—C—O—C），因此具有突出的耐蚀性能','<div class="pdf-product-detail">
 <p>860无溶剂重防腐陶瓷有机涂料是将具有高度耐蚀和耐温性的无机物二氧化硅（SiO2）与有机物相连接，系双组份、多官能度、无溶剂型的无机有机结合体涂膜，其固化后的涂膜具有很高的交联密度，分子链结构中不含羟基和酯基，而代之以最强的化学键醚键（—C—O—C），因此具有突出的耐蚀性能</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p44.jpg" alt="860 无溶剂重防腐陶瓷有机涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>860无溶剂重防腐陶瓷有机涂料是将具有高度耐蚀和耐温性的无机物二氧化硅（SiO2）与有机物相连接，系双组份、多官能度、无溶剂型的无机有机结合体涂膜，其固化后的涂膜具有很高的交联密度，分子链结构中不含羟基和酯基，而代之以最强的化学键醚键（—C—O—C），因此具有突出的耐蚀性能</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p44.jpg" alt="860 无溶剂重防腐陶瓷有机涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-860','catalog/pdf_products/material_p44_thumb.jpg','catalog/pdf_products/material_p44.jpg','分类：特种防腐防护涂料','产品编号：860','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 860','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,510),
(109,1,'8001 抗紫外线聚氨酯工业防腐防护面涂料','8001 UV resistant polyurethane industrial anti-corrosion protective surface coating','8001 抗紫外线聚氨酯工业防腐防护面涂料 - 南京科纬易机械设备有限公司','8001 UV resistant polyurethane industrial anti-corrosion protective surface coating - 南京科纬易机械设备有限公司','8001 抗紫外线聚氨酯工业防腐防护面涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','8001 UV resistant polyurethane industrial anti-corrosion protective surface coating,Special Anticorrosion Coatings,KWY','8001是一种双组份通用型聚氨酯面涂料，可复涂，具有防腐和装饰功能','8001是一种双组份通用型聚氨酯面涂料，可复涂，具有防腐和装饰功能','<div class="pdf-product-detail">
 <p>8001是一种双组份通用型聚氨酯面涂料，可复涂，具有防腐和装饰功能</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p45.jpg" alt="8001 抗紫外线聚氨酯工业防腐防护面涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8001是一种双组份通用型聚氨酯面涂料，可复涂，具有防腐和装饰功能</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p45.jpg" alt="8001 抗紫外线聚氨酯工业防腐防护面涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8001','catalog/pdf_products/material_p45_thumb.jpg','catalog/pdf_products/material_p45.jpg','分类：特种防腐防护涂料','产品编号：8001','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 8001','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,520),
(110,1,'8007 单组份封闭渗透混凝土专用聚脲底涂料','8007 one component sealing penetration concerete special polyurea primer','8007 单组份封闭渗透混凝土专用聚脲底涂料 - 南京科纬易机械设备有限公司','8007 one component sealing penetration concerete special polyurea primer - 南京科纬易机械设备有限公司','8007 单组份封闭渗透混凝土专用聚脲底涂料,聚脲底涂料,水性涂料,金属防锈底涂,南京科纬易机械设备有限公司','8007 one component sealing penetration concerete special polyurea primer,Primers & Waterborne Coatings,KWY','8007单组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体为主要成膜物质，与空气中的潮气发生反应而固化成膜，具有极好流动性能，对基材渗透性强、封闭性好、粘结力高，施工方便、绿色环保，在混凝土基材上广泛使用，显著提高涂层质量','8007单组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体为主要成膜物质，与空气中的潮气发生反应而固化成膜，具有极好流动性能，对基材渗透性强、封闭性好、粘结力高，施工方便、绿色环保，在混凝土基材上广泛使用，显著提高涂层质量','<div class="pdf-product-detail">
 <p>8007单组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体为主要成膜物质，与空气中的潮气发生反应而固化成膜，具有极好流动性能，对基材渗透性强、封闭性好、粘结力高，施工方便、绿色环保，在混凝土基材上广泛使用，显著提高涂层质量</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p46.jpg" alt="8007 单组份封闭渗透混凝土专用聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8007单组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体为主要成膜物质，与空气中的潮气发生反应而固化成膜，具有极好流动性能，对基材渗透性强、封闭性好、粘结力高，施工方便、绿色环保，在混凝土基材上广泛使用，显著提高涂层质量</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p46.jpg" alt="8007 单组份封闭渗透混凝土专用聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8007','catalog/pdf_products/material_p46_thumb.jpg','catalog/pdf_products/material_p46.jpg','分类：底涂料与水性涂料','产品编号：8007','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Primers & Waterborne Coatings','Code: 8007','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,530),
(110,1,'8008 双组份耐阴极剥离金属专用聚脲底涂料','8008 two components cathodic disbonding metal special polyurea primer','8008 双组份耐阴极剥离金属专用聚脲底涂料 - 南京科纬易机械设备有限公司','8008 two components cathodic disbonding metal special polyurea primer - 南京科纬易机械设备有限公司','8008 双组份耐阴极剥离金属专用聚脲底涂料,聚脲底涂料,水性涂料,金属防锈底涂,南京科纬易机械设备有限公司','8008 two components cathodic disbonding metal special polyurea primer,Primers & Waterborne Coatings,KWY','8008双组份耐阴极剥离金属专用聚脲底涂料采用独特配方，以聚脲/聚氨酯树脂和高分子材料为主要原料，通过科学生产工艺精制而成。涂膜密实坚固，具有良好的浸润和屏闭性能，卓越的抗阴极剥离效果，以及优异的防锈、防腐、耐水、耐湿性能。涂膜对金属底材的附着力强，与后道涂料的配套性好','8008双组份耐阴极剥离金属专用聚脲底涂料采用独特配方，以聚脲/聚氨酯树脂和高分子材料为主要原料，通过科学生产工艺精制而成。涂膜密实坚固，具有良好的浸润和屏闭性能，卓越的抗阴极剥离效果，以及优异的防锈、防腐、耐水、耐湿性能。涂膜对金属底材的附着力强，与后道涂料的配套性好','<div class="pdf-product-detail">
 <p>8008双组份耐阴极剥离金属专用聚脲底涂料采用独特配方，以聚脲/聚氨酯树脂和高分子材料为主要原料，通过科学生产工艺精制而成。涂膜密实坚固，具有良好的浸润和屏闭性能，卓越的抗阴极剥离效果，以及优异的防锈、防腐、耐水、耐湿性能。涂膜对金属底材的附着力强，与后道涂料的配套性好</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p47.jpg" alt="8008 双组份耐阴极剥离金属专用聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8008双组份耐阴极剥离金属专用聚脲底涂料采用独特配方，以聚脲/聚氨酯树脂和高分子材料为主要原料，通过科学生产工艺精制而成。涂膜密实坚固，具有良好的浸润和屏闭性能，卓越的抗阴极剥离效果，以及优异的防锈、防腐、耐水、耐湿性能。涂膜对金属底材的附着力强，与后道涂料的配套性好</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p47.jpg" alt="8008 双组份耐阴极剥离金属专用聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8008','catalog/pdf_products/material_p47_thumb.jpg','catalog/pdf_products/material_p47.jpg','分类：底涂料与水性涂料','产品编号：8008','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Primers & Waterborne Coatings','Code: 8008','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,540),
(110,1,'8009 双组份封闭渗透混凝土专用聚脲底涂料','8009 two components sealing penetration concerete special polyurea primer','8009 双组份封闭渗透混凝土专用聚脲底涂料 - 南京科纬易机械设备有限公司','8009 two components sealing penetration concerete special polyurea primer - 南京科纬易机械设备有限公司','8009 双组份封闭渗透混凝土专用聚脲底涂料,聚脲底涂料,水性涂料,金属防锈底涂,南京科纬易机械设备有限公司','8009 two components sealing penetration concerete special polyurea primer,Primers & Waterborne Coatings,KWY','8009双组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。具有流动性能好，对基材渗透性强、封闭性优异、附着力高等特点。涂料绿色环保，应用在混凝土等基材上，可显著提高粘结力','8009双组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。具有流动性能好，对基材渗透性强、封闭性优异、附着力高等特点。涂料绿色环保，应用在混凝土等基材上，可显著提高粘结力','<div class="pdf-product-detail">
 <p>8009双组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。具有流动性能好，对基材渗透性强、封闭性优异、附着力高等特点。涂料绿色环保，应用在混凝土等基材上，可显著提高粘结力</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p48.jpg" alt="8009 双组份封闭渗透混凝土专用聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8009双组份封闭渗透混凝土专用聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。具有流动性能好，对基材渗透性强、封闭性优异、附着力高等特点。涂料绿色环保，应用在混凝土等基材上，可显著提高粘结力</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p48.jpg" alt="8009 双组份封闭渗透混凝土专用聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8009','catalog/pdf_products/material_p48_thumb.jpg','catalog/pdf_products/material_p48.jpg','分类：底涂料与水性涂料','产品编号：8009','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Primers & Waterborne Coatings','Code: 8009','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,550),
(110,1,'8010 双组份无溶剂聚脲底涂料','8010 Two-component solvent-free polyurea primer','8010 双组份无溶剂聚脲底涂料 - 南京科纬易机械设备有限公司','8010 Two-component solvent-free polyurea primer - 南京科纬易机械设备有限公司','8010 双组份无溶剂聚脲底涂料,聚脲底涂料,水性涂料,金属防锈底涂,南京科纬易机械设备有限公司','8010 Two-component solvent-free polyurea primer,Primers & Waterborne Coatings,KWY','8010双组份无溶剂聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。涂料无溶剂，无异味，绿色环保，施工时不影响周围环境。对基材渗透性强、封闭性优异、可显著提高基层粘结力','8010双组份无溶剂聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。涂料无溶剂，无异味，绿色环保，施工时不影响周围环境。对基材渗透性强、封闭性优异、可显著提高基层粘结力','<div class="pdf-product-detail">
 <p>8010双组份无溶剂聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。涂料无溶剂，无异味，绿色环保，施工时不影响周围环境。对基材渗透性强、封闭性优异、可显著提高基层粘结力</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p49.jpg" alt="8010 双组份无溶剂聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>8010双组份无溶剂聚脲底涂料，以高性能聚氨酯树脂预聚体和高分子材料为主要成膜物质，通过科学生产工艺制成。涂料无溶剂，无异味，绿色环保，施工时不影响周围环境。对基材渗透性强、封闭性优异、可显著提高基层粘结力</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p49.jpg" alt="8010 双组份无溶剂聚脲底涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-8010','catalog/pdf_products/material_p49_thumb.jpg','catalog/pdf_products/material_p49.jpg','分类：底涂料与水性涂料','产品编号：8010','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Primers & Waterborne Coatings','Code: 8010','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,560),
(109,1,'969 单组份改性聚脲银粉节能防腐涂料','969 Water-based metal special anti-rust primer','969 单组份改性聚脲银粉节能防腐涂料 - 南京科纬易机械设备有限公司','969 Water-based metal special anti-rust primer - 南京科纬易机械设备有限公司','969 单组份改性聚脲银粉节能防腐涂料,特种防腐涂料,重防腐,防护涂料,南京科纬易机械设备有限公司','969 Water-based metal special anti-rust primer,Special Anticorrosion Coatings,KWY','969是选用高性能防腐树脂为成膜基料辅以片状金属银粉材料而组成，其成膜树脂中含有大量醚键、脲键、缩二脲键、氨酯键和氢键，使成膜后涂层致密、坚韧，具有优异的机械物理性能和防腐蚀性能；经过预处理后的金属银粉片状材料成膜时能均匀、有序的排布，由于其长径比突出，防腐蚀能力强，使得涂层可以在较薄的状况下起到厚膜涂层才能达到的耐久性防腐蚀作用。选用的金属银粉材料为片状物，可有效反射掉光与热辐射，达到降温、节能的效果','969是选用高性能防腐树脂为成膜基料辅以片状金属银粉材料而组成，其成膜树脂中含有大量醚键、脲键、缩二脲键、氨酯键和氢键，使成膜后涂层致密、坚韧，具有优异的机械物理性能和防腐蚀性能；经过预处理后的金属银粉片状材料成膜时能均匀、有序的排布，由于其长径比突出，防腐蚀能力强，使得涂层可以在较薄的状况下起到厚膜涂层才能达到的耐久性防腐蚀作用。选用的金属银粉材料为片状物，可有效反射掉光与热辐射，达到降温、节能的效果','<div class="pdf-product-detail">
 <p>969是选用高性能防腐树脂为成膜基料辅以片状金属银粉材料而组成，其成膜树脂中含有大量醚键、脲键、缩二脲键、氨酯键和氢键，使成膜后涂层致密、坚韧，具有优异的机械物理性能和防腐蚀性能；经过预处理后的金属银粉片状材料成膜时能均匀、有序的排布，由于其长径比突出，防腐蚀能力强，使得涂层可以在较薄的状况下起到厚膜涂层才能达到的耐久性防腐蚀作用。选用的金属银粉材料为片状物，可有效反射掉光与热辐射，达到降温、节能的效果</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p50.jpg" alt="969 单组份改性聚脲银粉节能防腐涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>969是选用高性能防腐树脂为成膜基料辅以片状金属银粉材料而组成，其成膜树脂中含有大量醚键、脲键、缩二脲键、氨酯键和氢键，使成膜后涂层致密、坚韧，具有优异的机械物理性能和防腐蚀性能；经过预处理后的金属银粉片状材料成膜时能均匀、有序的排布，由于其长径比突出，防腐蚀能力强，使得涂层可以在较薄的状况下起到厚膜涂层才能达到的耐久性防腐蚀作用。选用的金属银粉材料为片状物，可有效反射掉光与热辐射，达到降温、节能的效果</p>
 <ul>
 <li>产品分类：特种防腐防护涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p50.jpg" alt="969 单组份改性聚脲银粉节能防腐涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-969','catalog/pdf_products/material_p50_thumb.jpg','catalog/pdf_products/material_p50.jpg','分类：特种防腐防护涂料','产品编号：969','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Special Anticorrosion Coatings','Code: 969','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,570),
(110,1,'9601 水性金属专用防锈底涂料','9601 Water-based metal special anti-rust primer','9601 水性金属专用防锈底涂料 - 南京科纬易机械设备有限公司','9601 Water-based metal special anti-rust primer - 南京科纬易机械设备有限公司','9601 水性金属专用防锈底涂料,聚脲底涂料,水性涂料,金属防锈底涂,南京科纬易机械设备有限公司','9601 Water-based metal special anti-rust primer,Primers & Waterborne Coatings,KWY','9601水性金属专用防锈底涂料，利用皮克林乳液技术合成的高性能水性树脂，结合超细材料和高性能助剂调配出的新型水性金属专用防腐蚀涂料。该涂料利用高性能水性树脂的超强阻隔性能，能够有效地阻止酸、碱、铵离子、硫酸根、氯离子、水汽、氧气、二氧化碳等腐蚀性介质等腐蚀性介质的侵入，从而避免了金属腐蚀反应的发生','9601水性金属专用防锈底涂料，利用皮克林乳液技术合成的高性能水性树脂，结合超细材料和高性能助剂调配出的新型水性金属专用防腐蚀涂料。该涂料利用高性能水性树脂的超强阻隔性能，能够有效地阻止酸、碱、铵离子、硫酸根、氯离子、水汽、氧气、二氧化碳等腐蚀性介质等腐蚀性介质的侵入，从而避免了金属腐蚀反应的发生','<div class="pdf-product-detail">
 <p>9601水性金属专用防锈底涂料，利用皮克林乳液技术合成的高性能水性树脂，结合超细材料和高性能助剂调配出的新型水性金属专用防腐蚀涂料。该涂料利用高性能水性树脂的超强阻隔性能，能够有效地阻止酸、碱、铵离子、硫酸根、氯离子、水汽、氧气、二氧化碳等腐蚀性介质等腐蚀性介质的侵入，从而避免了金属腐蚀反应的发生</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p51.jpg" alt="9601 水性金属专用防锈底涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9601水性金属专用防锈底涂料，利用皮克林乳液技术合成的高性能水性树脂，结合超细材料和高性能助剂调配出的新型水性金属专用防腐蚀涂料。该涂料利用高性能水性树脂的超强阻隔性能，能够有效地阻止酸、碱、铵离子、硫酸根、氯离子、水汽、氧气、二氧化碳等腐蚀性介质等腐蚀性介质的侵入，从而避免了金属腐蚀反应的发生</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p51.jpg" alt="9601 水性金属专用防锈底涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9601','catalog/pdf_products/material_p51_thumb.jpg','catalog/pdf_products/material_p51.jpg','分类：底涂料与水性涂料','产品编号：9601','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Primers & Waterborne Coatings','Code: 9601','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,580),
(110,1,'9606 水性环保高强装饰外墙涂料','9606 Waterborne environmental protection high-strength decorative exterior wall coating','9606 水性环保高强装饰外墙涂料 - 南京科纬易机械设备有限公司','9606 Waterborne environmental protection high-strength decorative exterior wall coating - 南京科纬易机械设备有限公司','9606 水性环保高强装饰外墙涂料,聚脲底涂料,水性涂料,金属防锈底涂,南京科纬易机械设备有限公司','9606 Waterborne environmental protection high-strength decorative exterior wall coating,Primers & Waterborne Coatings,KWY','9606水性环保高强装饰外墙涂料是以水性聚氨酯为基料，以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份成膜树脂材料。水性树脂合成技术来自德国，属当前先进的水性高分子聚合物涂装类材料。本产品具有良好的贮存稳定性，涂层致密、光洁，防腐、防霉、耐水、自洁、耐盐雾、耐老化、耐溶剂擦洗等性能俱佳。施工简便，可用多种涂装方式施涂；涂层成','9606水性环保高强装饰外墙涂料是以水性聚氨酯为基料，以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份成膜树脂材料。水性树脂合成技术来自德国，属当前先进的水性高分子聚合物涂装类材料。本产品具有良好的贮存稳定性，涂层致密、光洁，防腐、防霉、耐水、自洁、耐盐雾、耐老化、耐溶剂擦洗等性能俱佳。施工简便，可用多种涂装方式施涂；涂层成','<div class="pdf-product-detail">
 <p>9606水性环保高强装饰外墙涂料是以水性聚氨酯为基料，以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份成膜树脂材料。水性树脂合成技术来自德国，属当前先进的水性高分子聚合物涂装类材料。本产品具有良好的贮存稳定性，涂层致密、光洁，防腐、防霉、耐水、自洁、耐盐雾、耐老化、耐溶剂擦洗等性能俱佳。施工简便，可用多种涂装方式施涂；涂层成</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p52.jpg" alt="9606 水性环保高强装饰外墙涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9606水性环保高强装饰外墙涂料是以水性聚氨酯为基料，以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份成膜树脂材料。水性树脂合成技术来自德国，属当前先进的水性高分子聚合物涂装类材料。本产品具有良好的贮存稳定性，涂层致密、光洁，防腐、防霉、耐水、自洁、耐盐雾、耐老化、耐溶剂擦洗等性能俱佳。施工简便，可用多种涂装方式施涂；涂层成</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p52.jpg" alt="9606 水性环保高强装饰外墙涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9606','catalog/pdf_products/material_p52_thumb.jpg','catalog/pdf_products/material_p52.jpg','分类：底涂料与水性涂料','产品编号：9606','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Primers & Waterborne Coatings','Code: 9606','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,590),
(110,1,'9607 水性石墨烯锌粉涂料','9607 Waterborne graphene zinc powder coating','9607 水性石墨烯锌粉涂料 - 南京科纬易机械设备有限公司','9607 Waterborne graphene zinc powder coating - 南京科纬易机械设备有限公司','9607 水性石墨烯锌粉涂料,聚脲底涂料,水性涂料,金属防锈底涂,南京科纬易机械设备有限公司','9607 Waterborne graphene zinc powder coating,Primers & Waterborne Coatings,KWY','9607水性石墨烯锌粉涂料，是由水性环氧树脂、石墨烯、体系填料、助剂、稀释剂和水性聚酰胺等配制而成的以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份防腐材料。本产品具有良好的贮存稳定性，涂层致密、防腐性能优异','9607水性石墨烯锌粉涂料，是由水性环氧树脂、石墨烯、体系填料、助剂、稀释剂和水性聚酰胺等配制而成的以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份防腐材料。本产品具有良好的贮存稳定性，涂层致密、防腐性能优异','<div class="pdf-product-detail">
 <p>9607水性石墨烯锌粉涂料，是由水性环氧树脂、石墨烯、体系填料、助剂、稀释剂和水性聚酰胺等配制而成的以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份防腐材料。本产品具有良好的贮存稳定性，涂层致密、防腐性能优异</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p53.jpg" alt="9607 水性石墨烯锌粉涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>9607水性石墨烯锌粉涂料，是由水性环氧树脂、石墨烯、体系填料、助剂、稀释剂和水性聚酰胺等配制而成的以水基类分散介质并结合纳米分散技术进行改性，通过交联改性、增强而成的双组份防腐材料。本产品具有良好的贮存稳定性，涂层致密、防腐性能优异</p>
 <ul>
 <li>产品分类：底涂料与水性涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p53.jpg" alt="9607 水性石墨烯锌粉涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9607','catalog/pdf_products/material_p53_thumb.jpg','catalog/pdf_products/material_p53.jpg','分类：底涂料与水性涂料','产品编号：9607','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Primers & Waterborne Coatings','Code: 9607','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,600),
(111,1,'9609-9608 抗菌、抗病毒净味纳米装饰涂料','9609-9608 Protective coating of antibacterial and virus-inhibiting nanomaterials','9609-9608 抗菌、抗病毒净味纳米装饰涂料 - 南京科纬易机械设备有限公司','9609-9608 Protective coating of antibacterial and virus-inhibiting nanomaterials - 南京科纬易机械设备有限公司','9609-9608 抗菌、抗病毒净味纳米装饰涂料,抗菌涂料,抗病毒涂料,纳米装饰涂料,南京科纬易机械设备有限公司','9609-9608 Protective coating of antibacterial and virus-inhibiting nanomaterials,Nano Antibacterial Decorative Coatings,KWY','抗菌、抗病毒净味纳米内墙装饰涂料Protective coating of antibacterial and virus-inhibiting nanomaterials疫情几年，各种新型病毒一直袭扰着全球人类的正常工作与生活，而人类也在积极的采取各种技术创新预防应对病毒对健康的危害。全球抗菌、抗病毒净味纳米内墙装饰涂料能有效的守护居室及公共场所卫生环境，让千家万户远离病菌病毒的危害','抗菌、抗病毒净味纳米内墙装饰涂料Protective coating of antibacterial and virus-inhibiting nanomaterials疫情几年，各种新型病毒一直袭扰着全球人类的正常工作与生活，而人类也在积极的采取各种技术创新预防应对病毒对健康的危害。全球抗菌、抗病毒净味纳米内墙装饰涂料能有效的守护居室及公共场所卫生环境，让千家万户远离病菌病毒的危害','<div class="pdf-product-detail">
 <p>抗菌、抗病毒净味纳米内墙装饰涂料Protective coating of antibacterial and virus-inhibiting nanomaterials疫情几年，各种新型病毒一直袭扰着全球人类的正常工作与生活，而人类也在积极的采取各种技术创新预防应对病毒对健康的危害。全球抗菌、抗病毒净味纳米内墙装饰涂料能有效的守护居室及公共场所卫生环境，让千家万户远离病菌病毒的危害</p>
 <ul>
 <li>产品分类：纳米抗菌装饰涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p54.jpg" alt="9609-9608 抗菌、抗病毒净味纳米装饰涂料" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/material_p55.jpg" alt="9609-9608 抗菌、抗病毒净味纳米装饰涂料" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>抗菌、抗病毒净味纳米内墙装饰涂料Protective coating of antibacterial and virus-inhibiting nanomaterials疫情几年，各种新型病毒一直袭扰着全球人类的正常工作与生活，而人类也在积极的采取各种技术创新预防应对病毒对健康的危害。全球抗菌、抗病毒净味纳米内墙装饰涂料能有效的守护居室及公共场所卫生环境，让千家万户远离病菌病毒的危害</p>
 <ul>
 <li>产品分类：纳米抗菌装饰涂料</li>
 <li>来源于 2026 科纬易材料宣传册。</li><li>产品详情页保留宣传册原始参数表、应用范围和施工说明。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p54.jpg" alt="9609-9608 抗菌、抗病毒净味纳米装饰涂料" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/material_p55.jpg" alt="9609-9608 抗菌、抗病毒净味纳米装饰涂料" style="max-width:100%;height:auto;"></p>
 </div>','kwy-9609-9608','catalog/pdf_products/material_p54_thumb.jpg','catalog/pdf_products/material_p54.jpg,catalog/pdf_products/material_p55.jpg','分类：纳米抗菌装饰涂料','产品编号：9609-9608','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Nano Antibacterial Decorative Coatings','Code: 9609-9608','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',0,610),
(112,1,'聚脲防腐防水工程案例与应用场景','Polyurea engineering cases and application scenarios','聚脲防腐防水工程案例与应用场景 - 南京科纬易机械设备有限公司','Polyurea engineering cases and application scenarios - 南京科纬易机械设备有限公司','聚脲防腐防水工程案例与应用场景,聚脲工程案例,防腐防水工程,应用场景,南京科纬易机械设备有限公司','Polyurea engineering cases and application scenarios,Engineering Cases,KWY','宣传册收录了天然气管道、奥运场馆、除盐水箱、污水池、桥梁、地铁隧道、海水淡化、工业地坪、矿山设备等聚脲防腐防水工程案例。','宣传册收录了天然气管道、奥运场馆、除盐水箱、污水池、桥梁、地铁隧道、海水淡化、工业地坪、矿山设备等聚脲防腐防水工程案例。','<div class="pdf-product-detail">
 <p>宣传册收录了天然气管道、奥运场馆、除盐水箱、污水池、桥梁、地铁隧道、海水淡化、工业地坪、矿山设备等聚脲防腐防水工程案例。</p>
 <ul>
 <li>产品分类：工程案例与应用场景</li>
 <li>工程案例
Engineering case
2008/2009/2010/2011/2012/2013/2014/2015/2016/2017/2018/2019/2020/2021/2022
北京天然气管道公司
天然气管道聚脲防腐防护
北京奥运场馆 
体育场看台聚脲防护 
北京奥林匹克中心
体育场看台聚脲防护
北京毛</li><li>覆盖防腐、防水、防护、耐磨、隔热、装饰等多类工程应用。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p56.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/material_p57.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/material_p58.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/banner_polyurea_materials.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
 </div>','<div class="pdf-product-detail">
 <p>宣传册收录了天然气管道、奥运场馆、除盐水箱、污水池、桥梁、地铁隧道、海水淡化、工业地坪、矿山设备等聚脲防腐防水工程案例。</p>
 <ul>
 <li>产品分类：工程案例与应用场景</li>
 <li>工程案例
Engineering case
2008/2009/2010/2011/2012/2013/2014/2015/2016/2017/2018/2019/2020/2021/2022
北京天然气管道公司
天然气管道聚脲防腐防护
北京奥运场馆 
体育场看台聚脲防护 
北京奥林匹克中心
体育场看台聚脲防护
北京毛</li><li>覆盖防腐、防水、防护、耐磨、隔热、装饰等多类工程应用。</li>
 <li>服务单位：南京科纬易机械设备有限公司</li>
 </ul>
 <h4>宣传册页面</h4>
 <p>以下页面由 PDF 宣传册渲染生成，便于客户在网站产品中心直接查看参数、应用范围与施工说明。</p>
 <p><img src="/Uploads/catalog/pdf_products/material_p56.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/material_p57.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/material_p58.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
<p><img src="/Uploads/catalog/pdf_products/banner_polyurea_materials.jpg" alt="聚脲防腐防水工程案例与应用场景" style="max-width:100%;height:auto;"></p>
 </div>','polyurea-engineering-cases','catalog/pdf_products/material_p56_thumb.jpg','catalog/pdf_products/material_p56.jpg,catalog/pdf_products/material_p57.jpg,catalog/pdf_products/material_p58.jpg,catalog/pdf_products/banner_polyurea_materials.jpg','分类：工程案例与应用场景','产品编号：CASE','来源：PDF宣传册','公司：南京科纬易机械设备有限公司','Category: Engineering Cases','Code: CASE','Source: PDF brochure','Company: 南京科纬易机械设备有限公司',1,980);

INSERT INTO `jchen_flash` (`title`,`link`,`photo`,`sort`) VALUES
('医疗推车、配件与加工服务','/cn/products','catalog/pdf_products/banner_medical_parts.jpg',1),
('聚脲防腐防水材料','/cn/products','catalog/pdf_products/banner_polyurea_materials.jpg',2);

COMMIT;
