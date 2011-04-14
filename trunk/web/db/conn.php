<?php
/*
 * localhost  数据库地址
 * root用户名
 * root密码
 * wjc 数据库名称
 *
 */
$conn = @ mysql_connect("localhost", "root", "root") or die("数据库链接错误");
mysql_select_db("wjc", $conn);
mysql_query("set names 'GBK'"); //使用GBK中文编码;

function htmtocode($content) {
	$content = str_replace("\n", "<br>", str_replace(" ", "&nbsp;", $content));
	return $content;
}

//$content=str_replace("'","‘",$content);
 //htmlspecialchars();

?>
