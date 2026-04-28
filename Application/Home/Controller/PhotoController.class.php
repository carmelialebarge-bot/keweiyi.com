<?php

namespace Home\Controller;
class PhotoController extends CommonController{
	public function index(){
		$id=I('get.id','','intval');
		$this->doPho($id,"id =%d");
	}

	public function html(){
		$url=I('get.url');
		$this->doPho($url,"url ='%s'");
	}

	protected function doPho($var,$where){
		$db=M('Photo');
		$photodata=$db->field('id,pid,bid,name,title,keywords,description,photo,contents')->where($where,array($var))->order('sort')->find();
		if ($photodata) {
			$photodata['contents']=$this->doInside($photodata['contents']);
			$this->related=$db->field('id,name,description,url,thumb')->where("pid = $photodata[pid] and id <> $photodata[id]")->select();			
			if(!empty($photodata['photo'])){
				$this->photo=explode(',',$photodata['photo']);
			}
			$this->photolist=M('list')->field('id,pid,bid,type,name')->find($photodata[pid]);
		} else {
			$this->_empty();
			exit;
		}
		$this->prevnext=$this->prevnext('Photo',$photodata[id],'name','个');
		$this->photodata=$photodata;
		$this->display('index');
	}
	
	public function tags(){
		$this->doTags('Photo');
	}
		

}
?>