SET NAMES utf8;

CREATE TABLE IF NOT EXISTS `jchen_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `bid` int(11) unsigned NOT NULL DEFAULT 0,
  `type` varchar(30) NOT NULL DEFAULT 'page',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ename` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `etitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ekeywords` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `edescription` text,
  `contents` mediumtext,
  `econtents` mediumtext,
  `url` varchar(200) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `nav` tinyint(1) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `bid` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `ename` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `etitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ekeywords` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `edescription` text,
  `contents` mediumtext,
  `econtents` mediumtext,
  `url` varchar(200) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `photo` text,
  `property1` varchar(255) NOT NULL DEFAULT '',
  `property2` varchar(255) NOT NULL DEFAULT '',
  `property3` varchar(255) NOT NULL DEFAULT '',
  `property4` varchar(255) NOT NULL DEFAULT '',
  `eproperty1` varchar(255) NOT NULL DEFAULT '',
  `eproperty2` varchar(255) NOT NULL DEFAULT '',
  `eproperty3` varchar(255) NOT NULL DEFAULT '',
  `eproperty4` varchar(255) NOT NULL DEFAULT '',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_new` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `bid` int(11) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `etitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ekeywords` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `edescription` text,
  `contents` mediumtext,
  `econtents` mediumtext,
  `url` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `bid` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `ename` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `etitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ekeywords` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `edescription` text,
  `contents` mediumtext,
  `econtents` mediumtext,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_photo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0,
  `bid` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `ename` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `etitle` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `ekeywords` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `edescription` text,
  `contents` mediumtext,
  `econtents` mediumtext,
  `url` varchar(200) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `photo` text,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_flash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `ename` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `eurl` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_inside` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `ekeyword` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `eurl` varchar(255) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `tel` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `add` varchar(255) NOT NULL DEFAULT '',
  `contents` text,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jchen_inquiry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product` varchar(255) NOT NULL DEFAULT '',
  `num` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `add` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(100) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `contents` text,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `jchen_user` (`id`, `username`, `password`) VALUES
  (1, 'admin', '0192023a7bbd73250516f069df18b500')
ON DUPLICATE KEY UPDATE `username` = VALUES(`username`);

INSERT INTO `jchen_list` (`id`, `pid`, `bid`, `type`, `name`, `ename`, `title`, `etitle`, `keywords`, `ekeywords`, `description`, `edescription`, `contents`, `econtents`, `url`, `link`, `nav`, `sort`) VALUES
  (1, 0, 1, 'product', '产品中心', 'Products', '产品中心', 'Products', '机械加工,钣金,模具', 'machining,sheet metal,mold', '产品中心', 'Products', '', '', 'products', '', 1, 1),
  (2, 0, 2, 'new', '新闻资讯', 'News', '新闻资讯', 'News', '新闻', 'news', '新闻资讯', 'News', '', '', 'news', '', 1, 2),
  (3, 0, 3, 'download', '资料下载', 'Downloads', '资料下载', 'Downloads', '下载', 'downloads', '资料下载', 'Downloads', '', '', 'downloads', '', 1, 3),
  (4, 0, 4, 'page', '关于我们', 'About Us', '关于我们', 'About Us', '南京科纬易', 'kvoyi', '关于南京科纬易机械设备有限公司', 'About Kvoyi', '<p>南京科纬易机械设备有限公司专注于机械设备、工程机械、机加工、钣金、ABS模具及注塑配件服务。</p>', '<p>KVoyi focuses on machinery equipment, machining, sheet metal, ABS molds and injection molding parts.</p>', 'about-us', '', 1, 4),
  (5, 0, 5, 'page', '联系我们', 'Contact', '联系我们', 'Contact', '联系', 'contact', '联系我们', 'Contact', '', '', 'contact', '/Feedback/', 1, 5),
  (25, 0, 25, 'page', '首页简介', 'Home Intro', '首页简介', 'Home Intro', '南京科纬易', 'kvoyi', '首页简介', 'Home intro', '<p>我们为客户提供从构想到实现的一站式配件解决方案。</p>', '<p>We provide one-stop parts solutions from idea to final delivery.</p>', 'home-intro', '', 0, 25)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

INSERT INTO `jchen_product` (`id`, `pid`, `bid`, `name`, `ename`, `title`, `etitle`, `keywords`, `ekeywords`, `description`, `edescription`, `contents`, `econtents`, `url`, `thumb`, `photo`, `property1`, `property2`, `property3`, `property4`, `eproperty1`, `eproperty2`, `eproperty3`, `eproperty4`, `featured`, `sort`) VALUES
  (1, 1, 1, '机械加工配件', 'Machined Parts', '机械加工配件', 'Machined Parts', '机械加工,配件', 'machining,parts', '本地开发演示产品，用于页面调试。', 'Local demo product for page styling.', '<p>这里是本地 Docker 初始化的演示产品内容，后续可导入真实数据库替换。</p>', '<p>This is demo product content initialized for local Docker development.</p>', 'machined-parts', '20190311/15522868235c8604670e91f.jpg', '20190311/15522868235c8604670e91f.jpg', '定制加工', '小批量支持', '质量检测', '快速交付', 'Custom machining', 'Small batch', 'Quality check', 'Fast delivery', 1, 1)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

INSERT INTO `jchen_new` (`id`, `pid`, `bid`, `title`, `etitle`, `keywords`, `ekeywords`, `description`, `edescription`, `contents`, `econtents`, `url`, `time`, `sort`) VALUES
  (1, 2, 2, '科纬易完善医疗推车系统与精密配套件一体化供应能力', 'Keweiyi Expands Integrated Supply Capabilities for Medical Trolley Systems and Precision Parts', '医疗推车系统,精密加工零件,模具注塑,聚脲防护材料', 'medical trolley systems,precision machined parts,moulds,injection parts,polyurea protective materials', '科纬易围绕医疗设备客户需求，持续完善医疗推车系统、精密加工零件、模具注塑组件及聚脲防护材料的一体化供应能力。', 'Keweiyi continues to strengthen integrated supply capabilities for medical trolley systems, precision machined parts, moulded and injection components, and polyurea protective materials.', '<p>南京科纬易机械设备有限公司围绕医疗设备客户的实际项目需求，持续完善医疗推车系统、精密加工零件、金属模具、ABS注塑组件和聚脲防护材料的一体化供应能力。</p><p>在项目配套过程中，科纬易可根据图纸、样件、现场工况或功能要求，提供选型建议、加工配套、模具开发、注塑生产及防腐防水材料方案，帮助客户减少多环节沟通成本，提升交付效率。</p><p>公司将继续以医疗零件、机械加工和防护材料为核心方向，为设备制造、工程配套和维护改造项目提供稳定、可追溯的产品与服务支持。</p>', '<p>Nanjing Keweiyi Machinery Equipment Co., Ltd. continues to improve its integrated supply capabilities for medical equipment customers, covering medical trolley systems, precision machined parts, metal moulds, ABS injection components and polyurea protective materials.</p><p>For project support, Keweiyi can provide selection advice, machining support, mould development, injection production and anticorrosion or waterproof material solutions based on drawings, samples, site conditions or functional requirements.</p><p>The company will keep focusing on medical parts, machining and protective materials, providing stable and traceable products and services for equipment manufacturing, engineering support and maintenance projects.</p>', 'medical-trolley-precision-parts-supply', UNIX_TIMESTAMP('2026-04-24 12:10:18'), 1)
ON DUPLICATE KEY UPDATE
  `title` = VALUES(`title`),
  `etitle` = VALUES(`etitle`),
  `keywords` = VALUES(`keywords`),
  `ekeywords` = VALUES(`ekeywords`),
  `description` = VALUES(`description`),
  `edescription` = VALUES(`edescription`),
  `contents` = VALUES(`contents`),
  `econtents` = VALUES(`econtents`),
  `url` = VALUES(`url`),
  `time` = VALUES(`time`),
  `sort` = VALUES(`sort`);

INSERT INTO `jchen_download` (`id`, `pid`, `bid`, `name`, `ename`, `title`, `etitle`, `keywords`, `ekeywords`, `description`, `edescription`, `contents`, `econtents`, `filename`, `url`, `time`, `sort`) VALUES
  (1, 3, 3, '演示资料', 'Demo File', '演示资料', 'Demo File', '资料', 'file', '本地演示下载资料。', 'Local demo download file.', '<p>本地演示下载内容。</p>', '<p>Local demo download content.</p>', '59aa2f76c0953.jpg', 'demo-file', UNIX_TIMESTAMP(), 1)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

INSERT INTO `jchen_flash` (`id`, `title`, `link`, `photo`, `sort`) VALUES
  (1, '广告一', '/', 'banner1.jpg', 1),
  (2, '广告二', '/', 'banner2.jpg', 2)
ON DUPLICATE KEY UPDATE `title` = VALUES(`title`);

INSERT INTO `jchen_link` (`id`, `name`, `ename`, `url`, `eurl`, `sort`) VALUES
  (1, '', '', '', '', 1)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

INSERT INTO `jchen_tags` (`id`, `name`, `sort`) VALUES
  (1, '机械加工', 1)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);
