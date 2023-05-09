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
		//데이터 넣기 버튼 클릭이벤트
		$("#set_data").click(function(){
			//1. form 태그에 데이터 넣기 : value ---> val() 
			//document.getElementById("name").value = "홍길동"; --> $("#name").val("홍길동");
			$("#name").val("홍길동");
			
			
			//2. innerHTML --> text()
			$("#addr").text("서울시 강남구");
			
			//3. text에 html태그를 추가하는 경우 --> html()
			/* $("#hobby").html("<li>게임하기</li>"); *///--> html 태그를 넣을떄는 .text 사용시 태그도 문자로 출력됨 -> .html 써야한다!
		
			//4. append(html태그) - 여러개 동시에 추가할떄 사용 : append - 
			$("#hobby").append("<li>게임하기</li>").append("<li>등산하기</li>")
						.append("<li>명상하기</li>").append("<li>독서하기</li>");
		
			//5. a태그 링크형탤로 d1에 추가하기 
			$("#d1").html("<a href='http://www.naver.com'>naver</a>");
			
			//이미지 추가
			$("#d2").html("<img src='../images/googlelogo_png.png'>");
			$("#d2 > img").css("width","30%");/* <<<순서가 매우 중요!!! 이미지를 먼저 불러와야 크기 적용이 가능하기때문에 먼저오면 적용 안된다  */
		});
		
		//데이터 가져오기 버튼
		$("#get_data").click(function(){
			//id가 name인 폼에서 데이터를 가져와서 --> id가 getName인 폼에 넣기 
			$("#getName").val($("#name").val());/* 1. 가져 오는건 val() 괄호를 비워두면 됨!! *//* 2. 가져온걸 getName에 넣기 */
			
			//네이버의 href속성을 s1에 넣기
			$("#s1").text($("#d1 a").attr("href"));/*1. 어트리뷰트 href를 가져와야 하니까 attr메소드 사용  2.넣을때 text를 넣기   */
		
			//이미지의 src속성을 s2에 넣기
			$("#s2").text($("#d2 img").attr("src"));
			
			
		})
		
		
	});
</script>
</head>
<body><!-- 데이터 하나도 없는 상태 -->
	<h1>Set/Get Content</h1>
	이름 : <input type="text" name="name" id="name"><br>
	주소 : <p id="addr"></p>
	취미 : <ul id="hobby"></ul>
	네이버 주소 : <div id="d1"></div>
	이미지 주소 : <div id="d2"></div>
	<button type="button" id="set_data">데이터 넣기</button>
	<hr>
	Get Name : <input type="text" id="getName"><br>
	네이버 주소 가져오기 : <span id="s1"></span><br>
	이미지 주소 가져오기 : <span id="s2"></span><br>
	<button type="button" id="get_data">데이터 가져오기</button>
	
	
</body>
</html>


















