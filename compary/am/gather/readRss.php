<?php
$index = 0;
if("RSS" == $_POST[task]){
	require_once("../action/global_post.php");
	//RSSԴ��ַ�б�����
	$rssfeed = array("http://feed.feedsky.com/tourmsg");
	/**
	$rssfeed = array("http://feed.feedsky.com/tourmsg",
	"http://www.jb51.net/feed",
	"http://rss.sina.com.cn/news/allnews/sports.xml",
	"http://ent.163.com/special/00031K7Q/rss_toutiao.xml",
	"http://tech.163.com/special/00091JPQ/techimportant.xml");
	 */
	//���ñ���ΪUTF-8
	header('Content-Type:text/html;charset= UTF-8');
	//$rs = array();
	for($i=0;$i<sizeof($rssfeed);$i++){//�ֽ⿪ʼ
		$buff = "";
		$rss_str="";
		//��rss��ַ������ȡ����ȡʧ������ֹ
		$fp = fopen($rssfeed[$i],"r") or die("can not open $rssfeed");
		while ( !feof($fp) ) {
			$buff .= fgets($fp,10240);
		}
		//�ر��ļ���
		fclose($fp);

		//����һ�� XML ������
		$parser = xml_parser_create();
		//xml_parser_set_option -- Ϊָ�� XML ��������ѡ������
		xml_parser_set_option($parser,XML_OPTION_SKIP_WHITE,1);
		//xml_parse_into_struct -- �� XML ���ݽ���������$values��
		xml_parse_into_struct($parser,$buff,$values,$idx);
		//xml_parser_free -- �ͷ�ָ���� XML ������
		xml_parser_free($parser);

		foreach ($values as $val) {
			$tag = $val["tag"];
			$type = $val["type"];
			$value = $val["value"];

			//��ǩͳһתΪСд
			$tag = strtolower($tag);

			if ($tag == "item" && $type == "open"){
				$is_item = 1;
			}else if ($tag == "item" && $type == "close") {
				//��������ַ���
				//$rss_str .= "<a href='".$link."' target=_blank>".$title."</a><br />";
				$is_item = 0;
			}
			//����ȡitem��ǩ�е�����
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
				//���ݿ����
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