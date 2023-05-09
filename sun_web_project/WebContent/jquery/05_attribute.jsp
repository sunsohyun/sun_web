<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	span {
		padding:10px;
		background:tomato;
		cursor:pointer;
	}
</style>
<script src="http://localhost:9000/sun_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		
		/* alert("ss"); *///라이브러리 임포트 잘되었는지 확인하는 작업!
		/* $("span#event").click(function(){
			//alert("이미지 호출");
			$("img").attr("src","../images/h3_event.gif");
		});
		$("span#logo").click(function(){
			//alert("이미지 호출");
			$("img").attr("src","../images/logo.png");
		});
		$("span#trash").click(function(){
			//alert("이미지 호출");
			$("img").attr("src","../images/trash.jpg");
		}); */
		
		$("span").click(function(){
			let id = $(this).attr("id");
			if(id == "event"){
				$("img").attr("src","../images/h3_event.gif");
			}else if(id == "logo"){
				$("img").attr("src","../images/logo.png");
			}else{
				$("img").attr("src","../images/trash.jpg");
				$("img").css("width","30%");
			}
		});
		
	});

</script>
</head>
<body>
	<span id="event">이벤트</span>
	<span id="logo">로고</span>
	<span id="trash">휴지통</span>
	<hr>
	<img src="../images/h3_event.gif">
</body>
</html>