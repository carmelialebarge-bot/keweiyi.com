<?php
namespace Home\Controller;
class FeedbackController extends CommonController{
	public function index(){
		C('TOKEN_ON',true);
		$template = (I('get.g')=='c') ? 'c_index' : 'e_index' ;
		$condition['link']='/Feedback/';
		$list=M('List')->field('id,bid,url')->where($condition)->find();
		$this->catid=$list['bid'];
		$this->display($template);
	}
	
	public function check(){
		$lang=I('get.g');
		$code_msg = ($lang=='c') ? '验证码错误!' : 'Captcha error!' ;
		$success_msg=($lang=='c') ? '留言成功' : 'Message success' ;
		if(IS_POST){
//			$verify = new \Think\Verify();
//			$code=I('post.code');
//			$id = '';
//			if(!$verify->check($code, $id)){
//				$this->error($code_msg);
//			}
			
			$db=D('Feedback');
			if($data=$db->create()){	
			  $data['title'] = I('post.title','','htmlspecialchars');
			  $data['name'] = I('post.name','','htmlspecialchars');
			  $data['tel'] = I('post.tel','','htmlspecialchars');
			  $data['email'] = I('post.email','','htmlspecialchars');
			  $data['add'] = I('post.add','','htmlspecialchars');
			  $data['contents'] = I('post.contents','','htmlspecialchars');
			  $sendcontents="<p>留言标题：".$data['title']."</p><p>联系人：".$data['name']."</p><p>联系电话：".$data['tel']."</p><p>邮箱：".$data['email']."</p><p>联系地址：".$data['add']."</p><p>留言内容：".$data['contents'];
			  if($db->data($data)->add()){
				  
				  if(C('IS_EMAIL')){
				  	switch (C('SEND_WAY')) {
				  		case '1':
				  		if ($this->smtpsendmail($data['title'],$sendcontents)) {
				  			$this->success($success_msg);
				  		}else{
				  			$this->error('留言成功,但邮件发送失败!');
				  		}
				  			break;

				  		case '2':
				  		if ($this->mailfunction($data['title'],$sendcontents)) {
				  			$this->success($success_msg.'!!');
				  		}else{
				  			$this->error('留言成功,但邮件发送失败!!');
				  		}
				  			break;

				  		case '3':
				  		$phpmailer=$this->phpmailersend($data['title'],$sendcontents);
				  		if ($phpmailer===1) {
				  			$this->success($success_msg.'...');
				  		}else{
				  			$this->error('留言成功,但邮件发送失败：'.$phpmailer);
				  		}
				  			break;

				  		default:
				  			exit('邮件发送方式设置错误!');
				  			break;
				  	}
				  }else{
					  $this->success($success_msg);
				  }
				  	  
			   }else{
				  $this->error('错误：留言失败!');  
			   }	
			}else{
			  $this->error($db->getError());
			}
		}else{
			$this->error('非法提交');	
		}		
	}


	
	
}
?>