$(document).ready(function(){
	//1. json data 준비 --> $.getJSON(url,function(JSON데이터를 담고 있는 변수(내가 지정하는거임)){})
	let url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20230115"
	$.getJSON(url, function(kobis){	//kobis는 getJSON안에서만 쓸수있는 로컬변수가 된다. 다른곳에서 사용 불가 따라서 output code 생성과 append모두 getJSON 안에서 진행해야 한다!!!!!!!!
	
		//2. output code 생성
		let code = "<h1>kobis 영화 박스오피스 </h1>";
		code += "<table><tr><th>순위</th><th>영화제목</th><th>개봉일자</th><th>당일매출액</th><th>누적매출액</th><th>당일관객수</th><th>누적관객수</th></tr>"; 
			
		for(movieRank of kobis.boxOfficeResult.dailyBoxOfficeList){
			
			code += "<tr>";
			code += "<td>"+ movieRank.rank +"</td>";
			code += "<td>"+ movieRank.movieNm +"</td>";
			code += "<td>"+ movieRank.openDt +"</td>";
			code += "<td>"+ movieRank.salesAmt +"</td>";
			code += "<td>"+ movieRank.salesAcc +"</td>";
			code += "<td>"+ movieRank.audiCnt +"</td>";
			code += "<td>"+ movieRank.audiAcc +"</td>";
			code += "</tr>";
		}
		code += "</table>";
		
		
		//3. body 위치에 append
		$("body").append(code);
	
	});//getJSON
	
});//ready