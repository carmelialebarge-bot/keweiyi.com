<?php

$arr3=include'./static.php';
$arr4=array(
    //'SHOW_PAGE_TRACE'=>true,
	'TMPL_PARSE_STRING' => array(
        '__IMG__'    => __ROOT__ . '/Public/' . MODULE_NAME . '/images',
        '__CSS__'    => __ROOT__ . '/Public/' . MODULE_NAME . '/css',
        '__JS__'     => __ROOT__ . '/Public/' . MODULE_NAME . '/js',
    ),
    'TMPL_ACTION_ERROR'=>'Public:jump',
    'TMPL_ACTION_SUCCESS'=>'Public:jump',
   	'OUTPUT_ENCODE'=>false //关闭页面压缩
	
);
	if($arr3['URL_MODEL']==2) {
		$arr4['URL_ROUTER_ON']=true;
		$arr4['URL_ROUTE_RULES']=array(
			$arr3['EN_URL'].'/'.$arr3['PRO_URL'].'/:url'=>'Product/html?g=e',
			$arr3['CN_URL'].'/'.$arr3['PRO_URL'].'/:url'=>'Product/html?g=c',
			$arr3['EN_URL'].'/'.$arr3['NEW_URL'].'/:url'=>'New/html?g=e',
			$arr3['CN_URL'].'/'.$arr3['NEW_URL'].'/:url'=>'New/html?g=c',
			$arr3['EN_URL'].'/'.$arr3['DOWN_URL'].'/:url'=>'Download/html?g=e',
			$arr3['CN_URL'].'/'.$arr3['DOWN_URL'].'/:url'=>'Download/html?g=c',
			$arr3['EN_URL'].'/'.$arr3['PHO_URL'].'/:url'=>'Photo/html?g=e',
			$arr3['CN_URL'].'/'.$arr3['PHO_URL'].'/:url'=>'Photo/html?g=c',

			'/^'.$arr3['CN_URL'].'\/product_tags_(\d+)_?(\d*)$/'=>'Product/tags?id=:1&p=:2&g=c',
			'/^'.$arr3['EN_URL'].'\/product_tags_(\d+)_?(\d*)$/'=>'Product/tags?id=:1&p=:2&g=e',
			'/^'.$arr3['CN_URL'].'\/new_tags_(\d+)_?(\d*)$/'=>'New/tags?id=:1&p=:2&g=c',
			'/^'.$arr3['EN_URL'].'\/new_tags_(\d+)_?(\d*)$/'=>'New/tags?id=:1&p=:2&g=e',
			'/^'.$arr3['CN_URL'].'\/photo_tags_(\d+)_?(\d*)$/'=>'Photo/tags?id=:1&p=:2&g=c',
			'/^'.$arr3['EN_URL'].'\/photo_tags_(\d+)_?(\d*)$/'=>'Photo/tags?id=:1&p=:2&g=e',
			'/^'.$arr3['CN_URL'].'\/download_tags_(\d+)_?(\d*)$/'=>'Download/tags?id=:1&p=:2&g=c',
			'/^'.$arr3['EN_URL'].'\/download_tags_(\d+)_?(\d*)$/'=>'Download/tags?id=:1&p=:2&g=e',

			$arr3['CN_URL'].'/Feedback'=>'Feedback/index?g=c',
			$arr3['EN_URL'].'/Feedback'=>'Feedback/index?g=e',
			$arr3['CN_URL'].'/Inquiry'=>'Inquiry/index?g=c',
			$arr3['EN_URL'].'/Inquiry'=>'Inquiry/index?g=e',
			$arr3['CN_URL'].'/index' => 'Index/index?g=c',
			$arr3['EN_URL'].'/index' => 'Index/index?g=e',

			'/^'.$arr3['CN_URL'].'\/([a-zA-Z0-9-]+)$/'=>'List/html?g=c&url=:1',
			'/^'.$arr3['EN_URL'].'\/([a-zA-Z0-9-]+)$/'=>'List/html?g=e&url=:1',
			'/^'.$arr3['CN_URL'].'\/([a-zA-Z0-9-]+)_(\d+)$/'=>'List/html?g=c&url=:1&p=:2',
			'/^'.$arr3['EN_URL'].'\/([a-zA-Z0-9-]+)_(\d+)$/'=>'List/html?g=e&url=:1&p=:2'
		);
	}
return array_merge($arr3,$arr4);
?>