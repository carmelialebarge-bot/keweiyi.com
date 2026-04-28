<?php
namespace Home\Widget;
use Think\Controller;
class OnlineWidget extends Controller{
	public function online($lang){
		$qq_name=explode(",",C('QQ_NAME'));
		$qq_account=explode(",",C('QQ_ACCOUNT'));
		$this->online_qq=array_combine($qq_name,$qq_account);
		
		$msn_name=explode(",",C('MSN_NAME'));
		$msn_account=explode(",",C('MSN_ACCOUNT'));
		$this->online_msn=array_combine($msn_name,$msn_account);
		$whatsapp_name=explode(",",C('WHATSAPP_NAME'));
		$whatsapp_account=explode(",",C('WHATSAPP_ACCOUNT'));
		$this->online_whatsapp=array_combine($whatsapp_name,$whatsapp_account);
		$skype_name=explode(",",C('SKYPE_NAME'));
		$skype_account=explode(",",C('SKYPE_ACCOUNT'));
		$this->online_skype=array_combine($skype_name,$skype_account);
		
		$this->online_taobao=explode(",",C('TAOBAO_ACCOUNT'));
		$this->online_1688=explode(",",C('1688_ACCOUNT'));
		
		$alibaba_name=explode(",",C('ALIBABA_NAME'));
		$alibaba_account=explode(",",C('ALIBABA_ACCOUNT'));
		$this->online_alibaba=array_combine($alibaba_name,$alibaba_account);
		$templates = ($lang=='c') ? 'c_online' : 'e_online' ;
	
		$this->display('Widget/'.$templates);
				
	}
	
	
}
?>