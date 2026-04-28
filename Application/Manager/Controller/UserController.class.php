<?php
namespace Manager\Controller;
class UserController extends CommonController{
	public function index(){
		$this->user=M('User')->field('id,username')->select();
		$this->display();
	}

	public function add(){
		$this->display();
	}

	public function addUser(){
		if (IS_POST) {
			$db=D('User');
			if($data=$db->create()){
				if($db->data($data)->add()){
					$this->success('用户创建成功',U('User/index'));
				}else{
					$this->error('用户添加失败');
				}
			}else{
				$this->error($db->getError());
			}			
		}else{
			$this->error('非法操作！');
		}	
	}

	public function mod(){
		$id=I('get.id',0,'intval');
		$this->user=M('User')->field('id,username')->find($id);
		$this->display();
	}

	public function upUser(){
		if (IS_POST) {
			$db=D('User');
			if ($data=$db->create()) {
				if($data['password']==""){
					unset($data['password']);
				}else{
					$data['password']=md5($data['password']);
				}
				if ($db->data($data)->save()) {
					$this->success('用户修改成功',U('User/index'));
				}else{
					$this->error('用户修改失败或没有修改数据');
				}
			}else{
				$this->error($db->getError());
			}
		}else{
			$this->error('非法操作！');
		}
	}

	public function del(){
		$id=I('get.id',0,'intval');
		if ($id==$_SESSION['uid']) {
			$this->error('此用户正在登录中，不可以删除！');
		}
		if (M('User')->where('id ='.$id)->delete()) {
			if (!M('User')->find($_SESSION['uid'])) {
				session(null);
			}
			$this->success('删除用户成功');
		}else{
			$this->error('删除失败');
		}
	}



}
?>