<?php
namespace Manager\Controller;
class ConfigController extends CommonController{
	public function index(){
		$this->display();
	}
	
	public function upconfig(){
		if(IS_POST){
			if($_FILES['web_logo']['name']<>"" ||$_FILES['web_logo1']['name']<>"" ||$_FILES['web_logo2']['name']<>"" || $_FILES['web_qrcode']['name']<>"" ||$_FILES['web_logo3']['name']<>"" ||$_FILES['web_logo4']['name']<>""){
				$info=$this->uploadimg();
				 $num=count($info);
				for ($i=0; $i<$num; $i++) {
                     $_POST[$info[$i]['key']]=$info[$i]['savename'];
                 } 
			}
			if (get_magic_quotes_gpc()) {
				$_POST['web_count'] = stripslashes($_POST['web_count']) ;
				$_POST['web_share'] = stripslashes($_POST['web_share']) ;
			}
			
			if($this->setconfig($_POST,'./user.php')){
				$this->success('修改成功',U('Config/index'));
			}else{
				$this->error('修改失败');
			}
		}else{
			$this->error('非法操作');
		}
	}
	
	public function dellogo(){
		$name=I('name');
		$type=I('type');
		switch ($type) {
			case 'logo':
				$array=array('WEB_LOGO'=>'');
				break;
            case 'logo1':
				$array=array('WEB_LOGO1'=>'');
				break;
            case 'logo2':
				$array=array('WEB_LOGO2'=>'');
				break;
			case 'logo3':
				$array=array('WEB_LOGO3'=>'');
				break;
			case 'logo4':
				$array=array('WEB_LOGO4'=>'');
				break;
			case 'water':
				$array=array('WATER_LOGO'=>'');
				break;
			default:
				$array=array('WEB_QRCODE'=>'');
				break;
		}
		if($this->setconfig($array,'./user.php')){
			if(delimg('./Uploads/'.$name)){
				$this->success('删除成功');
			}else{
				$this->success('数据删除成功，但找不到要删除的图片');
			}
		}else{
			$this->error('删除失败');
		}
	}
	
	public function water(){
		$this->display();
	}

	public function savewater(){
		$alpha=I('post.water_alpha',0,'intval');
		if ($alpha < 0 || $alpha > 100) {
			$this->error('请填0-100之间的整数');
		}
		if ($_POST['num']) {
			$info=$this->uploadimg();
			$_POST['water_logo']=$info[0]['savename'];
			unset($_POST['num']);
		}
		$_POST['water_alpha']=$alpha;
		if($this->setconfig($_POST,'./user.php')){
			$this->success('设置成功',U('Config/water'));
		}else{
			$this->error('设置失败');
		}	
	}

	public function setstatic(){
		$arrs=include'./static.php';
		$this->statics=$arrs;
		$this->display();
	}

	public function savestatic(){
		if (IS_POST) {
			foreach ($_POST as $v) {
				if (!preg_match('/^[a-zA-Z0-9-_]{1,200}$/i',$v)) {
					$this->error('必须是1位以上的字母，数字，下划线或-');
				}
			}
			$_POST['search']="search";
			$_POST['feedback']="feedback";
			$_POST['inquiry']="inquiry";
			$array=array_map("strtolower", $_POST);
			if (count($array) != count(array_unique($array))) {
				$this->error('不能有重复值，不能使用search,feedback,inquiry');
			}
			unset($_POST['search']);
			unset($_POST['feedback']);
			unset($_POST['inquiry']);
			if ($this->setconfig($_POST,'./static.php')) {
				$this->success('设置成功',U('Config/setstatic'));
			} else {
				$this->error('设置失败');
			}		
		}
	}



	
}
?>