<?php
namespace Home\Widget;
use Think\Controller;

class ListhrefWidget extends Controller{

	public function listhref($url,$id,$link,$lang){
		$seourl = ($lang=='c') ? C('CN_URL') : C('EN_URL') ;
		if (!empty($link)) {
			if ($link=='/Inquiry/' || $link=='/Feedback/') {
				if($seourl==C('CN_URL')){$linkvar = (C('URL_MODEL')==2) ? U('/'.$seourl.$link) : U($link.'index',array('g'=>$lang));}else{
				$linkvar = (C('URL_MODEL')==2) ? U($link) : U($link.'index',array('g'=>$lang));}
			} else {
				$linkvar = (stripos($link,"http://")!== false) ? $link : __ROOT__.$link ;
			}
			return $linkvar;
		} else {
			if (C('URL_MODEL')==2) {
				if (empty($url)) {
				    $url=M('List')->where(array('id'=>$id))->getField('url');
				}
				if($seourl==C('CN_URL')){return U('/'.$seourl .'/'.$url);}else{
				return U('/'.$url);}
			}else{
				return U('List/index',array('g'=>$lang,'id'=>$id));
			}
		}		
	}
}
?> 