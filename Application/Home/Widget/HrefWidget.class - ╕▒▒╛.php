<?php

namespace Home\Widget;
use Think\Controller;
class HrefWidget extends Controller{
	public function href($url,$id,$type,$lang){
		$cnenurl = ($lang=='c') ? C('CN_URL') : C('EN_URL') ;
		$types=strtolower($type);
		switch ($types) {
			case 'new':
				$seourl=($lang=='c') ? $cnenurl.'/'.C('NEW_URL') : C('NEW_URL');
				break;
			case 'download':
				$seourl=($lang=='c') ? $cnenurl.'/'.C('DOWN_URL') : C('DOWN_URL');
				break;
			case 'product':
				$seourl=($lang=='c') ? $cnenurl.'/'.C('PRO_URL') : C('PRO_URL');
				break;
			case 'photo':
				$seourl=($lang=='c') ? $cnenurl.'/'.C('PHO_URL') : C('PHO_URL');
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