<?php
namespace Manager\Controller;
class IndexController extends CommonController {
    public function index(){
         $info = array(
            '操作系统'=>PHP_OS,
            '运行环境'=>$_SERVER["SERVER_SOFTWARE"],
            'PHP运行方式'=>php_sapi_name(),
            '上传附件限制'=>ini_get('upload_max_filesize'),
            '现在时间'=>gmdate("Y年n月j日 H:i:s",time()+8*3600),
            '服务器域名/IP'=>$_SERVER['SERVER_NAME'].'/ [ '.gethostbyname($_SERVER['SERVER_NAME']).' ]',
            'register_globals'=>get_cfg_var("register_globals")=="1" ? "ON" : "OFF",
            'magic_quotes_gpc'=>(1===get_magic_quotes_gpc())?'ON':'OFF',
            'magic_quotes_runtime'=>(1===get_magic_quotes_runtime())?'ON':'OFF',
			'Host'=>gethostbyname($_SERVER['SERVER_NAME']),
            );
        $this->assign('info',$info);
		$this->display();
    }
	
	
	
	public function loginOut(){
		session_unset();
		session_destroy();
		$this->redirect('Login/index');
	}
}