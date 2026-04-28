<?php

namespace Home\Controller;
class NewController extends CommonController{
	public function index(){
		$id=I('get.id','','intval');
		$this->getarticle($id,"id =%d",I('get.g'),'New');	
	}

	public function html(){
		$url=I('get.url');
		 $this->getarticle($url,"url ='%s'",I('get.g'),'New');
	}

	
	
	
}
?>