<?php
namespace Manager\Controller;
class InquiryController extends CommonController{
	public function index(){
		$db=M('Inquiry');
		
		$count=$db->count();
		$page=new \Think\Page($count,5);
		$this->show=$page->show();
		
		$this->inquiry=$db->field('id,product,time')->order('time desc')->limit($page->firstRow.','.$page->listRows)->select();
		
		$this->display();
	}
	
	public function view(){
		$id=I('get.id',0,'intval');
		$this->inquiry=M('Inquiry')->field('id,product,num,name,company,add,tel,fax,email,contents,time')->find($id);
		$this->display();
	}
	
	public function del(){
		$id=I('get.id',0,'intval');
		
		$db=M('Inquiry');
		if($db->where(array('id'=>$id))->delete()){
			$this->success('删除订单成功',U('Inquiry/index'));
		}else{
			$this->error('删除失败');
		}
	}
	
	public function alldel(){
		$model = M("Inquiry");
		$model->execute('delete from __TABLE__ ');
		$this->redirect('index');
	}
	
	
	
	
	
}
?>