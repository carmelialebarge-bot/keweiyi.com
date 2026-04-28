<?php
namespace Manager\Widget;
use Think\Controller;

class ListhrefWidget extends Controller{

	public function listhref($url,$id,$link){
		if ($link!='') {
			$linkvar = (stripos($link,"http://")!== false) ? $link : __APP__.$link;
			return $linkvar;
		} else {
			if (C('URL_MODEL')==2) {
				if (!$url) {
				    $url=M('List')->where(array('id'=>$id))->getField('url');
				}
				return U('/'.$url);
			}else{
				return U('Home/List/index',array('id'=>$id));
			}
		}		
	}
	

}
?> 