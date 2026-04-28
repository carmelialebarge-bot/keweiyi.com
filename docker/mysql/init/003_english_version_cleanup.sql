SET NAMES utf8;

UPDATE `jchen_list`
SET
  `etitle` = REPLACE(`etitle`, '南京科纬易机械设备有限公司', 'Nanjing Keweiyi Machinery Equipment Co., Ltd.'),
  `ekeywords` = REPLACE(`ekeywords`, '南京科纬易机械设备有限公司', 'Nanjing Keweiyi Machinery Equipment Co., Ltd.'),
  `edescription` = CASE `id`
    WHEN 1 THEN 'Product center for medical trolley accessories, precision machining, moulds, injection parts, 3D metal printing and polyurea protective coating materials.'
    WHEN 2 THEN 'Company news and product updates from Nanjing Keweiyi Machinery Equipment Co., Ltd.'
    WHEN 3 THEN 'Downloadable product documents, project references and support files.'
    WHEN 4 THEN 'About Nanjing Keweiyi Machinery Equipment Co., Ltd. and its machinery, accessories and coating material services.'
    WHEN 5 THEN 'Contact Nanjing Keweiyi Machinery Equipment Co., Ltd. for product selection, quotation and project communication.'
    WHEN 25 THEN 'Keweiyi provides one-stop project support from product selection to delivery.'
    WHEN 91 THEN 'Standard parts, medical trolley structures and accessory sets for equipment projects.'
    WHEN 92 THEN 'Machining, mould development, injection moulding and 3D metal printing categories.'
    WHEN 93 THEN 'Polyurea materials, primers, waterborne coatings, decorative coatings and engineering case categories.'
    WHEN 101 THEN 'Medical trolleys, equipment accessories and related custom manufactured parts.'
    WHEN 102 THEN 'Precision machining services for medical, electronic and industrial equipment parts.'
    WHEN 103 THEN 'Metal moulds, ABS plastic moulds and supporting design services.'
    WHEN 104 THEN 'ABS injection products, plastic housings and equipment accessory parts.'
    WHEN 105 THEN '3D metal printing, rapid prototyping and small-batch custom production.'
    WHEN 106 THEN 'Spray polyurea elastomer coatings for waterproofing, anticorrosion, wear resistance and surface protection.'
    WHEN 107 THEN 'One-component and hand-applied polyurea materials for waterproofing and anticorrosion work.'
    WHEN 108 THEN 'Polyaspartic polyurea, floor coatings and wear-resistant surface coating products.'
    WHEN 109 THEN 'Special anticorrosion coatings for heavy-duty protection, equipment surfaces and demanding environments.'
    WHEN 110 THEN 'Polyurea primers, waterborne metal primers, exterior wall coatings and graphene coating materials.'
    WHEN 111 THEN 'Antibacterial, virus-inhibiting and odor-control nano decorative coatings.'
    WHEN 112 THEN 'Engineering cases and application references for polyurea protection systems.'
    WHEN 113 THEN 'Surface coating solutions for medical device appearance, wear resistance and antibacterial protection.'
    ELSE `edescription`
  END
WHERE `id` IN (1,2,3,4,5,25,91,92,93,101,102,103,104,105,106,107,108,109,110,111,112,113);

UPDATE `jchen_list`
SET `etitle` = CONCAT(`ename`, ' - Nanjing Keweiyi Machinery Equipment Co., Ltd.')
WHERE `ename` <> ''
  AND (
    `etitle` = ''
    OR `etitle` LIKE '%?%'
    OR `etitle` REGEXP '[一-龥]'
    OR `etitle` NOT LIKE '%Nanjing Keweiyi Machinery Equipment Co., Ltd.%'
  );

UPDATE `jchen_list`
SET `econtents` = '<p>Nanjing Keweiyi Machinery Equipment Co., Ltd. provides medical trolley accessories, precision machining, mould development, injection moulding, 3D metal printing and polyurea protective coating material solutions. The company supports customers from requirement review and sample discussion to product selection, quotation and delivery follow-up.</p>'
WHERE `id` = 4;

UPDATE `jchen_list`
SET `econtents` = '<p>Keweiyi organizes product resources around practical project needs, including medical trolley accessories, precision parts, moulds, injection components and protective coating materials.</p>'
WHERE `id` = 25;

