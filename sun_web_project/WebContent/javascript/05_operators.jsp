<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS -Operators </title>
<script>
	let num1 = 100;
	let num2 = 50;
	
	document.write("<h5>산술연산자</h5>");
	document.write("num1 + num2 = " + (num1 + num2) + '<br>');
	document.write("num1 - num2 = " + (num1 - num2) + '<br>');
	document.write("num1 * num2 = " + (num1 * num2) + '<br>');
	document.write("num1 / num2 = " + (num1 / num2) + '<br>');
	document.write("num1 % num2 = " + (num1 % num2) + '<br><br>');
	document.write("<hr>");
	
	/*비교연산자 (결과는 true/false)*/
	document.write("<h5>비교연산자</h5>");
	document.write("num1 == num2 = " + (num1 == num2) + '<br>');
	/* document.write("num1 === num2 = " + (num1 === num2) + '<br>'); */ //타입채크
	document.write("num1 != num2 = " + (num1 != num2) + '<br>');
	document.write("num1 >= num2 = " + (num1 >= num2) + '<br>');
	document.write("num1 <= num2 = " + (num1 <= num2) + '<br><br>');
	document.write("<hr>");
	
	/*논리연산자 (shortcut)*/
	document.write("<h5>논리연산자</h5>");
	document.write("(10>9) && (10>5) = " + ((10>9) && (10>5)) + '<br>');
	document.write("(10>9) && (10<5) = " + ((10>9) && (10<5)) + '<br>');
	document.write("(10<9) && (10>5) = " + ((10<9) && (10>5)) + '<br>');
	document.write("(10<9) && (10<5) = " + ((10<9) && (10<5)) + '<br>');
	document.write("(10>9) || (10>5) = " + ((10>9) || (10>5)) + '<br>');
	document.write("(10>9) || (10<5) = " + ((10>9) || (10<5)) + '<br>');
	document.write("(10<9) || (10>5) = " + ((10<9) || (10>5)) + '<br>');
	document.write("(10<9) || (10<5) = " + ((10<9) || (10<5)) + '<br><br>');
	document.write("<hr>");
	
	/*증감연산자 (shortcut)*/
	var i = 10;
	document.write("<h5>증감연산자</h5>");
	document.write("i++ = " + (i++) + '<br>');	//out:10, in:11(출력은 10이지만 메모리에는 11이 들어감)
	document.write("++i = " + (++i) + '<br>');	//out:12, in:12(++이 앞에오면 먼저 증가하고 출력)
	document.write("--i = " + (--i) + '<br><br>');	//out:11, in:11
	document.write("<hr>");
	
	/*중첩연산자 (shortcut)*/
	var sum = 100;
	document.write("<h5>중첩(누적)연산자</h5>");
	document.write("sum = sum + 100 --> " + (sum = sum + 100) + '<br>');	//200
	document.write("sum += 100 --> " + (sum += 100) + '<br><br>');	//300
	document.write("<hr>");
	
	
	
	
	
	
</script>

</head>
<body>

</body>
</html>