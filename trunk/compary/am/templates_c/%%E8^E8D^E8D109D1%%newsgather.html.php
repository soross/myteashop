<?php /* Smarty version 2.6.26, created on 2011-07-04 02:39:12
         compiled from news/newsgather.html */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>后台管理</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=GBK">
		<META content=Alan name=Author>
		<LINK href="../css/private.css" type=text/css rel=stylesheet>
		<script src="../../js/jquery.js"></script>
		<script src="../js/gather.js"></script>
		<META content="MSHTML 6.00.6000.16890" name=GENERATOR>
	</HEAD>
	<BODY>
		<TABLE class=navi cellSpacing=1 align=center border=0>
			<TBODY>
				<TR>
					<TH>
						后台 >> 新闻管理 >> 新闻采集
					</TH>
				</TR>
			</TBODY>
		</TABLE>
		<BR>

		<table border=0 cellspacing=1 align=center class="form  tablelayout">
			<tr>
				<th colspan="3">
					新闻采集
				</th>
			</tr>
			<tr valign="middle">
				<td align="center" width="30%">步骤一：采集数据</td>
				<td align="center" width="25%"><input type="button" id="gatherButton" value="开始采集" style="height:30px">&nbsp;&nbsp;<input type="button" id="getRssDateButton" value="查看已采集的数据" style="height:30px"></td>
				<td>
					<div id="resule" style="display:none;"><table><tr><td><img src='../images/load.gif'></td><td>正在采集...</td></tr></table></div>
					<div id="ajaxResule" style="display:none;"></div>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<table>
						<tr>
							<td width="30%">&nbsp;</td>
							<td>
								<div id="rssRow" style="width:600px;">&nbsp;</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr valign="middle">
				<td align="center">步骤二：生成新闻</td>
				<td align="center"><input type="button" id="createNews" value="生产新闻" style="height:30px"></td>
				<td>
					<div id="resule1" style="display:none;height:25px;"><table><tr><td><img src='../images/load.gif'></td><td>正在生成...</td></tr></table></div>
					<div id="ajaxResule1" style="display:none;height:25px;"></div>&nbsp;
				</td>
			</tr>
		</table>
	</BODY>
</HTML>