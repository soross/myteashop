<?php
include_once('admin_global.php');
if(isset($_GET[del])){
	unlink("../prod/images/prodphoto/".$_GET[path]);
	mysql_query("DELETE FROM `tea_prod` WHERE `id` = '$_GET[del]';");
	$db->Get_admin_msg("admin_prod_list.php","ɾ���ɹ�");
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
		<br>
		<form action="" method="post" >
			<table border=0 cellspacing=1 align=center class=form style="display:none;">
				<tr>
					<th colspan="2">&nbsp;&nbsp;����Ʒ������</th>
				</tr>
			    <tr>
				    <td colspan="2" align="center" height='30'>
				    	��Ʒ���ͣ�
				    	<select name="classcode">
							<option value="">��ѡ���Ʒ����</option>
						    <?php
						    $query=@mysql_query("select * from tea_prod_class");
						    while ($row=@mysql_fetch_array($query)) {
						      echo "<option value=\"$row[class_code]\">$row[class_name]</option>";
							}
						    ?>
						</select>&nbsp;
					    �ؼ��֣�<input type="text" name="key" id="key" value="" />
					    <input type="submit" name="into_class" value="��Ʒ����"/>
				    </td>
			    </tr>
			</table>
		</form>
		<table border=0 cellspacing=1 align=center class=form>
			<tr>
				<th width='40px' align=center>���</th>
				<th width=''>��Ʒ����</th>
				<th width='100px' align=center>��Ʒ����</th>
				<th width='60px' align=center>�г���</th>
				<th width="60px" align=center>�ػݼ�</th>
				<th width="60px" align=center>����</th>
				<th width="50px" align=center>������</th>
				<th width="125" align=center>���ʱ��</th>
				<th width="70px" align=center>����</th>
				<th width="65px" align=center>ͼƬ</th>
			</tr>
			<tr>
			<?php
			    $result = @mysql_query("select id from tea_prod");
			    $total = @mysql_num_rows($result);
			    pageft($total, 10);
			    if ($firstcount < 0) $firstcount = 0;
			    //$prodclassquery = $db->query("select * from tea_prod_class");
		   		$query = $db->query("select a.class_name,b.* from tea_prod_class a,tea_prod b where a.class_code =b.prod_class order by id limit  $firstcount, $displaypg");
		  		while ($row = $db->fetch_array($query)) {
		   	?>
				<td align=center><?php echo $row[id]?></td>
				<td align=center><?php echo $row[prod_name]?></td>
				<td align=center><?php echo $row[class_name];?></td>
				<td align=center><?php echo $row[src_price]?>.00</td>
				<td align=center><?php echo $row[new_price]?>.00</td>
				<td align=center><?php echo $row[suttle]?></td>
				<td align=center><?php echo $row[exp];?></td>
				<td align=center><?php echo $row[create_date];?></td>
				<td align=center>
					<a href='admin_prod_edit.php?id=<?php echo $row[id]?>&page=<?php echo $page;?>'>�޸�</a> /
					<a href="javascript:if(confirm('ȷ��Ҫɾ����������?')){location.href='?del=<?php echo $row[id]?>&path=<?php echo $row[image_path];?>&page=<?php echo $page;?>';}">ɾ��</a>
				</td>
				<td align=center><img src="../prod/images/prodphoto/<?php echo $row[image_path];?>" width="50px" height="40px"/></td>
			</tr>
			<?php
				}
			?>
			<tr>
				<th colspan="10"><?php echo $pagenav;?></th>
			</tr>
		</table>
		<br>
	</BODY>
</HTML>

<?php
}
?>