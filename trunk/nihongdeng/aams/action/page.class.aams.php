<?php
/*
 * Created on 2007-6-8
 * Programmer : Alan , Msn - haowubai@hotmail.com
 * php100.com Develop a project PHP - MySQL - Apache
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
//为了避免重复包含文件而造成错误，加了判断函数是否存在的条件：
$page = $_GET[page];
if(!function_exists(pageft)){
//定义函数pageft(),三个参数的含义为：
//$totle：信息总数；
//$displaypg：每页显示信息数，这里设置为默认是20；
//$url：分页导航中的链接，除了加入不同的查询信息“page”外的部分都与这个URL相同。
//　　　默认值本该设为本页URL（即$_SERVER["REQUEST_URI"]），但设置默认值的右边只能为常量，所以该默认值设为空字符串，在函数内部再设置为本页URL。
function pageft($totle,$displaypg=20,$url=''){

//定义几个全局变量：
//$page：当前页码；
//$firstcount：（数据库）查询的起始项；
//$pagenav：页面导航条代码，函数内部并没有将它输出；
//$_SERVER：读取本页URL“$_SERVER["REQUEST_URI"]”所必须。
global $page,$firstcount,$pagenav,$_SERVER,$url;

//为使函数外部可以访问这里的“$displaypg”，将它也设为全局变量。注意一个变量重新定义为全局变量后，原值被覆盖，所以这里给它重新赋值。
$GLOBALS["displaypg"]=$displaypg;

if(!$page) $page=1;

//如果$url使用默认，即空值，则赋值为本页URL：
if(!$url){ $url=$_SERVER["REQUEST_URI"];}

//是否有其他提交参数方式
$postParent = "";
if(isset($_POST[task])&&"searchProcat"==$_POST[task]){
	if(isset($_POST[szSheng]) && !empty($_POST[szSheng])){
		$postParent = $postParent."pkey=".urlencode($_POST[szSheng]);
	}
	if(isset($_POST[szShi]) && !empty($_POST[szShi])){
		$postParent = $postParent."&ckey=".urlencode($_POST[szShi]);
	}
	if(isset($_POST[shopkey]) && !empty($_POST[shopkey])){
		$postParent = $postParent."&key=".urlencode($_POST[shopkey]);
	}
}
//$postParent = urlencode($postParent);


//URL分析：
$parse_url=parse_url($url);
$url_query=$parse_url["query"]; //单独取出URL的查询字串
if($url_query){
	//因为URL中可能包含了页码信息，我们要把它去掉，以便加入新的页码信息。
	//这里用到了正则表达式，请参考“PHP中的正规表达式”
	$url_query=ereg_replace("(^|&)page=$page","",$url_query);

	//将处理后的URL的查询字串替换原来的URL的查询字串：
	$url=str_replace($parse_url["query"],$url_query,$url);

	//在URL后加page查询信息，但待赋值：
	if($url_query) $url.=($postParent."&page"); else $url.=($postParent."page");
}else {
$url.="?".$postParent."&page";
}

//页码计算：
$lastpg=ceil($totle/$displaypg); //最后页，也是总页数
$page=min($lastpg,$page);
$prepg=($page < 1 ? 1 : $page-1); //上一页
$nextpg=($page==$lastpg ? 0 : $page+1); //下一页
$firstcount=($page-1)*$displaypg;





//开始分页导航条代码：
$pagenav='<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="25%" height="29" nowrap="nowrap">
					<span class="STYLE1">共'.$totle.'条纪录，当前第'. $page .'/'.$lastpg.'页，每页'.$displaypg.'条纪录</span></td>
				<td width="75%" valign="top" class="STYLE1">
					<div align="right">
						<table width="352" height="20" border="0" cellpadding="0" cellspacing="0">
							<tr>
							  <td width="62" height="22" valign="middle"><div align="right">
								<A href='.$url.'=1><img src="images/tab/first.gif" width="37" height="15" border="0"/></A></div></td>
							  <td width="50" height="22" valign="middle"><div align="right">
								<a href='.$url.'='.($page-1>0?$page-1:1).'><img src="images/tab/back.gif" width="43" height="15" border="0"/></a></div></td>
							  <td width="54" height="22" valign="middle"><div align="right">
								<a href='.$url.'='.($page+1>$lastpg?$lastpg:$page+1).'><img src="images/tab/next.gif" width="43" height="15" border="0" /></a></div></td>
							  <td width="49" height="22" valign="middle"><div align="right">
								<A href='.$url.'='.$lastpg.'><img src="images/tab/last.gif" width="37" height="15" border="0" /></div></td>
							</tr>
					    </table>
					</div>
				</td>
			</tr>
		</table>';
}
}
?>