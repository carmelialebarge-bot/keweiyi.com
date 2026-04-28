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
return array_merge($arr1,$arr2,$arr3);

?>