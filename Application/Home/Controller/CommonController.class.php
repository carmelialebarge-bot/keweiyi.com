<?php
namespace Home\Controller;
use Think\Controller;

class CommonController extends Controller{
	public function _initialize(){
		header("Content-Type:text/html; charset=utf-8");
		 $this->lang = I('get.g');
	}
	
	//上一个下一个
	protected function prevnext($table,$id,$name,$text,$lang){
		if ($lang=='c') {
			$noprevmsg='没有上一'.$text;
			$prevmsg='上一'.$text;
			$nonextmsg='没有下一'.$text;
			$nextmsg='下一'.$text;
		} else {
			
			$noprevmsg='No previous';
			$prevmsg='PREVIOUS';
			$nonextmsg='No next';
			$nextmsg='NEXT';
		}
		
		$db=M($table);
		$p=$db->field("id,url,{$name}")->where('id<'.$id)->order('id desc')->limit(1)->find();
		$prev=!$p? $noprevmsg : $prevmsg.'：<a href="'.W('Href/Href', array('url' => $p['url'], 'id' => $p['id'], 'type' => $table, 'lang' => $lang), true).'">'.$p[$name].'</a>';
		
		$n=$db->field("id,url,{$name}")->where('id>'.$id)->order('id asc')->limit(1)->find();
		$next=!$n? $nonextmsg : $nextmsg.'：<a href="'.W('Href/Href', array('url' => $n['url'], 'id' => $n['id'], 'type' => $table, 'lang' => $lang), true).'">'.$n[$name].'</a>';
		
		$prevnext=array('prev'=>$prev,'next'=>$next);
		return $prevnext;
	}
	
	//验证码
	public function verify(){

		$config =    array(
        'fontSize'    =>    12,    // 验证码字体大小
        'length'      =>    4,     // 验证码位数
        'useNoise'    =>    false, // 关闭验证码杂点
        );

		$Verify=new \Think\Verify($config);
		$Verify->codeSet = '0123456789';
		$Verify->entry();
//		import('ORG.Util.Image');
//		Image::buildImageVerify();
	}
	
	//标签
	protected function doTags($table){
		//$name=$this->_get('name','trim');
		//$name = urldecode($name);
		$id=$this->_get('id','intval');
		$name=M('Tags')->where(array('id'=>$id))->getField('name');
		if (!$name) {
			$this->error('非法参数');
		}
		$types=strtolower($table);

		$db=M($table);
		$where=" title like '%%%s%%' or description like '%%%s%%' ";

		import('@.Org.Page');
		$count=$db->where($where,array($name,$name))->count();
		$pageurl = (C('URL_MODEL')==2) ? $types.'_tags_'.$id : '' ;
		$page=new Page($count,10,'',$pageurl);
		$prevs= (C('CNEN')=='cn') ? '上一页' : 'Previous' ;
		$nexts= (C('CNEN')=='cn') ? '下一页' : 'Next' ;
		$page->setConfig('prev',$prevs);
		$page->setConfig('next',$nexts);
		$page->setConfig('theme',"%upPage% %linkPage% %downPage%");
		$this->show=$page->show();
		$this->article=$db->field('id,title,url,description')->where($where,array($name,$name))->limit($page->firstRow.','.$page->listRows)->select();

		$this->name=$name;
		$this->type=$table;
		$this->display('Tags:tag');
	}

	//内链
	protected function doInside($array, $lang)
    {
        $indb = M('Inside');
        $indata = $indb->field('id,keyword,ekeyword,url,eurl,number')->select();
        $skey = $lang == 'c' ? 'keyword' : 'ekeyword';
        $surl = $lang == 'c' ? 'url' : 'eurl';
        foreach ($indata as $key => $value) {
            $array = preg_replace('#' . $value[$skey] . '#i', "<a href=" . $value[$surl] . " target='_blank'>" . $value[$skey] . "</a>", $array, $value['number']);
        }
        return $array;
    }
	public function down(){
	  $name=I('get.name');
	  $path='./Uploads/download/';
	  
	  if(is_file($path.$name)){
		header('Content-Disposition: attachment; filename="'.$name.'"');
		header('Content-Length:'.filesize($path.$name));
		readfile($path.$name);
	  }else{
		$this->error('找不到此文件或此文件已被删除',__ROOT__.'/');  
	  }
	}



