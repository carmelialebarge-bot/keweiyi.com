<?php
namespace Manager\Controller;
class InsideController extends CommonController{
	public function index(){
		$db=M('Inside');
		
		$count=$db->count();
		$page=new \Think\Page($count,20);
		$this->show=$page->show();
		$this->inside=$db->field('id,keyword,url,number')->limit($page->firstRow.','.$page->listRows)->select();
		$this->display();
	}

	public function add(){
		$this->display();
	}

	public function addInside(){
		$db=D('Inside');
		if ($data=$db->create()) {
			if ($db->data($data)->add()) {
				$this->success('添加内链成功',U('Inside/index'));
			} else {
				$this->error('添加内链失败');
			}
			
		} else {
			$this->error($db->getError());
		}	
	}

	public function mod(){
		$id=I('get.id',0,'intval');
		$this->inside=M('Inside')->field('id,keyword,ekeyword,url,eurl,number')->find($id);
		$this->display();
	}

	public function upInside(){
		$db=D('Inside');
		if ($data=$db->create()) {
			if ($db->data($data)->save()) {
				$this->success('内链修改成功',U('Inside/index'));
			} else {
				$this->error('修改失败或没有数据被修改');
			}
			
		} else {
			$this->error($db->getError());
		}	
	}
	

	//删除
	public function del(){
			$id=I('get.id',0,'intval');
		if(M('Inside')->where('id='.$id)->delete()){
			$this->success('删除成功');
		}else{
			$this->error('删除失败');	
		}
	}

}
?>