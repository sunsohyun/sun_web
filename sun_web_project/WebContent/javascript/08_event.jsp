<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - Event</title>
	<script>
		function validationCheck(){
			let id = document.getElementById("id");/* value를 여기서 빼고 */
			let pass = document.getElementById("pass");
			
			if(id.value == ""){/* 여기서 value를 넣어서 id의 값을 체크하면 focus쓸때 getelement다 쓸거없이 id.focus로 간단히 호출 가능 */
				alert("아이디를 입력해주세요");
				id.focus();
			}else if(pass.value == ""){
				alert("패스워드를 입력해주세요");
				pass.focus();
			}
		}
	</script>
</head>
<body>
	<h1>Login Form</h1>
	<ul>
		<li>
			<label>아이디</label>
			<input type="text" name="id" id="id">
		</li>
		<li>
			<label>패스워드</label>
			<input type="password" name="pass" id="pass">
		</li>
		<li>
			<button type="button" onclick='validationCheck()'>로그인</button>
			<button type="reset">다시쓰기</button>
		</li>
	</ul>
</body>
</html>