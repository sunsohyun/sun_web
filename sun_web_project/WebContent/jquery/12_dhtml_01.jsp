<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/sun_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		let code = "<h1>DHTML(Dynamic HTML)</h1>";
		let code2  = "<h2>code test!!!</h2>"
		/* $("body").html(code); *//* <body>태그사이에 code넣기 */
		/* $("body").html(code2); *//* 이러면 이것만 마지막으로 들어감. */
		$("body").append(code);
		$("body").append(code2);/* append 사용하면 여러번 가능 */
	});
</script>
</head>
<body>

</body>
</html>