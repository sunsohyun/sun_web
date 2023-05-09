<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - DOM</title>
	<style>
		div#menu{
			border:1px solid red;
		}
		div.top_menu > ul {
			list-style-type:none;
			background:pink;
			margin:0px;	padding:0px;
			overflow:hidden;
		}
		div.top_menu > ul > li {
			float:left;
		}
		div.top_menu > ul > li > a {
			display:block;
			text-decoration:none;
			text-align:center;
			width:100px;
			font-size:11pt;
			padding:8px 0;
			color:black;
		}
		div#menu div.sub_menu {
			height:150px;
			background:powderblue;
			display:none;
		}
	</style>
	<script>
	window.onload = () =>{
			/* document.getElementsByTagName('h1')[0].innerHTML ='(Head)DOM Test~!!!'; */
			/* [0] : 인덱스 번호 쓰는 이유는 s붙어서 여러개 들어갈수 있는데 하나만 넣은경우 h1이 몇번쨰의 h1인지 알려줘야한다!*/
			
			/* 또다른 방법 h1이 여러개일때 추천*/
			const h1_list = document.getElementsByTagName('h1');
			h1_list[0].innerHTML = '(Head)DOM Test~!!!';
			h1_list[1].style.color = "mediumseagreen";
			h1_list[1].style.textDecoration = "underline";/* textDecoration 같은 프로퍼티는 카멜케이스(두번째오는 단어 첫글자 대문자) 형식으로 써야한다. */
			
			const m_list = document.getElementsByClassName("m");
			/* alert(m_list.length); */
			m_list[2].style.textDecoration = "underline";
			m_list[2].style.fontWeight = "bold";
			
			document.getElementById('menu').style.border = "1px solid blue";/* 똑같은 아이디가 두개여도 에러발생은 안하지만 첫번쨰로 오는 아이디만 변경됨!!! */
		
		}
		
		function show(){
			let check = document.getElementsByClassName("sub_menu")[0].id;
			if(check == 'hide'){
				document.getElementsByClassName("sub_menu")[0].style.display = 'block';
				document.getElementsByClassName("sub_menu")[0].id = 'show';
			}else{
				document.getElementsByClassName("sub_menu")[0].style.display = 'none';
				document.getElementsByClassName("sub_menu")[0].id = 'hide';
			}
		}
		
		
	</script>
</head>
<body>
	<h1 id='test'>Document Object Model</h1>
	<h1 id='test'>Document Object Model</h1>
	<div id="menu">
		<div class="top_menu" onclick="show()"> 
			<ul>
				<li><a href="#" class="m">로그인</a></li>
				<li><a href="#" class="m">회원가입</a></li>
				<li><a href="#" class="m">고객센터</a></li>
				<li><a href="#" class="m">공지사항</a></li>
				<li><a href="#" class="m">게시판</a></li>
			</ul>
		</div>
		<div class="sub_menu" id="hide"></div>
	</div>
</body>
</html>