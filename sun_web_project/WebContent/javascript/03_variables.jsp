<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Variables</title>
	<script>
		//변수 선언 - 변수의 타입은 저장되는 값에 따라 결정된다.
		var x = 100; 	//정수형 변수
		var y = 10.234; //실수형 변수
		var str = "자바스크립트"; //문자형 변수
		var str2 = '자바스크립트'; //문자형 변수
		
		x = 123.456;	//정수형  -> 실수형
		x = 'hello';	//실수형  -> 문자형
		
		var x = 'x변수 재정의!!';	//문자형 변수 재정의
		
		//let 키워드로 변수 정의
		let x2 = 100;
		x2 = 'hello';	//정수형 --> 문자형
		x2 = 123.456;	//문자형 --> 실수형
		
		/* let x2 = 'x2변수의 재정의!!'; */

		//const
		const x3 = 100;
		const y3 = 200;
		
		const x3 = 'x3변수의 재정의!!';
		
		alert("x3+y3-->" + x3);
		
	</script>
</head>
<body>
</body>
</html>