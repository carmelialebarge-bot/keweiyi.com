<?php
namespace Manager\Controller;
class NewController extends CommonController{
	public function index(){
		$db=M('New');
		
		$count=$db->count();
		$page=new \Think\Page($count,20);
		$this->show=$page->show();
		$this->news=$db->order('sort asc,id desc')->limit($page->firstRow.','.$page->listRows)->select();
		$this->list=recursive(M('List')->field('id,pid,name,type')->where("type = 'new'")->order('sort')->select());
		$this->display();	
	}

	public function add(){
		$this->list=recursive(M('List')->field('id,pid,name,type')->where("type='new'")->order('sort')->select());
		//$count=M('New')->count();
		//$this->sort=$count+1;
		$this->display();
	}
	
	public function mod(){
		$this->list=recursive(M('List')->field('id,pid,name,type')->where("type='new'")->order('sort')->select());
		$this->news=M('New')->find(I('get.id',0,'intval'));
		$this->display();	
	}
	
	//修改新闻
	public function updatenew(){
		$db=D('New');
		//$_POST['url'] = ($_POST['url']!="") ? preg_replace('/[\s]+/', '-', $_POST['url']) : 'new-'.rand(0,9).'-'.rand(0,99);
		$_POST['url']=getSeoUrl('new',$_POST['url']);
		if($data=$db->create()){
			$data['bid']=$this->getbigid($data['pid']);
			if($db->data($data)->save()){
				$this->success('修改新闻成功',U('New/index'));
			}else{
				$this->error('修改失败或没修改数据');
			}
		}else{
			$this->error($db->getError());
		}
	}
	
	//添加新闻
	public function savenew(){
		$db=D('New');
		$_POST['url']=getSeoUrl('new',$_POST['url']);
		if($data=$db->create()){
			$data['bid']=$this->getbigid($data['pid']);
			if($db->data($data)->add()){
				$this->success('添加新闻成功',U('New/index'));
			}else{
				$this->error('添加失败');	
			}
		}else{
			$this->error($db->getError());	
		}
	}
	
	//删除新闻
	public function del(){
		$id=I('get.id',0,'intval');
		if($id){
			if(M('New')->where('id='.$id)->delete()){
				$this->success('删除成功');
			}else{
				$this->error('删除失败');	
			}
		}else{
			$this->error('非法操作');	
		}
	}
	
	//更新排序
	public function uporder(){
		$this->getSort('New');
	}

	//全选删除
	public function delall(){
		if (IS_POST) {
			if (I('dell')=="") {
				$this->error('您未选择任何数据');
			}
			$ids=implode(",", $_POST['dell']);
			$where['id']=array('in',$ids);
			if (M('New')->where($where)->delete()) {
				$this->success('删除成功');
			} else {
				$this->error('删除失败');
			}		
		} else {
			$this->error('非法请求');
		}
	}

	//搜索新闻
	public function seach(){
		$this->getSearch('new','title','news');
	}

}
?>