<?php
namespace Manager\Controller;
class DeltempController extends CommonController{
	public function index(){
		$this->info1= '<div class="alert alert-success" style="font-size:16px;margin:10px 10px 10px 10px;">';
		$this->info2=delDirAndFile(RUNTIME_PATH.'Temp');
		unlink(RUNTIME_PATH.'~runtime.php');
		$this->info3= '</div>';
		$this->display();
	}	
	
}
?>