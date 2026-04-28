<?php

namespace Home\Widget;
use Think\Controller;
class HrefWidget extends Controller{
	public function href($url,$id,$type,$lang){
		$cnenurl = ($lang=='c') ? C('CN_URL') : C('EN_URL') ;
		$types=strtolower($type);
		switch ($types) {
			case 'new':
				$seourl=$cnenurl.'/'.C('NEW_URL');
				break;
			case 'download':
				$seourl=$cnenurl.'/'.C('DOWN_URL');
				break;
			case 'product':
				$seourl=$cnenurl.'/'.C('PRO_URL');
				break;
			case 'photo':
				$seourl=$cnenurl.'/'.C('PHO_URL');
				break;
			default:
				break;
		}
		if (C('URL_MODEL')==2) {
			return U('/'.$seourl.'/'.$url);
		}else{
			return U($types.'/index',array('g'=>$lang,'id'=>$id));
		}
		
	}

}
?> 