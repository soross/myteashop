<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>��̨����</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=Alan name=Author>
<LINK rev=MADE href="mailto:haowubai@hotmail.com">
<LINK href="images/private.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.6000.16890" name=GENERATOR>


</HEAD>
<BODY>
<TABLE class=navi cellSpacing=1 align=center border=0>
	<TBODY>
		<TR>
			<TH>��̨ >> ������Ʒ</TH>
		</TR>
	</TBODY>
</TABLE>
<BR>

<table border=0 cellspacing=1 align=center class=form>
		<tr>
			<th colspan="3">������Ʒ</th>
		</tr>
	<form action="action_admin_prod_add.php" method="post" onsubmit="syncTextarea()" enctype="multipart/form-data">
    	<tr >
   			<td width="80px" align=center>��Ʒ���</td>
			<td>
				<select name="classcode">
					<option value="64be74cd3ffd420cd5b97f39dc9d9073">��ѡ���Ʒ����</option>
				    <?php
				    $query=@mysql_query("select * from tea_prod_class");
				    while ($row=@mysql_fetch_array($query)) {
				      echo "<option value=\"$row[class_code]\">$row[class_name]</option>";
					}
				    ?>
				</select>&nbsp;Ĭ��Ϊ����������������&nbsp;<font style="color:red;">*</font>
			</td>
			<td width=250px>
			��ƷͼƬ��
			</td>
		</tr>
   		<tr>
   			<td width=80 align=center>��Ʒ����</td>
	   		<td>
	  				<input type="text" name="prod_name" size=50 maxlength=50 /><font style="color:red;">*</font>
	    	</td>
	    	<td width=250px rowspan="2">
				<input name="upfile" type="file" style="width:200;border:1 solid #9a9999; font-size:9pt; background-color:#ffffff" size="17" onChange="if(this.value!=''){previewImg.src=this.value;}else{previewImg.src='../prod/images/prodphoto/no_pic.jpg'}">
				<br>
				�����ϴ����ļ�����Ϊ:<br>jpg|jpeg|png|pjpeg|gif|bmp|x-png|swf
			</td>
    	</tr>
       	<tr>
   			<td width=80 align=center>�г���</td>
  			<td>
  				<input type="text" name="src_price" size=10> Ԫ<font style="color:red;">*</font>
			</td>

   		</tr>
		<tr>
   			<td width=80 align=center>�ػݼ�</td>
  			<td>
  				<input type="text" name="new_price" size=10> Ԫ<font style="color:red;">*</font>
    		</td>
    		<td rowspan="8">
    			<img id="previewImg" src="../prod/images/prodphoto/no_pic.jpg" style="cursor: hand;" onClick="window.open(this.src);" width="150" height="120" alt="����鿴��ͼ"/>
    		</td>
    	</tr>
     	</tr>
       	<tr>
   			<td width=80 align=center>����</td>
  			<td>
  				<input type="text" name="suttle" size=10><font style="color:red;">*</font>
    		</td>
    	</tr>
     	<tr>
   			<td width=80 align=center>����</td>
  			<td>
			  <select name="season">
			  	<option value="">��ѡ��</option>
			    <option value="����">����</option>
			    <option value="�Ĳ�">�Ĳ�</option>
			    <option value="���">���</option>
			    <option value="���">���</option>
			  </select>
    		</td>
    	</tr>
     	<tr>
   			<td width=80 align=center>��װ</td>
  			<td>
  				<input type="text" name="packing" size=50 value="˫�����������Ĥ��װ">
    		</td>
    	</tr>
    	<tr>
   			<td width=80 align=center>���淽ʽ</td>
  			<td>
  				<input type="text" name="save_way" size=50 value="����������ζ�����±���">
    		</td>
    	</tr>
    	<tr>
			<td width=80 align=center>��Ч��</td>
  			<td>
  				<input type="text" name="exp" size=15 value="18����">
    		</td>
    	</tr>
    	<tr>
   			<td width=80 align=center>����</td>
  			<td>
  				<input type="text" name="prod_add" size=20 value="��Ϫ">
   			</td>
    	</tr>
       	<tr>
			<td width=80 align=center>��ҳ��ʾ</td>
  			<td>
			  <input type="radio" name="showindex" value="0" checked />����ʾ
			  <input type="radio" name="showindex" value="SHOWINDEX" />��ʾ<font style="color:red;">*</font>
    		</td>
    	</tr>
       	<tr>
		   	<td width=80 align=center>
		   		��Ʒ���
		   	</td>
  			<td colspan="2">
  				<textarea id="edited" name="content" style="width:65%;height:280px;"></textarea>
				<script language="javascript" type="text/javascript" src="edit/whizzywig.js"></script>
				<script type="text/javascript">buttonPath = "edit/images/";makeWhizzyWig("edited", "all");</script>
    		</td>
    	</tr>
    	<tr>
   			<td width=80></td>
  			<td  colspan="2">
			  <!--<input type="button" name="page" style="height:30px;" value="�����ҳ��" onclick="insertPageCode('<!#PAGE#!>');">&nbsp;&nbsp;&nbsp;-->
			  <input type="submit" name="into_prod" style="height:30px;" value="������Ʒ">
			  <input type="button" name="goback" style="height:30px;" value="ȡ������" onclick="window.history.back()">
    		</td>
    	</tr>
	</form>
</table>
<br>
</BODY>
</HTML>
