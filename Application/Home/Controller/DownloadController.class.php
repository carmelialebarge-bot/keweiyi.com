<?php
namespace Home\Controller;
class DownloadController extends CommonController{
	public function index(){
		$id=I('get.id',0,intval);
		$this->getarticle($id,"id =%d",I('get.g'),'Download');	
		
	}

	public function html(){
		$url=I('get.url');
        $this->getarticle($url,"url ='%s'",I('get.g'),'Download');
		
	}

}
?>