<?php
session_start();
session_destroy();
?>
<html>
<head>
	<meta http-equiv='Content-Type' content='text/html; charset=GBK'>
	<meta name='Author' content='Alan'>
	<link rev=MADE href='mailto:loveecody@foxmail.com'><title>后台管理</title>
	<link rel='stylesheet' type='text/css' href='css/private.css'>
	<script> if(self!=top){window.open(self.location,'_top'); } </script>
</head>
<body>
	<br>
	<br>
	<br>
	<form action="action/login.php" method="post">
		<table border=0 cellspacing=1 align=center class="form tablelayout">
			<tr>
				<th colspan="2">用户登录</th>
			</tr>
			<tr>
				<td align="right">登录用户:</td>
				<td colspan="">
					<input type="text" name="username" size="20" maxlength="20"/>
				</td>
			</tr>
			<tr>
				<td align="right">登录密码:</td>
				<td colspan="">
					<input type="password" name="password" size="20" maxlength="20"/>
				</td>
			</tr>
			<tr>
				<td align="right">验&nbsp;证&nbsp;码:</td>
				<td>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<td style="width:60px;">
								<input type="text" name="code" size="7" maxlength="4"/>
							</td>
							<td>
								<img id="codeimg" src="../random/imgcode.php" width="60" height="20" style="border:1px #dddddd solid;cursor:pointer">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" height='30'>
					<input type="submit" name="login" value=" 登录 "/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>