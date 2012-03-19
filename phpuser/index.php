<?php
	error_reporting(0);
	include("header.inc.php");
	session_start();
?>
 <table id="content">
  <tr>
<?php
	if(!$_SESSION["userid"]) {
?>
   <td id="sidebar-left"><div class="block block-user" id="block-user-0">
 <h2 class="title">用户登录</h2>
 <div class="content"><form action="login.php"  method="post" id="user-login-form">
<div><div class="form-item">
 <label for="edit-name">用户名: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="60" name="edit[name]" id="edit-name"  size="15" value="" class="form-text required" />
</div>
<div class="form-item">
 <label for="edit-pass">密码: <span class="form-required" title="This field is required.">*</span></label>
 <input type="password" maxlength="" name="edit[pass]" id="edit-pass"  size="15"  class="form-text required" />
</div>
<input type="submit" name="op" value="登录"  class="form-submit" />
<div class="item-list"><ul><li><a href="register.php" title="建立一个新的用户帐号">注册新帐号</a></li></ul></div>
</div></form>
</div>
</div>
</td>
<?php
	}else{
?>
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
<?php 
	}
?>
	
   <td id="main">
	<div id="first-time">
      <h2 class="title">域名查询</h2>
	  <dl class="clearfix removeClass">			
		  <img src="img/40.gif" />			
	  </dl>
      <div id="query_inp"><div class="www">www.</div> <input class="domain" type="text" value="">
	  <input width="54" type="image" border="0" height="24" class="imgs" name="imgf" src="img/sd.gif">
	  <br class="cb" />
	  </div>
	  <div class="dChk">
		  <input type="checkbox" checked="true" value="com" /><span>.com</span> 
		  <input type="checkbox" checked="true" value="net" /><span>.net</span>
		  <input type="checkbox" checked="true" value="org" /><span>.org</span>
		  <input type="checkbox" value="us" /><span>.us</span>
		  <input type="checkbox" value="co.uk" /><span>.co.uk</span>
		  <input type="checkbox" value="biz" /><span>.biz</span>
	  </div>
   </td>
  </tr>
 </table>
 </body>
</html>
