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
		/*
			방법1. $(선택자).이벤트핸들러메소드(함수정의); 
			방법2. $(선택자).on("이벤트핸들러메소드", 함수정의);
			방법3. $(선택자).on({ <-하나의 선택자에 여러개의 이벤트를 사용하고 싶을때 사용하는 방법!
				"이벤트핸들러 메소드" : 함수정의,
				"이벤트핸들러 메소드" : 함수정의,
				...
			});
		*/
		$("#btn1").click(function(){	/* 자바스크립트에서는 button태그에서 onclick을 써줬음 */
			alert("button1 클릭!");
		});	
		$("#btn2").on("click",function(){
			alert("button2 클릭!");
		});
		$("#btn3").on({
			click : function(){ 
				alert("hello~ jQuery!!!");
			},
			mouseenter : function(){ /* mouseenter = .hover와 비슷한 효과 단, 마우스 떨어져도 그대로임 */
				$(this).css("background","tomato");/* this = 자기자신 */
			},
			mouseleave : function(){ /* 마우스 떨어질때 이벤트 */
				$("#btn2").css("background","green");	/* 마우스를 btn3에서 떨어트릴때 이벤트 발생은 버튼2에서 발생한다! */			
			}
		});
	});
</script>
</head>
<body>
	<h1>Events</h1>
	<button type="button" id="btn1">Button1</button>
	<button type="button" id="btn2">Button2</button>
	<button type="button" id="btn3">Button3</button>
</body>
</html>