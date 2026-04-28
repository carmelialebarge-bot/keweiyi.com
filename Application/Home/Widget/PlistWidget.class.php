<?php
namespace Home\Widget;
use Think\Controller;
class PlistWidget extends Controller{

	public function plist($id,$lang){
		   if(S('listdata')){
			  $this->plist=S('listdata');
		    }else{
	          $list=M('List');
			  $bwhere['pid']=array('eq',$id);
			  $bwhere['type']=array('eq','product');
			  $plist=$list->field("id,name,ename,url,pid,sort,link")->where($bwhere)->order('sort asc,id asc')->select();	
			  
              $this->plist=$plist;
				
			   S('listdata', $plist, 3600 * 24);
				}
	          $this->display('Widget/'.$lang.'_plist');
	
	
	}



}
?>

