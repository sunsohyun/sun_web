<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 전역변수 선언 - jsp가 서블릿으로 변환될때 전역변수로 선언된다. 선언만 한거라 웹에서는 볼수없음!--%>
	<%!
		String name ="홍길동";
	%>
	<%! public static final int START = 1; %> 
</body>
</html>