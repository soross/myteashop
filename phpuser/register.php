<?php
	//error_reporting(0);
	if( !empty( $_POST["op"]) == "注册新帐号") {
		include("do_register.inc.php");
		exit;
	}
	Session_start();
	include("header.inc.php");	
?>
 <table id="content">
  <tr>
   <td id="main">
<div class="breadcrumb"><a href="./">首页</a></div><h2>用户帐号</h2><ul class="tabs primary">
<li class="active"><a href="register.php" class="active">注册</a></li>
<li><a href="login.php">登录</a></li>
</ul>
<script>
	function check_form() {
		username = document.getElementById("edit-name").value;
		password = document.getElementById("edit-pass").value;
		password2 = document.getElementById("edit-pass2").value;
		captch = document.getElementById("edit-img").value;
		mail = document.getElementById("edit-mail").value;
		emsg = "";
		if(username == "") emsg += "用户名没有填写. \n";
		if(captch == "") emsg += "验证码没有填写. \n";
		if(password == "") emsg += "密码没有填写. \n";
		if(password != password2) emsg += "两次输入密码不同. \n";
		var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(!pattern.test(mail)) emsg += "邮件格式不正确. \n";
		if(emsg != "" ) {
			emsg = "\n\n"+emsg;
			emsg = emsg+"\n";
			alert(emsg);
			return false;
		}else {
			return true;
		}
	}
</script>
<!-- begin content -->
<form action="register.php"  method="post" id="user_register">

<div><div class="form-item">
 <label for="edit-name">用户名: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="60" name="edit[name]" id="edit-name"  size="30" value="" class="username form-text required" /><span class="chkNameRes"></span>
 <div class="description">你的全名或你更喜欢的名字。允许中英文、空格和数字，4位到8位。</div>
</div>
<div class="form-item">
 <label for="edit-pass">密码: <span class="form-required" title="This field is required.">*</span></label>
 <input type="password" maxlength="64" name="edit[pass]" id="edit-pass"  size="30" value="" class="form-text required" />
 <div class="description">请再次输入您的密码。</div>
 <input type="password" maxlength="64" name="edit[pass2]" id="edit-pass2"  size="30" value="" class="form-text required" />
</div>
<div class="form-item">
 <label for="edit-mail">E-mail地址: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="64" name="edit[mail]" id="edit-mail"  size="30" value="" class="form-text required" /><span class="chkMailRes"></span>
 <div class="description">您的邮件地址，请确保它是正确的。</div>
</div>
<div class="form-item">
 <label for="edit-img">验证码: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="5" name="edit[img]" id="edit-img"  size="30" value="" class="form-text required" /><img id="captch" src="img.php" /><span class="chkMailRes"></span>
 <div class="description">您的邮件地址，请确保它是正确的。</div>
</div>
<input type="submit" name="op" value="注册新帐号"  class="form-submit" onclick="return check_form();"  />
<br /><br />
</div></form>

<!-- end content -->
   </td>
  </tr>
 </table>
 </body>
</html>
