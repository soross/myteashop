<?php
	session_start();
	if(!$_SESSION["userid"]) header("Location:index.php");
	include("header.inc.php");
	include("dbconnect.inc.php");
	$where = '';
	if( !empty( $_GET["name"])) {
		$name = addslashes($_GET["name"]);
		$where .= " and username like '%{$name}%' ";
	}
	$sql = "select * from users where 1 {$where} limit 20";
	$res = mysql_query($sql);
?>
 <table id="content">
  <tr>
   <td id="sidebar-left"><div class="block block-user" id="block-user-1">
  <h2 class="title"><?php echo $_SESSION["username"]; ?></h2>
 <div class="content">
<ul class="menu">
<li class="leaf"><a href="account.php" class="active">我的帐户</a></li>
<li class="leaf"><a href="admin.php" >用户列表</a></li>
<li class="leaf"><a href="logout.php">注销登录</a></li>

</ul>
</div>
</div>
</td>
   <td id="main">
<div class="breadcrumb"><a href="./">主页</a> &raquo; 用户列表</div><div class="help"><p>最近20个符合条件的注册会员列表。</p>
</div><hr />
<!-- begin content -->
<script language="javascript">
	function doDel(title,id) {
		if(confirm('你确定要删除用户？\n-------------------------\n'+title+'\n-------------------------'))
			location.href='del_account.php?id='+id;
	}
</script>
<form action="admin.php"  method="get" >
<div><div class="container-inline"><div class="form-item">
 <label >检索用户: </label>
用户名模糊搜索：<input type="text" name="name"  value="<?php echo $_SESSION['username']; ?>" />
<input type="submit" value="检    索"  class="form-submit" /><br /><br />
</div>
</div>
</div></form>

<table class="list_tab" cellspacing="1" cellpadding="0" border="0" bgcolor="dad8d8">
 <thead><tr height="25" bgcolor="f0eeee">
 <td align="center">NO.</td>
 <td align="center">用户名</td>
 <td align="center">邮箱</td>
 <td align="center">注册时间</td>
 <td align="center">操作</td> </tr>
 </thead>
<tbody>
<?php
	while($row = mysql_fetch_array($res)) {
		echo '<tr height="30" bgcolor="ffffff" onmouseout="this.style.backgroundColor=\'\';" onmouseover="this.style.backgroundColor=\'f1f1f1\';" style="">';
		echo "<td align=center>{$row['id']}</td>";
		echo "<td>&nbsp;&nbsp;{$row['username']}</td>";
		echo "<td>&nbsp;{$row['mail']}</td>";
		echo "<td align=center class='active'>".substr($row['reg_time'],0,11)."</td>";
		if($_SESSION["userid"]=="1") {
			echo "<td align=center><a href='edit_account.php?id={$row['id']}'>编辑</a>&nbsp;&nbsp;<a  href='#' onclick='return doDel(\"{$row['username']}\",{$row['id']});'>删除</a></td> </tr>";
		}else {
			echo "<td><a href='detail.php?id={$row['id']}'>查看</a></td> </tr>";
		}
	}
?>
</tbody></table>
<?php 
	if(mysql_num_rows($res)==0) echo "没有检索到相关的用户";
?>
<!-- end content -->
   </td>
  </tr>
 </table>
 </body>
</html>
