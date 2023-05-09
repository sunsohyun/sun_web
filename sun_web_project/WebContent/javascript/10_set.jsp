<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - Set</title>
	<script>
		const subList = new Set();//주머니 만들기
		subList.add('java');//넣기
		subList.add('oracle');//넣기
		subList.add('html');//넣기
		
		document.write('<h3>subList set</h3>');
		document.write('<p>subList.size -->' + subList.size +'</p>');	//3
		
		subList.forEach(function(value){
			document.write('<p>subList -->'+ value +'</p>');
		});
		document.write('<hr>');

		//arrow 형식으로 변경
		subList.forEach((value) => {
			document.write('<p>subList -->'+ value +'</p>');
		});
		
	</script>
</head>
<body>

</body>
</html>