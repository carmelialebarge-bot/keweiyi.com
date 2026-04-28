<?php
namespace Manager\Controller;
class ListController extends CommonController{
	public function index(){
		$list=M('List')->field('id,name,ename,pid,sort,type,nav')->order('sort')->select();
		$this->list=recursive($list);
		$this->display();
	}
	
	
	public function addlist(){
		$this->pid=I('get.pid',0,'intval');
		$this->type=I('get.type');
		$tid=I('get.tid',0,'intval');
		$topname=array(1=>'顶级栏目',2=>'单页',3=>'链接');
		if (isset($tid)) {
			$name=$topname[$tid];
		}
		if ($this->pid != 0) {
			$name=M('List')->where(array('id'=>$this->pid))->getField('name');
		}
		$this->name=$name;
		$this->display();
	}
	
	
	public function savelist(){
		$list=D('List');
		if ($_POST['type']=='link') {
			$_POST['url'] = (strtolower($_POST['link'])=="/feedback/" || strtolower($_POST['link'])=="/inquiry/") ? preg_replace('/\/+/', '', $_POST['link']) : 'list-'.rand(0,9).'-'.rand(0,99);
		} else {
			$_POST['url'] = ($_POST['url']!="") ? preg_replace('/[\s]+/', '-', $_POST['url']) : 'list-'.rand(0,9).'-'.rand(0,99);
		}
		
		if($data=$list->create()){
			if ($data['pid']!=0) {
				$data['bid']=$this->getbigid($data['pid']);
			}
			if($result=$list->data($data)->add()){
				if ($data['pid']==0) {
					$list->where(array('id'=>$result))->setField('bid',$result);
				}
				$this->success('添加栏目成功',U('List/index'));
			}else{
				$this->error('添加失败');
			}
		}else{
			$this->error($list->getError());
		}	
	}
	
	
	public function mod(){
        $list=D('List')->find(I('get.id',0,'intval'));
		$condition['type']='product';
	
		$condition['bid']=intval($list['bid']);
		$this->cate=recursive(M('List')->where($condition)->order('sort')->select());
		$this->type=I('get.type');
		$this->list=$list;
		$this->display();
	}
	
	
	public function updatelist(){
		if (IS_POST) {
			$list=D('List');
			if ($_POST['type']=='link') {
				//$_POST['url'] = (stripos($_POST['link'],"http://")!== false) ? '' : preg_replace('/\/+/', '', $_POST['link']);
				$_POST['url'] = (strtolower($_POST['link'])=="/feedback/" || strtolower($_POST['link'])=="/inquiry/") ? preg_replace('/\/+/', '', $_POST['link']) : 'list-'.rand(0,9).'-'.rand(0,99);
			} else {
				$_POST['url'] = ($_POST['url']!="") ? preg_replace('/[\s]+/', '-', $_POST['url']) : 'list-'.rand(0,9).'-'.rand(0,99);
			}

			if($_POST['id']==$_POST['pid'] || $_POST['id']==$list->getFieldById(intval($_POST['pid']),'pid') ){$this->error('类别逻辑错误');}
			if($data=$list->create()){
				$data['bid']=$this->getbigid($data['id']);
				if($list->data($data)->save()){
					$this->success('修改成功',U('List/index'));
				}else{
					$this->error('修改失败或没有数据被修改');
				}
			}else{
				$this->error($list->getError());
			}
		}
	}
	
	
	public function uporder(){
		$this->getSort('List');
	}
	
	
	public function dellist(){
		$id = I('get.id',0,'intval');
		$db = M('List');
		$cateid = $db->field(array('id', 'pid'))->select();
		$delid = get_all_child($cateid, $id);
		$delid[] = $id;

		$where = array('id' => array('IN', $delid));

		if (!$db->where($where)->delete()) {
			$this->error('删除失败');
		}

		$this->success('删除成功',U('List/index'));	
	}
	
	
	
}
?>