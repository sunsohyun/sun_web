<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DHTML & JSON</title>
<script src="http://localhost:9000/sun_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		const employee = {list : [{"name":"홍길동", addr:'서울시 강남구', age:30}, //employee의 JSON 데이터의  name은 list / value는 배열[]
								  {"name":"강동원", addr:'서울시 강남구', age:30},
								  {"name":"손석구", addr:'서울시 강남구', age:30},
								  {"name":"테스트", addr:'서울시 강남구', age:30}
								 ]
						 }; // { } = JSON 데이터
		
		let code = "<table><tr><th>번호</th><th>성명</th><th>주소</th><th>나이</th></tr>";
		
		for(index in employee.list){
			let no = parseInt(index) + 1;
			code += "<tr>";
			code += "<td>"+ no +"</td>";
			code += "<td>"+ employee.list[index].name +"</td>";
			code += "<td>"+ employee.list[index].addr +"</td>";
			code += "<td>"+ employee.list[index].age +"</td>";
			code += "</tr>";
		};
		
		code += "</table>";/* 한줄로 써도됨 */
		$("body").append(code);
	});
</script>
<style>/* 태그들이 메모리에 올라가 있어야 적용가능!! */
	table, th, td {border:1px solid gray;}
	th {background:lightgray;}
</style>
</head>
<body>

</body>
</html>