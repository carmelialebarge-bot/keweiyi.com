<?php

namespace Manager\Controller;
class TagsController extends CommonController{
	
	public function index(){
		$type=I('get.type');
		if ($type) {
			$where['type']=array('eq',$type);
		} 
		$db=M('Tags');
		
		$count=$db->where($where)->count();
		$page=new \Think\Page($count,20);
		$this->show=$page->show();
		$this->tags=$db->field('id,name,type,sort')->where($where)->order('sort')->limit($page->firstRow.','.$page->listRows)->select();
		$this->display();
	}

	public function add(){
		$this->display();
	}

	public function mod(){
		$id=I('get.id',0,'intval');
		$this->tags=M('Tags')->field('id,name,type,sort')->find($id);
		$this->display();
	}

	public function addTags(){
		$db=D('Tags');
		if ($data=$db->create()) {
			if ($db->data($data)->add()) {
				$this->success('标签添加成功',U('Tags/index'));
			} else {
				$this->error('添加失败');
			}
		} else {
			$this->error($db->getError());
		}
	}

	public function updateTags(){
		$db=D('Tags');
		if ($data=$db->create()) {
			if ($db->data($data)->save()) {
				$this->success('标签修改成功',U('Tags/index'));
			} else {
				$this->error('修改失败或没有修改数据');
			}
		} else {
			$this->error($db->getError());
		}
	}

	//删除
	public function del(){
		$id=I('get.id',0,'intval');
		if(M('Tags')->where('id='.$id)->delete()){
			$this->success('删除成功');
		}else{
			$this->error('删除失败');	
		}
	}

	//更新排序
	public function uporder(){
		$this->getSort('Tags');
	}

}
?>