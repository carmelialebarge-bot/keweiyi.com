<?php

$arr1=include'./user.php';
$arr2=include'./db.php';
$arr3=array(
	'DEFAULT_MODULE'     => 'Home', //默认模块
	'TMPL_L_DELIM'=>'<{',
	'TMPL_R_DELIM'=>'}>',
	'URL_CASE_INSENSITIVE'=>true,  //url不区分大小写
    'MODULE_ALLOW_LIST' => array('Home','Manager')
    
);
$arr4=include'./static.php';
if($arr4['URL_MODEL']==2) {
    $arr3['URL_ROUTER_ON']=true;
    $arr3['URL_ROUTE_RULES']=array(
        $arr4['EN_URL'].'/'.$arr4['PRO_URL'].'/:url'=>'Home/Product/html?g=e',
        $arr4['CN_URL'].'/'.$arr4['PRO_URL'].'/:url'=>'Home/Product/html?g=c',
        $arr4['EN_URL'].'/'.$arr4['NEW_URL'].'/:url'=>'Home/New/html?g=e',
        $arr4['CN_URL'].'/'.$arr4['NEW_URL'].'/:url'=>'Home/New/html?g=c',
        $arr4['EN_URL'].'/'.$arr4['DOWN_URL'].'/:url'=>'Home/Download/html?g=e',
        $arr4['CN_URL'].'/'.$arr4['DOWN_URL'].'/:url'=>'Home/Download/html?g=c',
        $arr4['EN_URL'].'/'.$arr4['PHO_URL'].'/:url'=>'Home/Photo/html?g=e',
        $arr4['CN_URL'].'/'.$arr4['PHO_URL'].'/:url'=>'Home/Photo/html?g=c',

        '/^'.$arr4['CN_URL'].'\/product_tags_(\d+)_?(\d*)$/'=>'Home/Product/tags?id=:1&p=:2&g=c',
        '/^'.$arr4['EN_URL'].'\/product_tags_(\d+)_?(\d*)$/'=>'Home/Product/tags?id=:1&p=:2&g=e',
        '/^'.$arr4['CN_URL'].'\/new_tags_(\d+)_?(\d*)$/'=>'Home/New/tags?id=:1&p=:2&g=c',
        '/^'.$arr4['EN_URL'].'\/new_tags_(\d+)_?(\d*)$/'=>'Home/New/tags?id=:1&p=:2&g=e',
        '/^'.$arr4['CN_URL'].'\/photo_tags_(\d+)_?(\d*)$/'=>'Home/Photo/tags?id=:1&p=:2&g=c',
        '/^'.$arr4['EN_URL'].'\/photo_tags_(\d+)_?(\d*)$/'=>'Home/Photo/tags?id=:1&p=:2&g=e',
        '/^'.$arr4['CN_URL'].'\/download_tags_(\d+)_?(\d*)$/'=>'Home/Download/tags?id=:1&p=:2&g=c',
        '/^'.$arr4['EN_URL'].'\/download_tags_(\d+)_?(\d*)$/'=>'Home/Download/tags?id=:1&p=:2&g=e',

        $arr4['CN_URL'].'/Feedback'=>'Home/Feedback/index?g=c',
        $arr4['EN_URL'].'/Feedback'=>'Home/Feedback/index?g=e',
        $arr4['CN_URL'].'/Inquiry'=>'Home/Inquiry/index?g=c',
        $arr4['EN_URL'].'/Inquiry'=>'Home/Inquiry/index?g=e',
        $arr4['CN_URL'].'/index' => 'Home/Index/index?g=c',
        $arr4['EN_URL'].'/index' => 'Home/Index/index?g=e',

        '/^'.$arr4['CN_URL'].'\/([a-zA-Z0-9-]+)$/'=>'Home/List/html?g=c&url=:1',
        '/^'.$arr4['EN_URL'].'\/([a-zA-Z0-9-]+)$/'=>'Home/List/html?g=e&url=:1',
        '/^'.$arr4['CN_URL'].'\/([a-zA-Z0-9-]+)_(\d+)$/'=>'Home/List/html?g=c&url=:1&p=:2',
        '/^'.$arr4['EN_URL'].'\/([a-zA-Z0-9-]+)_(\d+)$/'=>'Home/List/html?g=e&url=:1&p=:2'
    );
}
return array_merge($arr1,$arr2,$arr3);

?>