	protected function smtpsendmail($title,$contents){
		import('@.Org.Email');
		$smtpserver = C('EMAIL_HOST');                //SMTP服务器
		$smtpserverport =C('EMAIL_PORT');           //SMTP服务器端口
		$smtpusermail = C('EMAIL_USERNAME');   //用户邮箱
		$smtpemailto = C('EMAIL_TO');                   //发送给谁
		$smtpuser = C('EMAIL_USERNAME');         //帐号
		$smtppass = C('EMAIL_PASSWORD');       //密码
		$mailsubject = $title;                                    //标题
		$mailbody = $contents;
		$mailtype = "HTML";
		$smtp = new \smtp($smtpserver,$smtpserverport,true,$smtpuser,$smtppass);//这里面的一个true是表示使用身份验证,否则不使用身份验证.
		$smtp->debug = true;       //是否显示发送的调试信息
		if ($smtp->sendmail($smtpemailto, $smtpusermail, $mailsubject, $mailbody, $mailtype)) {
			return true;
		}else{
			return false;
		}
	}

	protected function mailfunction($title,$contents){
		$to = C('EMAIL_TO');                                                     //发送给谁 
		$subject = "=?UTF-8?B?".base64_encode($title)."?=";  //标题,防止乱码
		$message = $contents;                                                 //发送给谁
		$headers = 'MIME-Version: 1.0' . "\r\n"; 
		$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n"; //Additional headers 
		$headers .= 'Reply-To: '.C('EMAIL_FROMNAME').'<'.C('EMAIL_USERNAME').'>' . "\r\n"; 
		$headers .= 'From: '.C('EMAIL_FROMNAME').'<'.C('EMAIL_USERNAME').'>' . "\r\n"; 
		if (mail($to,$subject,$message,$headers)) {
			 return true;
		} else {
			return false;
		}
	}

	protected function phpmailersend($title,$contents){
		  import('@.Org.Phpmailer');
		  try { 
		    $mailer = new \PHPMailer();
                    $mailer->CharSet = 'utf-8';
                    $mailer->ContentType = 'text/html'; // 设置内容类型为html,这样charset才能发挥作用
                    $mailer->Encoding = 'base64';       // 防止服务器中继时,服务器能接收的编码不一致,带来问题.
                    $mailer->From =C('EMAIL_USERNAME');
                    $mailer->FromName = C('EMAIL_FROMNAME');
                    $mailer->Subject = $title;
                    $mailer->Body = $contents;
                    $mailer->SetLanguage('zh_cn');
                    $mailer->IsSMTP();
                    $mailer->Host = C('EMAIL_HOST');
                    $mailer->SMTPAuth = true;
                    $mailer->Username = C('EMAIL_USERNAME');
                    $mailer->Password = C('EMAIL_PASSWORD');
                    $mailer->AddReplyTo(C('EMAIL_USERNAME'),C('EMAIL_USERNAME'));//回复地址 
                    $to = C('EMAIL_TO');
                    $mailer->AddAddress($to,'teacher');
                    $mailer->WordWrap = 120; // 设置每行字符串的长度 
		    $mailer->IsHTML(true); 
	            $mailer->Send(); 
			  return 1;
		  } catch (phpmailerException $e) { 
			  return $e->errorMessage();
		  }
	}
	
	protected function getarticle($var,$where,$lang,$table){

	 if ($table=='New' || $table=='Download') { 
		 $fname = ($lang=='c') ? 'title' : 'etitle' ; 
		 $relafield='id,url,title,etitle,time'; 
		 } else { 
			 $fname = ($lang=='c') ? 'name' : 'ename' ; 
			 $relafield='id,name,ename,description,edescription,url,thumb'; 
			 } 
			 $db=M($table); 
			 $article=$db->field('sort',true)->where($where,array($var))->find(); 
			 if ($article) { 
				 if ($lang=='c') { 
					 $article['contents']=$this->doInside($article['contents'],'c'); 
					 } else { $article['econtents']=$this->doInside($article['econtents'],'e'); 
					 } 
		 $this->related=$db->field($relafield)->where("pid = ".$article['pid']." and id <> ".$article['id'])->select(); if(!empty($article['photo'])){ 
			 $this->photo=explode(',',$article['photo']); 
			 } 
			 $articlelist=M('list')->field('id,pid,bid,type,name,ename')->find($article['pid']); 
			$this->articlelist=$articlelist;
			$this->catid=$articlelist['bid'];
			 }else{ $this->_empty(); exit; 
			 } 
			 $this->prevnext=$this->prevnext($table,$article['id'],$fname,'个',$lang); 
			 $this->article=$article; 
			 $template = ($lang=='c') ? 'c_index' : 'e_index' ; 
			 $this->display($template);
			 }   

	public function _empty(){
		$template = (I('get.g')=='c') ? 'Public:c_404' : 'Public:e_404' ;
		header("HTTP/1.0 404 Not Found");//使HTTP返回404状态码
		$this->list=recursive(M('List')->field('id,name,ename,url,pid,sort,type,link')->order('sort')->select());
		$this->display($template); 
	}
	
}
?>