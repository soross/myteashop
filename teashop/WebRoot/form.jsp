<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login Form</title>
	</head>
	<body>
		<h1>
			登入表单
		</h1>
		<spring:bind path="command.*">
			<font color="red"> <b>${status.errorMessage}</b> </font>
			<br>
		</spring:bind>

		请输入使用者名称与密码：
		<p>
		<form name="loginform" action="login.do" method="post">

			<spring:bind path="command.userName">     
        名称 <input type="text" name="${status.expression}"
					value="${status.value}" />
				<font color="red"><c:out value="${status.errorMessage}" />
				</font>
				<br />

			</spring:bind>

			<spring:bind path="command.password">     
        密码 <input type="password" name="${status.expression}"
					value="${status.value}" />
				<font color="red"><c:out value="${status.errorMessage}" />
				</font>
				<br />
			</spring:bind>

			<input type="submit" value="确定" />
		</form>
		注意：输入错误会再回到这个页面中。
	</body>
</html>
