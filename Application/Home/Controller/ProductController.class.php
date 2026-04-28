<?php

namespace Home\Controller;
class ProductController extends CommonController{
	public function index(){
		$id=I('get.id','','intval');
		$this->getarticle($id,"id =%d",I('get.g'),'Product');	
	}

	public function html(){
			$url=I('get.url');
		    $this->getarticle($url,"url ='%s'",I('get.g'),'Product');
	}

}
?>