$(document).ready(function(){
		const gangnam = {title:"강남고등학교",address:"서울시 강남구 강남대로123",grade: {gtitle:"2학년 1반", 
																				list:[{name:"짱구",kor:90,eng:90,math:90},
																					  {name:"철수",kor:100,eng:100,math:100},
																					  {name:"유리",kor:80,eng:80,math:80},
																					  {name:"훈이",kor:20,eng:20,math:20},
																					  {name:"맹구",kor:90,eng:100,math:100}] }};
		/* json 객체인 gangnam 데이터를 테이블 형식으로 출력
			 titlt - h1
			 address, gtitle - h3
			 list - 테이블형식*/
		
		let code = "<h1>"+ gangnam.title +"</h1>";
		code += "<h3>"+ gangnam.address +"</h3>";
		code += "<h3>"+ gangnam.grade.gtitle +"</h3>";
		code += "<table><tr><th>성명</th><th>국어</th><th>영어</th><th>수학</th><th>총점</th><th>평균</th></tr>";
		
		for(score of gangnam.grade.list){
			
			let tot = score.kor+score.eng+score.math;
			let avg = Math.round(tot/3);/* Math.round : 소수점 반올림 */
			
			code += "<tr>";
			code += "<td>"+ score.name +"</td>";
			code += "<td>"+ score.kor +"</td>";
			code += "<td>"+ score.eng +"</td>";
			code += "<td>"+ score.math +"</td>";
			code += "<td>"+ tot +"</td>";
			code += "<td>"+ avg +"</td>";
			code += "</tr>";
		}
		code += "</table>";
		
		$("body").append(code);
	});