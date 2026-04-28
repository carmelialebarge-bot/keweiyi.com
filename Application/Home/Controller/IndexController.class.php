<?php
namespace Home\Controller;

class IndexController extends CommonController{
    public function index(){
	if ($this->lang) {
    		$_template = ($this->lang=='c') ? 'c_index' : 'e_index' ;
    	}else{
    		$_template = (C('CNEN')=='cn') ? 'c_index' : 'e_index' ;
    	}
   $this->about=M('List')->field('contents,econtents')->find(25);
   $this->display($_template);
    }
}
?>