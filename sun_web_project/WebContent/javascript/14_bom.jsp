<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - BOM(Browser Object Model)</title>
	<script>
		/* 윈도우 해상도 확인하기 body에서 쳐서 가져오는게 아닌 윈도우에서 가져오는거라 바로 치면 된다. */
		let w = window.innerWidth;
		let h = window.innerHeight;
		
		document.write("width = "+ w +"<br>")
		document.write("height = "+ h +"<br>")
	</script>
	<style>
		button {
			width:150px;
			padding:10px 0;
			background:cyan;
			border:1px solid lightgray;
			border-radius:4px;
			cursor:pointer;
		}
		button:hover {
			text-decoration:underline;
		}
	</style>
	<script>
		function locationPage(page) {
			if(page =='naver'){
				window.open('about:blank').location.href = 'http://www.naver.com';/* .open('about:blank') = 새로운 창에서 띄우기  */
			
			}else if(page =='google'){
				window.open('about:blank').location.href = 'http://www.google.com';
			
			}else if(page =='daum'){
				window.open('about:blank').location.href = 'http://www.daum.net';
			}
		}
		
		function historyPage(page) {
			let hlength = window.history.length;
			alert(hlength);
			if(page == 'prev'){
				window.history.back();
			}else if(page == 'next'){
				window.history.forward();				
			}else if(page == 'go2'){
				window.history.go(2);
			}
		}
	</script>
</head>
<body>
	<h1>Browser Object Model</h1>
	<button type="button" onclick='locationPage("naver")'>네이버</button>
	<button type="button" onclick="locationPage('google')">구글</button>
	<button type="button" onclick="locationPage('daum')">다음</button>
	<button type="button" onclick="historyPage('prev')">Prev</button>
	<button type="button" onclick="historyPage('next')">Next</button>
	<button type="button" onclick="historyPage('go2')">go2</button>
</body>
</html>