UPDATE `jchen_product` AS `p`
LEFT JOIN `jchen_list` AS `l` ON `p`.`pid` = `l`.`id`
SET
  `p`.`etitle` = REPLACE(`p`.`etitle`, '南京科纬易机械设备有限公司', 'Nanjing Keweiyi Machinery Equipment Co., Ltd.'),
  `p`.`ekeywords` = REPLACE(`p`.`ekeywords`, '南京科纬易机械设备有限公司', 'Nanjing Keweiyi Machinery Equipment Co., Ltd.'),
  `p`.`eproperty1` = CONCAT('Category: ', COALESCE(NULLIF(`l`.`ename`, ''), 'Products')),
  `p`.`eproperty2` = CASE
    WHEN `p`.`ename` REGEXP '^[0-9]' THEN CONCAT('Code: ', SUBSTRING_INDEX(`p`.`ename`, ' ', 1))
    ELSE 'Service: Custom manufacturing and project support'
  END,
  `p`.`eproperty3` = CASE
    WHEN `p`.`pid` = 101 THEN 'Application: medical trolleys, equipment supports and accessory replacement'
    WHEN `p`.`pid` = 102 THEN 'Application: machined parts, prototypes and batch production'
    WHEN `p`.`pid` = 103 THEN 'Application: metal moulds, ABS moulds and structural component development'
    WHEN `p`.`pid` = 104 THEN 'Application: ABS injection parts, plastic housings and equipment accessories'
    WHEN `p`.`pid` = 105 THEN 'Application: rapid prototyping and small-batch metal functional parts'
    WHEN `p`.`pid` = 106 THEN 'Application: waterproofing, anticorrosion and wear-resistant protective coating'
    WHEN `p`.`pid` = 107 THEN 'Application: one-component and hand-applied waterproofing or anticorrosion work'
    WHEN `p`.`pid` = 108 THEN 'Application: floors, topcoats and decorative or wear-resistant surfaces'
    WHEN `p`.`pid` = 109 THEN 'Application: heavy-duty anticorrosion, equipment protection and special environments'
    WHEN `p`.`pid` = 110 THEN 'Application: primer matching, waterborne coating and substrate treatment'
    WHEN `p`.`pid` = 111 THEN 'Application: antibacterial and odor-control decorative coating'
    WHEN `p`.`pid` = 112 THEN 'Application: pipeline, tank, bridge, tunnel, floor and equipment protection cases'
    ELSE 'Application: project selection, quotation and delivery communication'
  END,
  `p`.`eproperty4` = 'Company: Nanjing Keweiyi Machinery Equipment Co., Ltd.',
  `p`.`edescription` = CONCAT(
    `p`.`ename`,
    ' is part of Keweiyi''s ',
    COALESCE(NULLIF(`l`.`ename`, ''), 'product'),
    ' series. ',
    CASE
      WHEN `p`.`pid` = 101 THEN 'It supports medical trolley and equipment accessory projects, including selection, replacement, customization and batch delivery.'
      WHEN `p`.`pid` = 102 THEN 'It supports precision machining projects for medical, electronic and industrial equipment components, from drawings and samples to stable production.'
      WHEN `p`.`pid` = 103 THEN 'It supports mould development for metal and ABS plastic components, covering project review, sample validation and production preparation.'
      WHEN `p`.`pid` = 104 THEN 'It supports ABS injection products, plastic housings and accessory parts for medical, industrial and smart device projects.'
      WHEN `p`.`pid` = 105 THEN 'It supports rapid prototyping, complex metal parts and small-batch functional verification.'
      WHEN `p`.`pid` = 106 THEN 'It is used for waterproofing, anticorrosion, wear resistance and protective surface coating projects.'
      WHEN `p`.`pid` = 107 THEN 'It is suitable for one-component or hand-applied waterproofing and anticorrosion maintenance work.'
      WHEN `p`.`pid` = 108 THEN 'It is designed for floor coating, topcoat, decorative and wear-resistant surface applications.'
      WHEN `p`.`pid` = 109 THEN 'It supports heavy-duty anticorrosion, special equipment protection and demanding service environments.'
      WHEN `p`.`pid` = 110 THEN 'It supports primer matching, waterborne coating selection and substrate treatment before protective coating work.'
      WHEN `p`.`pid` = 111 THEN 'It supports antibacterial, virus-inhibiting, odor-control and decorative coating needs.'
      WHEN `p`.`pid` = 112 THEN 'It summarizes engineering cases and application scenarios for polyurea protection systems.'
      ELSE 'It is organized for project selection, quotation and delivery communication.'
    END
  ),
  `p`.`econtents` = CONCAT(
    '<div class="pdf-product-detail">',
    '<p><strong>', `p`.`ename`, '</strong> belongs to Keweiyi''s ', COALESCE(NULLIF(`l`.`ename`, ''), 'product'), ' series. ',
    CASE
      WHEN `p`.`pid` = 101 THEN 'The product direction is prepared for medical trolleys, equipment supports, mounting structures and accessory replacement.'
      WHEN `p`.`pid` = 102 THEN 'The product direction is prepared for drawing-based machining, samples, prototypes and stable batch production.'
      WHEN `p`.`pid` = 103 THEN 'The product direction is prepared for metal moulds, ABS moulds and custom structural component development.'
      WHEN `p`.`pid` = 104 THEN 'The product direction is prepared for ABS injection parts, plastic housings and equipment accessories.'
      WHEN `p`.`pid` = 105 THEN 'The product direction is prepared for 3D metal printing, rapid verification and low-volume functional parts.'
      WHEN `p`.`pid` = 106 THEN 'The material direction is prepared for waterproofing, anticorrosion, wear resistance and protective coating projects.'
      WHEN `p`.`pid` = 107 THEN 'The material direction is prepared for one-component and hand-applied waterproofing or anticorrosion work.'
      WHEN `p`.`pid` = 108 THEN 'The material direction is prepared for floor coating, topcoat, decorative and wear-resistant surface applications.'
      WHEN `p`.`pid` = 109 THEN 'The material direction is prepared for heavy-duty anticorrosion, equipment protection and special service environments.'
      WHEN `p`.`pid` = 110 THEN 'The material direction is prepared for primer matching, waterborne coating and substrate treatment.'
      WHEN `p`.`pid` = 111 THEN 'The material direction is prepared for antibacterial, virus-inhibiting and odor-control decorative coating applications.'
      WHEN `p`.`pid` = 112 THEN 'This page provides reference cases for pipeline, tank, bridge, tunnel, floor and equipment protection projects.'
      ELSE 'This item is prepared for project selection, quotation and delivery communication.'
    END,
    '</p>',
    '<ul>',
    '<li>Category: ', COALESCE(NULLIF(`l`.`ename`, ''), 'Products'), '</li>',
    '<li>Support: requirement review, product selection, quotation, samples and delivery follow-up.</li>',
    '<li>Documents: brochure images, product information and application notes can be reviewed with the project team.</li>',
    '<li>Company: Nanjing Keweiyi Machinery Equipment Co., Ltd.</li>',
    '</ul>',
    '</div>'
  );
