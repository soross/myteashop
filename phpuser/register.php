<?php
	//error_reporting(0);
	if( !empty( $_POST["op"]) == "ע�����ʺ�") {
		include("do_register.inc.php");
		exit;
	}
	Session_start();
	include("header.inc.php");	
?>
 <table id="content">
  <tr>
   <td id="main">
<div class="breadcrumb"><a href="./">��ҳ</a></div><h2>�û��ʺ�</h2><ul class="tabs primary">
<li class="active"><a href="register.php" class="active">ע��</a></li>
<li><a href="login.php">��¼</a></li>
</ul>
<script>
	function check_form() {
		username = document.getElementById("edit-name").value;
		password = document.getElementById("edit-pass").value;
		password2 = document.getElementById("edit-pass2").value;
		captch = document.getElementById("edit-img").value;
		mail = document.getElementById("edit-mail").value;
		emsg = "";
		if(username == "") emsg += "�û���û����д. \n";
		if(captch == "") emsg += "��֤��û����д. \n";
		if(password == "") emsg += "����û����д. \n";
		if(password != password2) emsg += "�����������벻ͬ. \n";
		var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(!pattern.test(mail)) emsg += "�ʼ���ʽ����ȷ. \n";
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
 <label for="edit-name">�û���: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="60" name="edit[name]" id="edit-name"  size="30" value="" class="username form-text required" /><span class="chkNameRes"></span>
 <div class="description">���ȫ�������ϲ�������֡�������Ӣ�ġ��ո�����֣�4λ��8λ��</div>
</div>
<div class="form-item">
 <label for="edit-pass">����: <span class="form-required" title="This field is required.">*</span></label>
 <input type="password" maxlength="64" name="edit[pass]" id="edit-pass"  size="30" value="" class="form-text required" />
 <div class="description">���ٴ������������롣</div>
 <input type="password" maxlength="64" name="edit[pass2]" id="edit-pass2"  size="30" value="" class="form-text required" />
</div>
<div class="form-item">
 <label for="edit-mail">E-mail��ַ: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="64" name="edit[mail]" id="edit-mail"  size="30" value="" class="form-text required" /><span class="chkMailRes"></span>
 <div class="description">�����ʼ���ַ����ȷ��������ȷ�ġ�</div>
</div>
<div class="form-item">
 <label for="edit-img">��֤��: <span class="form-required" title="This field is required.">*</span></label>
 <input type="text" maxlength="5" name="edit[img]" id="edit-img"  size="30" value="" class="form-text required" /><img id="captch" src="img.php" /><span class="chkMailRes"></span>
 <div class="description">�����ʼ���ַ����ȷ��������ȷ�ġ�</div>
</div>
<input type="submit" name="op" value="ע�����ʺ�"  class="form-submit" onclick="return check_form();"  />
<br /><br />
</div></form>

<!-- end content -->
   </td>
  </tr>
 </table>
 </body>
</html>