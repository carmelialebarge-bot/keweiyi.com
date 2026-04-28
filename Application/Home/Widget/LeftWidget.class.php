<?php
namespace Home\Widget;
use Think\Controller;
class LeftWidget extends Controller{

	public function left($id,$type,$tpl){
	          $list=M('List');
			  $bwhere['pid']=array('eq',$id);
			  $bwhere['type']=array('eq',$type);
			  $bigclass=$list->field("id,name,ename,url,pid,sort,link")->where($bwhere)->order('sort asc,id asc')->select();
			  foreach($bigclass as $k=>$vo){
			if($list->field('id')->where('pid ='.$vo['id'])->find()){
				$bigclass[$k]['snav']=1;
			}else{
				$bigclass[$k]['snav']=0;}
			}
			  //$data['bigclass']=$bigclass;
              $this->bigclass=$bigclass;
				//判断是否存在大类
				if($bigclass){
				  foreach ($bigclass as $k=>$v){
					  $allid.=$v[id].',';
				  }
				  $allid=rtrim($allid,",");
				  $where['pid']=array('in',$allid);
				  $smallclass=$list->field("id,name,ename,url,pid,sort,link")->where($where)->order('sort asc,id asc')->select();
				  //$data['smallclass']=$smallclass;
				  $this->smallclass=$smallclass;
				  //S('leftdata'.$data['id'], $data, 3600 * 24);
				}
	       $this->display('Widget/'.$tpl);
	
	
	}

}
?>