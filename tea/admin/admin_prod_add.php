<?php
include_once ('admin_global.php');

$r=$db->Get_user_shell_check($uid, $shell);

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>后台管理</TITLE>
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
			<TH>后台 >> 新增产品</TH>
		</TR>
	</TBODY>
</TABLE>
<BR>

<table border=0 cellspacing=1 align=center class=form>
		<tr>
			<th colspan="3">新增产品</th>
		</tr>
	<form action="action_admin_prod_add.php" method="post" onsubmit="syncTextarea()" enctype="multipart/form-data">
    	<tr >
   			<td width="80px" align=center>产品类别</td>
			<td>
				<select name="classcode">
					<option value="64be74cd3ffd420cd5b97f39dc9d9073">请选择产品类型</option>
				    <?php
				    $query=@mysql_query("select * from tea_prod_class");
				    while ($row=@mysql_fetch_array($query)) {
				      echo "<option value=\"$row[class_code]\">$row[class_name]</option>";
					}
				    ?>
				</select>&nbsp;默认为【鲜香型铁观音】&nbsp;<font style="color:red;">*</font>
			</td>
			<td width=250px>
			产品图片：
			</td>
		</tr>
   		<tr>
   			<td width=80 align=center>产品名称</td>
	   		<td>
	  				<input type="text" name="prod_name" size=50 maxlength=50 /><font style="color:red;">*</font>
	    	</td>
	    	<td width=250px rowspan="2">
				<input name="upfile" type="file" style="width:200;border:1 solid #9a9999; font-size:9pt; background-color:#ffffff" size="17" onChange="if(this.value!=''){previewImg.src=this.value;}else{previewImg.src='../prod/images/prodphoto/no_pic.jpg'}">
				<br>
				允许上传的文件类型为:<br>jpg|jpeg|png|pjpeg|gif|bmp|x-png|swf
			</td>
    	</tr>
       	<tr>
   			<td width=80 align=center>市场价</td>
  			<td>
  				<input type="text" name="src_price" size=10> 元<font style="color:red;">*</font>
			</td>

   		</tr>
		<tr>
   			<td width=80 align=center>特惠价</td>
  			<td>
  				<input type="text" name="new_price" size=10> 元<font style="color:red;">*</font>
    		</td>
    		<td rowspan="8">
    			<img id="previewImg" src="../prod/images/prodphoto/no_pic.jpg" style="cursor: hand;" onClick="window.open(this.src);" width="150" height="120" alt="点击查看大图"/>
    		</td>
    	</tr>
     	</tr>
       	<tr>
   			<td width=80 align=center>净重</td>
  			<td>
  				<input type="text" name="suttle" size=10><font style="color:red;">*</font>
    		</td>
    	</tr>
     	<tr>
   			<td width=80 align=center>季节</td>
  			<td>
			  <select name="season">
			  	<option value="">请选择</option>
			    <option value="春茶">春茶</option>
			    <option value="夏茶">夏茶</option>
			    <option value="暑茶">暑茶</option>
			    <option value="秋茶">秋茶</option>
			  </select>
    		</td>
    	</tr>
     	<tr>
   			<td width=80 align=center>包装</td>
  			<td>
  				<input type="text" name="packing" size=50 value="双层真空无氧铝膜包装">
    		</td>
    	</tr>
    	<tr>
   			<td width=80 align=center>保存方式</td>
  			<td>
  				<input type="text" name="save_way" size=50 value="防潮、防异味、常温保存">
    		</td>
    	</tr>
    	<tr>
			<td width=80 align=center>有效期</td>
  			<td>
  				<input type="text" name="exp" size=15 value="18个月">
    		</td>
    	</tr>
    	<tr>
   			<td width=80 align=center>产地</td>
  			<td>
  				<input type="text" name="prod_add" size=20 value="安溪">
   			</td>
    	</tr>
       	<tr>
			<td width=80 align=center>首页显示</td>
  			<td>
			  <input type="radio" name="showindex" value="0" checked />不显示
			  <input type="radio" name="showindex" value="SHOWINDEX" />显示<font style="color:red;">*</font>
    		</td>
    	</tr>
       	<tr>
		   	<td width=80 align=center>
		   		产品简介
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
			  <!--<input type="button" name="page" style="height:30px;" value="插入分页符" onclick="insertPageCode('<!#PAGE#!>');">&nbsp;&nbsp;&nbsp;-->
			  <input type="submit" name="into_prod" style="height:30px;" value="新增产品">
			  <input type="button" name="goback" style="height:30px;" value="取消返回" onclick="window.history.back()">
    		</td>
    	</tr>
	</form>
</table>
<br>
</BODY>
</HTML>
