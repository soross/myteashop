<?php
require_once("../../action/global_post.php");
//发布新闻
if(isset($_POST[task])&&"addNews"==$_POST[task]){
	//stripslashes
	//htmlspecialchars
	//addslashes
	//->../
	$content = str_replace("./../../../","../",$_POST[newsContent]);
	//$content = str_replace("\"",'',$content);
	//$content = htmlspecialchars($content);

	$sql = "insert into news(title,news_class,author,src,create_date,content) values('$_POST[title]','$_POST[news_class]','$_POST[author]','$_POST[src]',now(),'".$content."')";
	$db->query($sql);
	//更新字段
	$newsId = $db->insert_id();
	$db->query("update news set news_info_url='newsinfo.php?id=$newsId' where id='$newsId'");
	echo "<script>if(confirm('新闻发布成功,是否继续发布新闻?')){location.href='../newsadd.php';}else{location.href='../newslist.php'}</script>";
}
//删除新闻task=deleteNews&id={$newsList[list].id}&page={$cpage}
else if(isset($_GET[task])&&"deleteNews"==$_GET[task]){
	$db->query("delete from news where id='$_GET[id]'");
	echo "<script>alert('新闻删除成功,将返回新闻列表!');location.href='../newslist.php?page=$_GET[page]'</script>";
}

//新闻修改
else if(isset($_POST[task])&&"editNews"==$_POST[task]){
	$content = str_replace("./../../../","../",$_POST[newsContent]);
	//$content = str_replace("\"",'',$content);
	//$content = htmlspecialchars($content);

	$sql = "update news set title='$_POST[title]',news_class='$_POST[news_class]',author='$_POST[author]',src='$_POST[src]',content='".$content."',news_info_url='newsinfo.php?id=$_POST[id]' where id='$_POST[id]'";
	$db->query($sql);
	echo "<script>if(confirm('新闻修改成功,是否继续修改新闻?')){location.href='../newsedit.php?page=$_POST[page]&id=$_POST[id]&task=editNews';}else{location.href='../newslist.php?page=$_POST[page]'}</script>";
}

//添加新闻类型
else if(isset($_POST[task])&& "addNewsClass"==$_POST[task]){
	$db->query("insert into news_class(class_name,create_date) values('$_POST[class_name]',now())");
	$newsClassId = $db->insert_id();
	$db->query("update news_class set url='newslist.php?classcode=$newsClassId' where id = '$newsClassId'");
	echo "<script>alert('新闻类型添加成功,将新闻类型列表!');location.href='../newsclass.php'</script>";
}

//修改新闻类型updateNewsClass
else if(isset($_POST[task])&& "updateNewsClass"==$_POST[task]){
	$db->query("update news_class set class_name='$_POST[class_name]', url='newslist.php?classcode=$_POST[id]' where id = '$_POST[id]'");
	echo "<script>alert('新闻类型修改成功,将新闻类型列表!');location.href='../newsclass.php'</script>";
}

//删除新闻类型updateNewsClass
else if(isset($_GET[task])&& "deleteNewsClass"==$_GET[task]){
	$db->query("delete from news_class where id='$_GET[id]'");
	echo "<script>alert('新闻类型删除成功,将新闻类型列表!');location.href='../newsclass.php'</script>";
}

//RSS生成新闻
else if(isset($_POST[task])&& "createNews"==$_POST[task]){
	require_once("../../action/simple_html_dom.php");
	$queryRss = $db->query("select title,content,src from rss where state='0'");
	$i = 0;
	$sql = array();
	while($rowRss = $db->fetch_array($queryRss)){
		$html = str_get_html($rowRss[content]);
		$index = 0;
		foreach($html->find('img') as $element){
			$filename="";
			if(strpos($element->src,"?")===false){
	    		if($element->src!=""){
	    			//echo $element->src;
					$filename=GrabImage($element->src);
	    		}
				//../news/images/../../../news/images/18Jul2011130629.jpg
				if($filename!="" && $filename!=false){
					$html->find('img', $index)->src = "../news/images/".$filename;
				}
			}else{
				$html->find('img', $index)->src = '';
			}
			$index++;
		}
		$sql[$i] ="insert into news(title,news_class,src,content,create_date,author) values('".$rowRss[title]."','-123','".$rowRss[src]."','".$html."',now(),'果果网络')";
		$i++;

		$html='';
		$element = '';
	}

	for ($j = 0; $j < sizeof($sql); $j++) {
		$db->query($sql[$j]);
	}
	$db->query("update rss set state='1' where state='0'");
	$db->query("update news set news_class='4',news_info_url=CONCAT('newsinfo.php?id=',id) where news_class='-123'");
	$cnt = $db->db_affected_rows();
	echo $cnt;
}
//RSS生成新闻数量
else if(isset($_POST[task])&& "getState"==$_POST[task]){
	$query = $db->query("select count(*) from rss where state='0'");
	$row = $db->fetch_array($query);
	$cnt = $row[0];
	echo $cnt;
}

//获取RSS数据
else if(isset($_POST[task])&&"getRssDate" == $_POST[task]){
	require_once("../../util/icove.php");
	$query = $db->query("select id,title from rss where state='0'");
	$rss = "<table>";
	$index = 1;
	while ($row = $db->fetch_array($query)) {
		$rss.="<tr><td width='30%' align='center'>&nbsp;".$index."&nbsp;</td><td>".$row[title]."</td></tr>";
		$index++;
	}
	$rss.="</table>";
	echo escape($rss);
}

//addGatherAddress
else if(isset($_POST[task])&&"addGatherAddress" == $_POST[task]){
	$sql = "insert into comm_info(info_type,info_value,remark) values('GatherAddress','$_POST[ga]','$_POST[ga_name]')";
	$db->query($sql);
	echo "<script>alert('采集地址添加成功,将采集地址列表!');location.href='../gatheraddress.php'</script>";
}

//updateGatherAddress
else if(isset($_POST[task])&&"updateGatherAddress" == $_POST[task]){
	$sql = "update comm_info set info_value='$_POST[ga]' where info_type='GatherAddress' and id='$_POST[id]'";
	$db->query($sql);
	echo "<script>alert('采集地址添加成功,将采集地址列表!');location.href='../gatheraddress.php'</script>";
}

//id={$gatherAddressList[list].id}task=deleteGatherAddress
else if(isset($_GET[task])&&"deleteGatherAddress" == $_GET[task]){
	$sql = "delete from comm_info where info_type='GatherAddress' and id='$_GET[id]'";
	$db->query($sql);
	echo "<script>alert('采集地址删除成功,将采集地址列表!');location.href='../gatheraddress.php'</script>";
}






function GrabImage($url,$filename="") {
	if($url==""):return false;endif;
	$path="../../../news/images/"; //指定存储文件夹

	//若文件不存在,则创建;
	if(!file_exists($path)){
		mkdir($path);
	}

	if($filename=="") {
		$ext=strrchr($url,".");
		if($ext!=".gif" && $ext!=".jpg" && $ext!=".png"):return false;endif;
		$filename = date("dMYHis").$ext;
		$filepath=$path.$filename;
	}

	ob_start();
	readfile($url);
	$img = ob_get_contents();
	ob_end_clean();
	$size = strlen($img);

	$fp2=@fopen($filepath, "a");
	fwrite($fp2,$img);
	fclose($fp2);

	return $filename;
}
?>
