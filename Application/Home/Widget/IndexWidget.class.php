<?php
namespace Home\Widget;
use Think\Controller;
class IndexWidget extends Controller{

	public function index($cnen,$lang){
		
		$seourl = ($lang=='c') ? C('CN_URL') : C('EN_URL') ;
		if (C('URL_MODEL')==0) {
			return U('Index/index',array('g'=>$lang));
		}

		return U('/'.$seourl .'/index');
		
	}
}
?>
