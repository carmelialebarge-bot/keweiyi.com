<?php
namespace Home\Widget;
use Think\Controller;
class LinkWidget extends Controller{
	public function Link($lang){
		if(S('linksdata')){
			$this->links=S('linksdata');
		}else{
			$links=M('Link')->field('id,ename,name,eurl,url,sort')->order('sort')->select();
			$this->links=$links;
			S('linksdata',$links,3600 * 24);
		}
		
		 $this->display('Widget/'.$lang.'_link');
		
	}

}
?>