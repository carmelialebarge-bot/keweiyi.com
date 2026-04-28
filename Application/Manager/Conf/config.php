<?php

return array(
/* 模板相关配置 */
    'TMPL_PARSE_STRING' => array(
        '__IMG__'    => __ROOT__ . '/Public/' . MODULE_NAME . '/img',
        '__CSS__'    => __ROOT__ . '/Public/' . MODULE_NAME . '/css',
        '__JS__'     => __ROOT__ . '/Public/' . MODULE_NAME . '/js',
		'TMPL_ACTION_ERROR'     =>  'Public:error', // 默认错误跳转对应的模板文件
        'TMPL_ACTION_SUCCESS'   =>  'Public:success', // 默认成功跳转对应的模板文件
        'TMPL_EXCEPTION_FILE'   =>  'Public:exception'// 异常页面的模板文件
    )
	//'URL_MODEL' => '0',
	
	//'SHOW_PAGE_TRACE'=>true,
    
);

?>