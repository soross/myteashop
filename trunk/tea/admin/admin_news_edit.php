<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);


if(isset($_POST[into_news])){
    try{
     	$db->query("update `tea_newsinfo` set title='$_POST[title]',news_class='$_POST[newsclass]',author='$_POST[author]'," .
     		"state='$_POST[showindex]',summary='$_POST[summary]',content='$_POST[content]' where id='$_GET[id]'");
    	$db->Get_admin_msg("admin_news_list.php?page=$_GET[page]","修改成功!");
    }catch(exception $e){
		$db->Get_admin_msg("admin_news_list.php?page=$_GET[page]","修改失败!");
    }
}

if(!empty($_GET[id])){
	$sql="select * from tea_newsinfo where id='$_GET[id]'";
    $query=mysql_query($sql);
    $row_news=mysql_fetch_array($query);
}


?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>后台管理</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=Alan name=Author><LINK rev=MADE
href="mailto:haowubai@hotmail.com"><LINK href="images/private.css"
type=text/css rel=stylesheet>
<META content="MSHTML 6.00.6000.16890" name=GENERATOR></HEAD>
<BODY>
<TABLE class=navi cellSpacing=1 align=center border=0>
  <TBODY>
  <TR>
    <TH>后台 >> 添加新闻</TH></TR></TBODY></TABLE><BR>

	<table border=0 cellspacing=1 align=center class=form>
	<tr>
		<th colspan="2">修改新闻</th>
	</tr>
	<form action="" method="post" onsubmit="syncTextarea()" >
    <tr>
   <td width=80>新闻分类<font style="color:red;">*</font></td>
  <td>
  <select name="newsclass">
    <?php
    $query=mysql_query("select * from tea_newclass");
    while ($row=mysql_fetch_array($query)) {
    	if($row[classcode]==$row_news[news_class]){
    		echo "<option value=\"".$row[classcode]."\" selected>$row[classname]</option>";
    	}else{
    		echo "<option value=\"".$row[classcode]."\">$row[classname]</option>";
    	}
    	//$selected= $row[classcode]==$row_news[news_class] ? "selected" : "";
    	//echo "<option value=\"".$row[classcode]."\" ".$selected." >$row[classname]</option>";
	}
    ?>
  </select>
    </td></tr>
   <tr>
   <td width=80>新闻标题<font style="color:red;">*</font></td>
  <td>
  <input type="text" name="title" size=50 value="<?php echo $row_news[title]?>">
  </select>
    </td>
    </tr>
       <tr>
   <td width=80>新闻作者</td>
  <td>
  <input type="text" name="author" size=20 value="<?php echo $row_news[author]?>">
    </td>
    </tr>
    <tr>
   <td width=80>首页显示<font style="color:red;">*</font></td>
  <td>
  <?php
  	if($row_news[state]=="SHOWINDEX"){
  ?>
  <input type="radio" name="showindex" value="0" />不显示
  <input type="radio" name="showindex" value="SHOWINDEX"  checked />显示
  <?php
  	}else{
  ?>
  <input type="radio" name="showindex" value="0" checked/>不显示
  <input type="radio" name="showindex" value="SHOWINDEX" />显示
<?php
  	}
?>
    </td>
    </tr>
      <tr>
   <td width=80>新闻摘要</td>
  <td>
  	<textarea id="editedsummary" name="summary" style="width:55%;height:50px;"><?php echo $row_news[summary]?></textarea>
    </td>
    </tr>
       <tr>
   <td width=80>新闻内容<font style="color:red;">*<br/>
   	PS:</font>有摘要8行，没有摘要10行，插入一个分页标识:<br />&lt;!#PAGE#!&gt;</td>
  <td>
  <textarea id="edited" name="content" style="width:75%;height:280px;"><?php echo $row_news[content]?></textarea>
	<script language="javascript" type="text/javascript" src="edit/whizzywig.js"></script>
	<script type="text/javascript">buttonPath = "edit/images/";makeWhizzyWig("edited", "all");</script>
    </td>
    </tr>
    <tr>
   <td width=80></td>
  <td>
 <input type="submit" name="into_news" style="height:30px;" value="修改新闻">
  <input type="button" name="goback" style="height:30px;" value="取消修改返回新闻列表" onclick="javascript:location.href='admin_news_list.php?page=<?php echo $_GET[page]; ?>'">
    </td>
    </tr>
     </form>
	</table>
<br>

	</BODY></HTML>
