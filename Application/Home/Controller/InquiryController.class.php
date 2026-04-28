<?php
namespace Home\Controller;
class InquiryController extends CommonController{
	public function index(){
		C('TOKEN_ON',true);
		$this->ordername=I('post.ordername','','htmlspecialchars');
		$template = (I('get.g')=='c') ? 'c_index' : 'e_index' ;
		$this->display($template);
	}
	
	public function check(){
		$lang=I('get.g');
		$code_msg = ($lang=='c') ? '验证码错误!' : 'Captcha error!' ;
		$success_msg=($lang=='c') ? '提交订单成功' : 'Send success' ;
		if (!IS_POST) {
			$this->error('非法提交!');die();
		}
//		$verify = new \Think\Verify();
//		$code=I('post.code');
//		$id = '';
//		if(!$verify->check($code, $id)){
//				$this->error($code_msg);
//			}
	
		$db=D('Inquiry');
		if($data=$db->create()){
			$data['product'] = I('post.product','','htmlspecialchars');
			$data['num'] = I('post.num','','htmlspecialchars');
			$data['name'] = I('post.name','','htmlspecialchars');
			$data['company'] = I('post.company','','htmlspecialchars');
			$data['add'] = I('post.add','','htmlspecialchars');
			$data['tel'] = I('post.tel','','htmlspecialchars');
			$data['fax'] = I('post.fax','','htmlspecialchars');
			$data['email'] = I('post.email','','htmlspecialchars');
			$data['contents'] = I('post.contents','','htmlspecialchars');
			$sendtitle= "订购：".$data['product']; 
			$sendcontents="<p>订购产品：".$data['product']."</p><p>订购数量：".$data['num']."</p><p>联系人：".$data['name']."</p><p>公司名称：".$data['company']."</p><p>联系地址：".$data['add']."</p><p>联系电话：".$data['tel']."</p><p>传真：".$data['fax']."</p><p>邮箱：".$data['email']."</p><p>详细内容：".$data['contents'];
			if($db->data($data)->add()){
				
			  if(C('IS_EMAIL')){
			  	switch (C('SEND_WAY')) {
			  		case '1':
			  		if ($this->smtpsendmail($sendtitle,$sendcontents)) {
			  			$this->success($success_msg);
			  		}else{
			  			$this->error('提交订单成功,但邮件发送失败!');
			  		}
			  			break;

			  		case '2':
			  		if ($this->mailfunction($sendtitle,$sendcontents)) {
			  			$this->success($success_msg.'!!');
			  		}else{
			  			$this->error('提交订单成功,但邮件发送失败!!');
			  		}
			  			break;

			  		case '3':
			  		$phpmailer=$this->phpmailersend($sendtitle,$sendcontents);
			  		if ($phpmailer===1) {
			  			$this->success($success_msg.'...');
			  		}else{
			  			$this->error('提交订单成功,但邮件发送失败：'.$phpmailer);
			  		}
			  			break;

			  		default:
			  			exit('邮件发送方式设置错误!');
			  			break;
			  	}
			  }else{
				$this->success('提交订单真的成功!');
			  }	
				
			}else{
				$this->error('错误：提交订单失败');
			}
		}else{
			$this->error($db->getError());	
		}		
	}



	
}
?>