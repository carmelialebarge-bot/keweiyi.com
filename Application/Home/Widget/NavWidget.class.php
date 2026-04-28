<?php
namespace Home\Widget;
use Think\Controller;
class NavWidget extends Controller{
	public function nav($lang){

		if(S('navdata')){
			$this->nav=S('navdata');
            $this->snav=S('snavdata');
			$this->ssnav=S('ssnavdata');
		}else{
			$n=M('List');
			$nav=$n->field('id,bid,name,ename,url,pid,type,link')->where('pid=0 and nav=1')->order('sort asc')->select();
			foreach($nav as $k=>$vo){
			if($n->field('id')->where('pid ='.$vo['id'].' and nav=1')->find()){
				$nav[$k]['snav']=1;
			}else{
				$nav[$k]['snav']=0;}
			}
			$this->nav=$nav;
			S('navdata',$nav,3600 * 24);
			if($nav){
				$snav=$n->field('id,name,ename,url,pid,type,link')->where('pid != 0 and nav=1')->order('sort asc')->select();
				foreach($snav as $k=>$vo){
			if($n->field('id')->where('pid ='.$vo['id'].' and nav=1')->find()){
				$snav[$k]['snav']=1;
			}else{
				$snav[$k]['snav']=0;}
			}
				$this->snav=$snav;
				S('snavdata',$snav,3600 * 24);
			}
           if($snav){
				$ssnav=$n->field('id,ename,name,url,pid,type,link')->where('pid != 0 and nav=1')->order('sort asc')->select();
				
				$this->ssnav=$ssnav;
				S('ssnavdata',$ssnav,3600 * 24);
			}

		}
		 $this->display('Widget/'.$lang.'_nav');
		
	}


}
?>