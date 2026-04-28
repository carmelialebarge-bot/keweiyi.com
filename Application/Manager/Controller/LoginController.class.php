<?php
namespace Manager\Controller;
use Think\Controller;
class LoginController extends Controller{

	public function index(){
		$this->display();	
	}

	public function checkLogin(){
	
		header("Content-Type:text/html; charset=utf-8");
		$verify = new \Think\Verify();
			$code=I('post.code');
				
			$id = '';
			if(!$verify->check($code, $id)){
				$this->error('验证码错误！');
			}
		
		if(IS_POST){
			$db=M('User');
			$where['username']=array('eq',$_POST['username']);
			$where['password']=array('eq',I('post.password','','md5'));
			$where['_logic'] = 'and';
			$result=$db->where($where)->find();
			if(!$result){
				$this->error('用户名或密码错误！');
			}else{
				session('uid',$result['id']);
				session('uname',$result['username']);
					
				redirect(__MODULE__);
			}	
		}else{
			$this->error('非法操作');		
		}	
	}

	public function verify(){
		$config =    array(
        'fontSize'    =>    14,    // 验证码字体大小
        'length'      =>    4,     // 验证码位数
		'imageW'      =>    100,
		'imageH'      =>    30,
		
        'useNoise'    =>    false, // 关闭验证码杂点
        );

		$Verify=new \Think\Verify($config);
		$Verify->codeSet = '0123456789';
		
		$Verify->entry();
	}
	
	
	protected function setconfig($array,$file){
		$config=array_merge(include $file , array_change_key_case($array,CASE_UPPER));
		$str = "<?php\r\nreturn " . var_export($config, true) . ";\r\n?>";
		if(file_put_contents($file,$str)){
			return true;
		}else{
			return false;
		}
	}

}
?>