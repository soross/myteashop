<?php
	session_start();
	if(!$_SESSION["userid"]) header("Location:index.php");
	include("header.inc.php");
	include("dbconnect.inc.php");
	$id = $_SESSION["userid"];
	$sql = "select * from users where id={$id}";
	$res = mysql_query($sql);
	$row = mysql_fetch_array($res);
	$reg_time = $row["reg_time"];
	$photo = $row["photo"];
	if($photo == "") {
		$photo = "logo.jpg";
	}
?>
 <table id="content">
  <tr>
   <td id="sidebar-left"><div class="block block-user" id="block-user-1">
  <h2 class="title"><?php echo $_SESSION["username"]; ?></h2>
 <div class="content">
<ul class="menu">
<li class="leaf"><a href="account.php" class="active">我的帐户</a></li>
<?php if( $_SESSION["userid"] == 1 and $_SESSION["username"] == "admin"){?>
<li class="leaf"><a href="admin.php" >用户列表</a></li>
<?php }?>
<li class="leaf"><a href="logout.php">注销登录</a></li>

</ul>
</div>
</div>
</td>
   <td id="main">
	<div class="breadcrumb"><a href="./">主页</a> &raquo; <a href="./">用户帐号</a></div><ul class="tabs primary">

	<li class="active"><a href="account.php" class="active">域名列表</a></li>
	<li><a href="edit_account.php">编辑账户</a></li>
	</ul>
    <!--域名列表-->
	<?php
		$domainListSql = "select domain_id,domain_name,date(reg_time) as reg_time from domains where user_id=".addslashes( $_SESSION["userid"]);
		$listRes = mysql_query( $domainListSql);
		if( mysql_num_rows( $listRes) > 0 ){
	?>
		<table class="list_tab" cellspacing="1" cellpadding="0" border="0" bgcolor="dad8d8">
		  <tr height="25" bgcolor="f0eeee">
			<td align="center">NO.&nbsp; </td>
			<td align="center">域名</td>
			<td align="center">注册时间</td>
			<td align="center">操作</td> 
		  </tr>
			<?php
				$i=0;
				while($row = mysql_fetch_array($listRes)) {		
					$i++;
					echo '<tr height="30" bgcolor="ffffff" onmouseout="this.style.backgroundColor=\'\';" onmouseover="this.style.backgroundColor=\'f1f1f1\';" style="">';
					echo '<td align=center>'.$i.'</td>';
					echo "<td>&nbsp;&nbsp;<b>{$row['domain_name']}</b></td>";
					echo "<td align=center>{$row['reg_time']}</td>";
					echo "<td align=center><form target='_blank' method='post' action='dns.php'><input name='domain' type='hidden' value='{$row['domain_name']}' /><input type='submit' value='解析' /></form></td></tr>";
				}
			?>
		 </table>
	<?php
		}else{
			echo "<br /><span class='nodomain'><a href='/'>您还没有注册域名？</a></span>";
		}
	?>
    
   </td>
  </tr>
 </table>

 </body>
</html>
