<?php /* Smarty version 2.6.26, created on 2012-04-05 13:57:49
         compiled from newsinfo.htm */ ?>
 <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/top.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> <?php echo '


<style type="text/css"><!--
.tit                {	font-size: 14px;}
.black              {COLOR: #000000; font-family: "Verdana", "宋体"; FONT-SIZE: 9pt;letter-spacing: 1pt;}
A.black:link        { COLOR: #000066;  TEXT-DECORATION: none}
A.black:visited     { COLOR: #330000;  TEXT-DECORATION: none}
A.black:active      { COLOR: #FFFFFF;  TEXT-DECORATION: none}
A.black:hover       { COLOR: #ff0000;  TEXT-DECORATION: none}
}
.abc{font-size:14pt;}
-->
</style>



<script language="JavaScript" type="text/JavaScript">
function fontZoom(size){
 document.getElementById(\'fontZoom\').style.fontSize=size+\'px\'
}
</SCRIPT>
<SCRIPT language=JavaScript>
var currentpos,timer;

function initialize()
{
timer=setInterval("scrollwindow()",50);
}
function sc(){
clearInterval(timer);
}
function scrollwindow()
{
currentpos=document.body.scrollTop;
window.scroll(0,++currentpos);
if (currentpos != document.body.scrollTop)
sc();
}
document.onmousedown=sc
document.ondblclick=initialize
</SCRIPT>
'; ?>

<table width="970" border="0" align="center" cellpadding="0"
	cellspacing="0" bgcolor="#FFFFFF">
	<tr><td>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>

				<td width="185" valign="top">

				<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "inc/left.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>


				</td>



				<td width="5"></td>
				<td valign="top" bgcolor="#F5F5F5"
					style="border: 1px solid #1A4D8E;">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					bgcolor="#9EC9EC">
					<tr>
						<td bgcolor="#4288DD" height="25">&nbsp;&nbsp;当前位置：<?php echo $this->_tpl_vars['addressNav']; ?>
</td>
					</tr>
				</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="1" bgcolor="1A4D8E"></td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>&nbsp;</td>
					</tr>
				</table>
				<table width="90%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="100%" height="50" align="center"><font
							style="font-size:11pt;color: #502614;"><?php echo $this->_tpl_vars['newsInfo']['title']; ?>
</font></td>
					</tr>
					<tr>
						<td height="10" align="center" >点击数：<font color="#ff0000"><?php echo $this->_tpl_vars['newsInfo']['click']; ?>
</font>&nbsp;&nbsp;发布日期：<?php echo $this->_tpl_vars['newsInfo']['create_date']; ?>
&nbsp;&nbsp;字体：[<a  href="javascript:fontZoom(16)">大</a>]&nbsp;[<a  href="javascript:fontZoom(14)">中</a>]&nbsp;[<a  href="javascript:fontZoom(12)">小</a>]</td>
					</tr>
					<tr>
						<td height="320" valign="top">
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							bgcolor="#502614">
							<tr>
								<td style="BORDER-bottom: #502614 1px dotted"></td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="10"></td>
							</tr>
						</table>
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td id="fontZoom">
								<?php echo $this->_tpl_vars['newsInfo']['content']; ?>

								</td>
							</tr>
						</table>
						</td>
					</tr>
					<tr align="right">
						<td>&nbsp;</td>
					</tr>
					<tr align="right">
						<td>&nbsp;</td>
					</tr>

				</table>

				<br>
				<table width="90%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td align="right"><a href="javascript:window.print()">打印本页</a>
						|| <a href="javascript:window.close()">关闭窗口</a></td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<table width="970" border="0" align="center" cellpadding="0"
	cellspacing="0" bgcolor="#FFFFFF">
	<tr>
		<td>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="5"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="1" bgcolor="#9EC9EC"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td height="5"></td>
			</tr>
		</table>
		<table width="950" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="4"></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td height="70" align="center">
				<p><?php echo $this->_tpl_vars['copyInfo']; ?>
</p>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>

</body>
</html>