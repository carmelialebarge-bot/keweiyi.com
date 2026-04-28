<?php
namespace Home\Widget;
use Think\Controller;

class BreadWidget extends Controller{

	public function Bread($id,$lang,$ext=''){

	   return $this->now_here($id,$lang,$ext);
		
      }

	protected function now_here($id,$lang,$ext=''){
	 $cat = M("List");
	 $here = ($lang=='c') ? '<a href="'.W('Index/Index',array('cnen'=>'cn','lang'=>'c')).'">首页</a>' : '<a href="'.W('Index/Index',array('cnen'=>'en','lang'=>'e')).'">Home</a>' ;
	 $name = ($lang=='c') ? 'name' : 'ename' ;
	 $uplevels = $cat->field("id,name,ename,pid")->where("id=$id")->find();
	
	 if($uplevels['pid'] != 0)
	 $here .= $this->get_up_levels($uplevels['pid'],$lang);
	 
	 $here .= '<span class="navigation-pipe"> /</span> <a href="'.W('Listhref/Listhref',array('',$uplevels['id'],'',$lang)).'">'.$uplevels[$name]."</a>";
	 if($ext != '') $here .= ' <span class="navigation-pipe"> /</span> '.$ext;
	 return $here;
	}
	protected function get_up_levels($id,$lang){
	 $cat = M("List");
	 $name = ($lang=='c') ? 'name' : 'ename' ;
	 $here = '';
	 $uplevels = $cat->field("id,name,ename,pid")->where("id=$id")->find();
	 $here .= ' <span class="navigation-pipe"> /</span> <a href="'.W('Listhref/Listhref',array('',$uplevels['id'],'',$lang)).'">'.$uplevels[$name]."</a>";
	 if($uplevels['pid'] != 0){
	  $here = $this->get_up_levels($uplevels['pid'],$lang).$here;
	 }
	 return $here;
	}
	

}
?> 