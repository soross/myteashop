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
if($url_query) $url.="&page"; else $url.="page";
}else {
$url.="?page";
}

//页码计算：
$lastpg=ceil($totle/$displaypg); //最后页，也是总页数
$page=min($lastpg,$page);
$prepg=$page-1; //上一页
$nextpg=($page==$lastpg ? 0 : $page+1); //下一页
$firstcount=($page-1)*$displaypg;





//开始分页导航条代码：
$pagenav = "
<div class='pageBar'>
          		<p class='left'>".((($page-1)*$displaypg)+1) ."-".$page*$displaypg." of ".$totle.", ".$displaypg."条/页, 当前 ". $page ."/".$lastpg."页&nbsp;
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

if($page==1){
	$pagenav = $pagenav."&nbsp;<span class='first'>首页</span>&nbsp;<span class='previous'>上页</span>&nbsp;";

}else{
	$pagenav = $pagenav."
				&nbsp;<a href='$url=1' class='first'>首页</a>	&nbsp;<a href='$url=$prepg' class='previous'>上页</a>&nbsp;<span class='number'>";
}

	//如果总页数小于6 全部显示
if($lastpg<6){
	for($i=1; $i<$lastpg+1 ;$i++){
		if($page == $i){
			$pagenav = $pagenav."&nbsp;<strong>$i</strong>&nbsp;";
		}else{
			$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>&nbsp;";
		}
	}
}else{ //如果总页数大于5页 则显示当前页的前2页和后2页
	if($page<4){ //12345...
		for($i=1; $i<6 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."&nbsp;<strong>$i</strong>&nbsp;";
			}else{
				$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>&nbsp;";
			}
		}
		$pagenav = $pagenav."&nbsp;<a href='$url=6'>...</a>&nbsp;";
	}else if ($page> $lastpg -3){//...n-4,n-3,n-2,n-1,n
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($lastpg-5)."'>...</a>&nbsp;";
		for($i=$lastpg-4 ; $i<$lastpg+1 ;$i++){
			if($page == $i){
				$pagenav = $pagenav."&nbsp;<strong>$i</strong>&nbsp;";
			}else{
				$pagenav = $pagenav."&nbsp;<a href='$url=$i'>$i</a>&nbsp;";

			}
		}
	}else{//...n-2,n-1,n,n+1,n+2...
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-3)."'>...</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-2)."'>".($page-2)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page-1)."'>".($page-1)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<strong>$page</strong>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+1)."'>".($page+1)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+2)."'>".($page+2)."</a>&nbsp;";
		$pagenav = $pagenav."&nbsp;<a href='".$url."=".($page+3)."'>...</a>&nbsp;";
	}
}

if($page== $lastpg){
	$pagenav = $pagenav."	</span>&nbsp;<span class='next'>下页</span>&nbsp;<span class='last'>尾页</span>&nbsp;";

}else{
	$pagenav = $pagenav."</span>&nbsp;<a href='".$url."=".($page+1)."' class='next'>下页</a>&nbsp;<a href='$url=$lastpg' class='last'>尾页</a>&nbsp;";
}
/**
$pagenav = $pagenav."<LI class=opt><SELECT onchange='if(-1!=this.value)location.href=\"".$url."=\"+this.value;'>";
for($i=1; $i<$lastpg +1 ;$i++){
	if($page == $i){
		$pagenav = $pagenav."<OPTION selected value='-1'>第".$i."页</OPTION>";
	}else{
		$pagenav = $pagenav."<OPTION value='$i'>第".$i."页</OPTION>";
	}
}
$pagenav = $pagenav."</SELECT></LI>";

if($page== $lastpg){
	$pagenav = $pagenav."<LI class=pagesnow>尾页</LI>";
}else{
	$pagenav = $pagenav."<LI class=pbutton>
					<A href='$url=$lastpg'>尾页</A>
				</LI>";
}
*/
$pagenav = $pagenav."
			</p>
			</div>";


/*
$pagenav="显示第 <B>".($totle?($firstcount+1):0)."</B>-<B>".min($firstcount+$displaypg,$totle)."</B> 条记录，共 $totle 条记录";

//如果只有一页则跳出函数：
if($lastpg<=1) return false;

$pagenav.=" <a href='$url=1'>首页</a> ";
if($prepg) $pagenav.=" <a href='$url=$prepg'>前页</a> "; else $pagenav.=" 前页 ";
if($nextpg) $pagenav.=" <a href='$url=$nextpg'>后页</a> "; else $pagenav.=" 后页 ";
$pagenav.=" <a href='$url=$lastpg'>尾页</a> ";

//下拉跳转列表，循环列出所有页码：
$pagenav.="　到第 <select name='topage' size='1' onchange='window.location=\"$url=\"+this.value'>\n";
for($i=1;$i<=$lastpg;$i++){
if($i==$page) $pagenav.="<option value='$i' selected>$i</option>\n";
else $pagenav.="<option value='$i'>$i</option>\n";
}
$pagenav.="</select> 页，共 $lastpg 页";
*/

	}

}

?>
