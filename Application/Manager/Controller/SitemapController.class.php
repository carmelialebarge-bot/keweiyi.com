<?php

namespace Manager\Controller;
class SitemapController extends CommonController{
	

	public function index(){
		
		
		$this->display('success');
		
	}

	public function baidu(){
		$this->display('baidu');
	}

	public function google(){
		$this->display('google');
	}

	

}
?>