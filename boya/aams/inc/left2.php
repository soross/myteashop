<?php
$path = "../";
require_once ("../action/checkAamsLogin.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="STYLESHEET" type="text/css" href="codebase/dhtmlxtree.css">
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE2 {color: #43860c; font-size: 12px; }

a:link {font-size:12px; text-decoration:none; color:#43860c;}
a:visited {font-size:12px; text-decoration:none; color:#43860c;}
a:hover{font-size:12px; text-decoration:none; color:#FF0000;}
-->
</style>
<style type="text/css">
<!--
ul,li,p,h1,h2{ margin:0; padding:0; border:0; background:#FAFAFA; font-family:Arial, Helvetica, sans-serif,"宋体"}
li{ list-style:none}
.rolinList{ width:144px; height:auto; margin:2px auto 0 auto; text-align:left}
.rolinList li{margin-bottom:1px;border:1px solid #B0D55E}
.rolinList li h2{ width:142px; height:40px;  background:#fff; font-size:14px; line-height:40px; padding-left:0px; color:#43860c; cursor:pointer}
.content{ height:100%;width:138px;  background:#fff;  background:#FAFAFA}
.content p{ margin:12px;font-size:12px;color:#43860c; }
-->
</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>

<body onload="MM_preloadImages('../images/main_26_1.gif','../images/main_29_1.gif','../images/main_31_1.gif')">
<table width="177" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top">
	     <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed">
	      <tr>
	        <td height="26" background="images/main_21.gif">&nbsp;</td>
	      </tr>
	      <tr  valign="top">
	        <td height="80" style="background-image:url(../images/main_23.gif); background-repeat:repeat-x;">
		        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		          <tr>
		            <td height="45"><div align="center"><a href="../prodlist.php" target="dataFrame"><img src="../images/main_26.gif" name="Image1" width="40" height="40" border="0" id="Image1" onmouseover="MM_swapImage('Image1','','../images/main_26_1.gif',1)" onmouseout="MM_swapImgRestore()" /></a></div></td>
		            <td><div align="center"><a href="../orderlist.php" target="dataFrame"><img src="../images/main_28.gif" name="Image2" width="40" height="40" border="0" id="Image2" onmouseover="MM_swapImage('Image2','','../images/main_29_1.gif',1)" onmouseout="MM_swapImgRestore()" /></a></div></td>
		            <td><div align="center"><a href="../sallist.php" target="dataFrame"><img src="../images/main_31.gif" name="Image3" width="40" height="40" border="0" id="Image3" onmouseover="MM_swapImage('Image3','','../images/main_31_1.gif',1)" onmouseout="MM_swapImgRestore()" /></a></div></td>
		          </tr>
		          <tr>
		            <td height="25"><div align="center" class="STYLE2"><a href="../prodlist.php" target="dataFrame">产品查询</a></div></td>
		            <td><div align="center" class="STYLE2"><a href="../orderlist.php" target="dataFrame">订单查询</a></div></td>
		            <td><div align="center" class="STYLE2"><a href="../sallist.php" target="dataFrame">工资查询</a></div></td>
		          </tr>
		        </table>
	        </td>
	      </tr>
	      <tr>
	        <td  style="line-height:4px; background:url(../images/main_38.gif)">&nbsp;</td>
	      </tr>
	      <tr>
	       <td valign="top"  height="100%" width="195px" style="padding-left:1px;padding-top:5px;">
 				<div id="treeboxbox_tree"></div><br>
 		  </td>
	      <!--
	        <td align="center">
	        	<div style="width:144px;" align="center">
	        		<ul class="rolinList" id="rolin">
	  <li>
	    <h2>+&nbsp;产品管理</h2>
	    <div class="content">
	      <p>-&nbsp;<a href="../prodlist.php" target="dataFrame">产品列表</a></p>
	      <p>-&nbsp;<a href="../addprod.php" target="dataFrame">新增产品</a></p>
	      <p>-&nbsp;<a href="../cllist.php" target="dataFrame">材料管理</a></p>
	      <p>-&nbsp;<a href="../joblist.php" target="dataFrame">工种管理</a></p>

	    </div>
	  </li>
	  <li>
	    <h2>+&nbsp;订单管理</h2>
	    <div class="content">
		  <p>-&nbsp;<a href="../orderlist.php" target="dataFrame">订单列表</a></p>
		  <p>-&nbsp;<a href="../addorder.php" target="dataFrame">添加订单</a></p>
	      <p>-&nbsp;<a href="../pd.php" target="dataFrame">订单排单</a></p>
	      <p>-&nbsp;<a href="../cclist.php" target="dataFrame">出仓情况</a></p>
	    </div>
	  </li>
	  <li>
	    <h2>+&nbsp;员工管理</h2>
	    <div class="content">
	      <p>-&nbsp;<a href="../jobpricelist.php" target="dataFrame">员工作业</a></p>
	      <p>-&nbsp;<a href="../stafflist.php" target="dataFrame">员工列表</a></p>
	      <p>-&nbsp;<a href="../addstaff.php" target="dataFrame">新增员工</a></p>
	      <p>-&nbsp;<a href="../gwlist.php" target="dataFrame">岗位列表</a></p>
	    </div>
	  </li>
	  <li>
	    <h2>+&nbsp;工资管理</h2>
	    <div class="content">
		  <p>-&nbsp;<a href="../jobpricelist.php" target="dataFrame">工种价格</a></p>
		  <p>-&nbsp;<a href="../addjobprice.php" target="dataFrame">添加工种价格</a></p>
		  <p>-&nbsp;<a href="../sallist.php" target="dataFrame">工资列表</a></p>
	      <p>-&nbsp;<a href="../yzlist.php" target="dataFrame">预支列表</a></p>
		  <p>-&nbsp;<a href="../addyz.php" target="dataFrame">员工预支</a></p>
	    </div>
	  </li>
	  <li>
	    <h2>+&nbsp;统计查询管理</h2>
	    <div class="content">
		  <p>-&nbsp;<a href="../orderrpt.php" target="dataFrame">订单统计报表查询</a></p>
		  <p>-&nbsp;<a href="../salrpt.php" target="dataFrame">员工工资查询</a></p>
	      <p>-&nbsp;<a href="../rpt.php" target="dataFrame">报表查询</a></p>
	    </div>
	  </li>
	   <li>
	    <h2>+&nbsp;客户管理</h2>
	    <div class="content">
	      <p>-&nbsp;<a href="../customerlist.php" target="dataFrame">客户列表</a></p>
	      <p>-&nbsp;<a href="../addcustomer.php" target="dataFrame">新增客户</a></p>
	    </div>
	  </li>
	   <li>
	    <h2>+&nbsp;系统管理</h2>
	    <div class="content">
	      <p>-&nbsp;<a href="../userlist.php" target="dataFrame">管理员帐号</a></p>
	      <p>-&nbsp;<a href="../adduser.php" target="dataFrame">新增管理员帐号</a></p>
	    </div>
	  </li>

	   <li>
	    <h2>+&nbsp;数据中心</h2>
	    <div class="content">
	      <p>-&nbsp;<a href="../autorundata.php?task=toAutoRunData" target="dataFrame">启动定时数据业务</a></p>
	    </div>
	  </li>

	</ul>


	        	</div>
			</td>-->
	      </tr>
	    </table>
	   </td>
  </tr>
</table>
</body>


<script  src="codebase/dhtmlxcommon.js"></script>
<script  src="codebase/dhtmlxtree.js"></script>
<script>
	tree=new dhtmlXTreeObject("treeboxbox_tree","100%","100%",0);
	tree.setImagePath("codebase/imgs/csh_yellowbooks/");
	tree.loadXML("codebase/menu_3.xml");
	tree.enableDragAndDrop(0);
	tree.setOnClickHandler(tonclick);
	function tonclick(id){
		if(tree.getSelectedItemId()<0){
			tree.openItem(id);
		}else{
			//alert(tree.getSelectedItemId());
			window.parent.dataFrame.location.href="../"+tree.getSelectedItemId();
		}
	}
</script>
<script type="text/javascript">
//<![CDATA[
window.onload = function() {
rolinTab("rolin")
}
function rolinTab(obj) {
var list = $(obj).getElementsByTagName("LI");
var state = {show:false,hidden:false,showObj:false};

for (var i=0; i<list.length; i++) {
var tmp = new rolinItem(list[i],state);
if (i == 0) tmp.pShow();
}
}

function rolinItem(obj,state) {
var speed = 0.0666;
var range = 1;
var interval;
var tarH;
var tar = this;
var head = getFirstChild(obj);
var content = getNextChild(head);
var isOpen = false;
this.pHidden = function() {
if (isOpen) hidden();
}
this.pShow = show;

var baseH = content.offsetHeight;
content.style.display = "none";
var isOpen = false;

head.onmouseover = function() {
this.style.background = "#EFEFEF";
}

head.onmouseout = mouseout;

head.onclick = function() {
this.style.background = "#EFEFEF";
if (!state.show && !state.hidden) {
if (!isOpen) {
head.onmouseout = null;
show();
} else {
hidden();
}

}
}

function mouseout() {
this.style.background = "#FFF"
}
function show() {
head.style.borderBottom = "1px solid #DADADA";
state.show = true;
if (state.openObj && state.openObj != tar ) {
state.openObj.pHidden();
}
content.style.height = "0px";
content.style.display = "block";
content.style.overflow = "hidden";
state.openObj = tar;
tarH = baseH;

interval = setInterval(move,10);
}
function showS() {
isOpen = true;
state.show = false;
}

function hidden() {
state.hidden = true;
tarH = 0;
interval = setInterval(move,10);
}

function hiddenS() {
head.style.borderBottom = "none";
head.onmouseout = mouseout;
head.onmouseout();
content.style.display = "none";
isOpen = false;
state.hidden = false;
}

function move() {
var dist = (tarH - content.style.height.pxToNum())*speed;
if (Math.abs(dist) < 1) dist = dist > 0 ? 1: -1;
content.style.height = (content.style.height.pxToNum() + dist) + "px";
if (Math.abs(content.style.height.pxToNum() - tarH) <= range ) {
clearInterval(interval);
content.style.height = tarH + "px";
if (tarH != 0) {
showS()
} else {
hiddenS();
}
}
}

}
var $ = function($) {return document.getElementById($)};
String.prototype.pxToNum = function() {return Number(this.replace("px",""))}
function getFirstChild(obj) {
var result = obj.firstChild;
while (!result.tagName) {
result = result.nextSibling;
}
return result;
}

function getNextChild(obj) {
var result = obj.nextSibling;
while (!result.tagName) {
result = result.nextSibling;
}
return result;
}
//]]>
</script>
</html>