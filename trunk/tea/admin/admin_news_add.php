<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);


if(isset($_POST[into_news])){
	$sql = "insert into tea_newsinfo(id,title,news_class,author,create_date,content,summary,state)".
		"values(NULL,'$_POST[title]','$_POST[classcode]','$_POST[author]', now(),'$_POST[content]','$_POST[summary]','$_POST[showindex]')";
	try{
		$db->query($sql);
		$db->Get_admin_msg("admin_news_add.php","��ӳɹ�!");
	}catch(exception $e){
		$db->Get_admin_msg("admin_news_add.php","���ʧ�ܣ������Ի���ϵ����Ա!");
	}

}


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
    <TH>��̨ >> �������</TH></TR></TBODY></TABLE><BR>

	<table border=0 cellspacing=1 align=center class=form>
	<tr>
		<th colspan="2">�������</th>
	</tr>
	<form action="" method="post" onsubmit="syncTextarea()" >
    <tr>
   <td width=80>���ŷ���<font style="color:red;">*</font></td>
  <td>
  <select name="classcode">
  	<option value="c4ca4238a0b923820dcc509a6f75849b">��ѡ����������</option>
    <?php
    $query=@mysql_query("select * from tea_newclass");
    while ($row=@mysql_fetch_array($query)) {
      echo "<option value=\"$row[classcode]\">$row[classname]</option>";
	}
    ?>
  </select>&nbsp;Ĭ��Ϊ�����Ŷ�̬��
    </td></tr>
   <tr>
   <td width=80>���ű���<font style="color:red;">*</font></td>
  <td>
  <input type="text" name="title" size=50>
  </select>
    </td>
    </tr>
       <tr>
   <td width=80>��������</td>
  <td>
  <input type="text" name="author" size=20>
    </td>
    </tr>
       <tr>
   <td width=80>��ҳ��ʾ<font style="color:red;">*</font></td>
  <td>
  <input type="radio" name="showindex" value="0" checked />����ʾ
  <input type="radio" name="showindex" value="SHOWINDEX" />��ʾ
    </td>
    </tr>
  <tr>
   <td width=80>����ժҪ</td>
  <td>
  	<textarea id="editedsummary" name="summary" style="width:55%;height:50px;"></textarea>
    </td>
    </tr>

       <tr>
   <td width=80>
   	��������<font style="color:red;">*<br/>
   	PS:</font>��ժҪ8�У�û��ժҪ10�У�����һ����ҳ��ʶ:<br />&lt;!#PAGE#!&gt;

   </td>
  <td>
  <textarea id="edited" name="content" style="width:75%;height:280px;"></textarea>
	<script language="javascript" type="text/javascript" src="edit/whizzywig.js"></script>
	<script type="text/javascript">buttonPath = "edit/images/";makeWhizzyWig("edited", "all");</script>
    </td>
    </tr>
    <tr>
   <td width=80></td>
  <td>
  <!--<input type="button" name="page" style="height:30px;" value="�����ҳ��" onclick="insertPageCode('<!#PAGE#!>');">&nbsp;&nbsp;&nbsp;-->
  <input type="submit" name="into_news" style="height:30px;" value="�������">
  <input type="button" name="goback" style="height:30px;" value="ȡ������" onclick="window.history.back()">
    </td>
    </tr>
     </form>
	</table>
<br>

	</BODY></HTML>
