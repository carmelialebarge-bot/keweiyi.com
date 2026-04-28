<?php
namespace Home\Widget;
use Think\Controller;
class FlashWidget extends Controller{
	public function flash(){
		if(S('flashdata')){
			$this->flash=S('flashdata');
		}else{
			$flash=M('Flash')->field('id,title,sort,link,photo')->order('sort')->select();
			$this->flash=$flash;
			S('flashdata',$flash,3600 * 24);
		}
		
		
		$this->display('Widget/flash');
	}

}
?>