<?php
$index = 0;
if("RSS" == $_POST[task]){
	require_once("../action/global_post.php");
	//RSS源地址列表数组
	$rssfeed = array("http://feed.feedsky.com/tourmsg");
	/**
	$rssfeed = array("http://feed.feedsky.com/tourmsg",
	"http://www.jb51.net/feed",
	"http://rss.sina.com.cn/news/allnews/sports.xml",
	"http://ent.163.com/special/00031K7Q/rss_toutiao.xml",
	"http://tech.163.com/special/00091JPQ/techimportant.xml");
	 */
	//设置编码为UTF-8
	header('Content-Type:text/html;charset= UTF-8');
	//$rs = array();
	for($i=0;$i<sizeof($rssfeed);$i++){//分解开始
		$buff = "";
		$rss_str="";
		//打开rss地址，并读取，读取失败则中止
		$fp = fopen($rssfeed[$i],"r") or die("can not open $rssfeed");
		while ( !feof($fp) ) {
			$buff .= fgets($fp,10240);
		}
		//关闭文件打开
		fclose($fp);

		//建立一个 XML 解析器
		$parser = xml_parser_create();
		//xml_parser_set_option -- 为指定 XML 解析进行选项设置
		xml_parser_set_option($parser,XML_OPTION_SKIP_WHITE,1);
		//xml_parse_into_struct -- 将 XML 数据解析到数组$values中
		xml_parse_into_struct($parser,$buff,$values,$idx);
		//xml_parser_free -- 释放指定的 XML 解析器
		xml_parser_free($parser);

		foreach ($values as $val) {
			$tag = $val["tag"];
			$type = $val["type"];
			$value = $val["value"];

			//标签统一转为小写
			$tag = strtolower($tag);

			if ($tag == "item" && $type == "open"){
				$is_item = 1;
			}else if ($tag == "item" && $type == "close") {
				//构造输出字符串
				//$rss_str .= "<a href='".$link."' target=_blank>".$title."</a><br />";
				$is_item = 0;
			}
			//仅读取item标签中的内容
			if($is_item==1){
				if ($tag == "title") {
					$title = iconv("utf-8","GBK",$value);
				}
				if ($tag == "link") {
					$link = iconv("utf-8","GBK",$value);
				}
				if($tag =="description"){
					$content = iconv("utf-8","GBK",$value);
				}
			}
			if($title!=""&&$content!=""&&$link!=""){
				/**
				$rs[$index]["title"] = $title;
				$rs[$index]["type"] = $type;
				$rs[$index]["link"] = $link;
				$rs[$index]["content"] = $content;
				**/
				//数据库操作
				$query = $db->query("select count(*) from rss where title='$title'");
				$row = $db->fetch_array($query);
				if($row[0]<1){
					$index++;
					$db->query("insert into rss(title,link,type,content,create_date) values('$title','$link','$type','$content',now())");
					$content="";
					$title="";
					$link = "";
				}
			}
		}
	}
	//echo iconv("utf-8","GBK",$index);
	echo $index;
}
?>