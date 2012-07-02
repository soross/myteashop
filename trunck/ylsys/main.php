<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>91736后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<base target="main">
</head>
<body style="MARGIN: 0px">
	<div class="top">
		<div>
			<div class="logo">泛地缘假肢医疗管理系统</div>
			<div class="topdl">
				<li>友情提醒：</li>
				<li><marquee scrollamount=3 width="200px" onMouseOver="this.stop();" onMouseOut="this.start();">操作前请注意先备份数据库,以免数据丢失!</marquee></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;欢迎admddddddddin｜<a href="#" target="main"><span class="fff">在线帮助</span></a>｜<a href="main.php" target="_blank"><span class="fff">首页</span></a>｜<a href="logout.php" target="_parent"><span class="fff">退出</span></a></li>
			</div>
	    </div>
		<div class="tabm">
			<ul>
				<li class="tabms" id="menu_00" onClick="getleftbar(this,0,6,0);"><a href="index.php?m=91736&c=index&f=main" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left';"><span>后台首页</span></a></li>
				<li id="menu_01" onClick="getleftbar(this,0,6,1);"><a href="index.php?m=91736&c=setting" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=set';"><span>系统设置</span></a></li>
				<li id="menu_02" onClick="getleftbar(this,0,6,2);"><a href="index.php?m=91736&c=index&f=main" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=content';"><span>内容管理</span></a></li>
				<li id="menu_03" onClick="getleftbar(this,0,6,3);"><a href="index.php?m=91736&c=index&f=main" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=module';"><span>模块管理</span></a></li>
				<li id="menu_04" onClick="getleftbar(this,0,6,4);"><a href="index.php?m=91736&c=template" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=template';"><span>模板管理</span></a></li>
				<li id="menu_05" onClick="getleftbar(this,0,6,5);"><a href="index.php?m=91736&c=categorytree" target="main" onClick="parent.left.location='index.php?m=91736&c=index&f=left&s=file';"><span>文件管理</span></a></li>
			</ul>
		</div>
	</div>
	<table width="100%" height="80%" border="0" cellpadding="0" cellspacing="0" class="mindex">
	  <tr>
	    <td width="200px" valign="top" id="frmleft" name="frmleft">
	    	<table width="200px" border="0" cellpadding="0" cellspacing="0">
	      		<tr>
	        		<td height="28" id="leftmenu_title" class="leftmenu_title"><span>后台首页</span></td>
	      		</tr>
	    	</table>
	    	<iframe src="left.php" frameborder="0" id="left" name="left" scrolling="auto" align="top" class="leftiframe"></iframe>
			</td>
	    	<td width="10">
	    		<table height="100%" cellspacing="0" cellpadding="0" border="0">
			      <tbody>
			        <tr>
			          <td style="HEIGHT: 100%" onClick="switchSysBar()"><span id="switchPoint" title="关闭/打开左栏"><img src="images/lere.gif" width="10" height="20" /></span> </td>
			        </tr>
			      </tbody>
	    		</table>
	    	</td>
	    	<td valign="top">
	    		<iframe style="margin:0; padding:0; width:100%; height:480px!important;height:100%; background-color:#081250; visibility:inherit;" src="from.php" frameborder="0" scrolling="yes" id="main" name="main"></iframe>
	    	</td>
	  	</tr>
	</table>
	<table width="100%" height="30" border="0" cellpadding="4" cellspacing="0" class="mindex">
	  <tr>
	    <td width="75%">&nbsp;</td>
	    <td width="25%"></td>
	  </tr>
	</table>
</body>
<script language="javascript" src="js/admin.js"></script>
</html>
