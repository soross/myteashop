<?php
include_once('admin_global.php');
if(isset($_GET[del])){
	mysql_query("DELETE FROM `tea_newsinfo` WHERE `id` = '$_GET[del]';");
	$db->Get_admin_msg("admin_news_list.php","ɾ���ɹ�");
}

if (session_is_registered("uid") && session_is_registered("shell") && session_is_registered("ontime")) {
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>��̨����</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gbk">
		<META content=Alan name=Author>
		<LINK href="images/private.css" type=text/css rel=stylesheet>
		<META content="MSHTML 6.00.6000.16890" name=GENERATOR>
	</HEAD>
	<BODY>
		<TABLE class=navi cellSpacing=1 align=center border=0>
			<TBODY>
		  		<TR>
		    		<TH>��̨ >> ���Ź���</TH>
		    	</TR>
		    </TBODY>
		</TABLE>
		<BR>
		<table border=0 cellspacing=1 align=center class=form>
			<tr>
				<th width='40' align=center>���</th>
				<th>���ű���</th>
				<th width='100' align=center>����</th>
				<th width='125' align=center>����</th>
				<th width="80" align=center>����</th>
			</tr>
			<tr>
			<?php
			    $result = @mysql_query("select id from tea_newsinfo");
			    $total = @mysql_num_rows($result);
			    pageft($total, 10);
			    if ($firstcount < 0) $firstcount = 0;
		   		$query = $db->findall("tea_newsinfo order by create_date desc limit  $firstcount, $displaypg");
		  		while ($row = $db->fetch_array($query)) {
		   	?>
				<td align=center><?php echo $row[id]?></td>
				<td><?php echo $row[title]?></td>
				<td align=center><?php echo $row[author]?></td>
				<td align=center><?php echo $row[create_date];?></td>
				<td align=center>
					<a href='admin_news_edit.php?id=<?php echo $row[id]?>&page=<?php echo $page;?>'>�޸�</a> /
					<a href="javascript:if(confirm('ȷ��Ҫɾ����������?')){location.href='?del=<?php echo $row[id]?>&page=<?php echo $page;?>';}">ɾ��</a>
				</td>
			</tr>
			<?php
				}
			?>
			<tr>
				<th colspan="5"><?php echo $pagenav;?></th>
			</tr>
		</table>
		<br>
	</BODY>
</HTML>

<?php
}
?>
