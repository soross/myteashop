<?php
/*
 * localhost  ���ݿ��ַ
 * root�û���
 * root����
 * wjc ���ݿ�����
 *
 */
$conn = @ mysql_connect("localhost", "beallen", "jhz142753869") or die("���ݿ����Ӵ���");
mysql_select_db("beallen", $conn);
mysql_query("set names 'GBK'"); //ʹ��GBK���ı���;

function htmtocode($content) {
	$content = str_replace("\n", "<br>", str_replace(" ", "&nbsp;", $content));
	return $content;
}

//$content=str_replace("'","��",$content);
 //htmlspecialchars();

?>
