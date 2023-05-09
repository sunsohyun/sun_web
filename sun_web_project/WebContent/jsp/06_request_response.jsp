<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login form</h1>
	<form name="loginForm" action="06_loginCheck.jsp" method="post">	<!-- action에 입력한 파일에 입력한 아이디와 패스워드를 체크해달라고 부탁한다. method:넘어가는 방식 - get: -->
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id">
			</li>
			<li>
				<label>패스워드</label>
				<input type="password" name="pass">
			</li>
			<li>
				<button type="submit">Login</button>
				<button type="reset">Cancle</button>
			</li>
		</ul>
	</form>
</body>
</html>