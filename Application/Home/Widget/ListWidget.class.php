<?php
namespace Home\Widget;
use Think\Controller;
class ListWidget extends Controller{
	public function lists($table,$bid,$id,$featured,$tpl,$lang){
		
	$template=strtolower($table);
	if($featured==1){
		
		$where['featured']=array('eq',1);
		}elseif($tpl==0){
		 $where=1;
		}else{
		 $template=$template.$tpl;
		 $where=1;
		}
			

			$article=M($table)->where($where)->order('sort asc,id desc')->select();
			$this->$template=$article;
		    $this->pronum=C('INDEX_NUM');
		    $this->display('Widget/List/'.$lang.'_'.$template);
		
	}	
	
	
}
?>

