$(document).ready(function(){
	//실행버튼 이벤트
	$("#btnKobis").click(function(){
		if($("#kselect").val() == "default"){
			alert("박스오피스를 선택해주세요");
			$("kselect").focus();
			return false;
		}else if($("input[type='text']").val() == ""){
			alert("날짜를 입력해주세요");
			$("input[type='text']").focus();
			return false;
		}else{
			//1. 일별,주말 박스오피스 JSON 데이터 가져오기   단, 날짜를 입력받는 시스템이라 targetDt=날짜가 입력받은 값으로 변경되어야함!!!-> kdate에 입력받은값 넣기
			let kdate = $("input[type='text']").val();//입력받은 날짜값 가져와서 kdate변수에 넣기
			let ktype = $("#kselect").val();
			let url = "";
			if(ktype == "Daily"){
				//일별 박스오피스 url 생성 (let 뺴고 넣기 위에서 선언했으니까)/ daily,weekly -> ktype로 변경
				url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/search"
						+ktype
						+"BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+kdate;
			}else{
				//주말 박스오피스 url 생성
				url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/search"
						+ktype
						+"BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+kdate;
			}
			
			$.getJSON(url,function(kobis){
				//2.  output 형식 생성
				let output = "<div id='d2'>";
				output += "<h1>"+ kobis.boxOfficeResult.boxofficeType +"</h1>";
				output += "<h3> 기간 : "+ kobis.boxOfficeResult.showRange +"</h3>";
				output += "<table><tr><th>순위</th><th>영화제목</th><th>개봉일자</th><th>당일매출액</th><th>누적매출액</th><th>당일관객수</th><th>누적관객수</th></tr>"; 
					
				/*for(movieRank of kobis.boxOfficeResult.dailyBoxOfficeList){
					
					output += "<tr>";
					output += "<td>"+ movieRank.rank +"</td>";
					output += "<td>"+ movieRank.movieNm +"</td>";
					output += "<td>"+ movieRank.openDt +"</td>";
					output += "<td>"+ movieRank.salesAmt +"</td>";
					output += "<td>"+ movieRank.salesAcc +"</td>";
					output += "<td>"+ movieRank.audiCnt +"</td>";
					output += "<td>"+ movieRank.audiAcc +"</td>";
					output += "</tr>";
				}	*/
				
				let listName = null;
				if(ktype == "Daily"){
					listName = kobis.boxOfficeResult.dailyBoxOfficeList;
				}else{
					listName = kobis.boxOfficeResult.weeklyBoxOfficeList;
				}
				
				for(movieRank of listName){
					
					output += "<tr>";
					output += "<td>"+ movieRank.rank +"</td>";
					output += "<td>"+ movieRank.movieNm +"</td>";
					output += "<td>"+ movieRank.openDt +"</td>";
					output += "<td>"+ movieRank.salesAmt +"</td>";
					output += "<td>"+ movieRank.salesAcc +"</td>";
					output += "<td>"+ movieRank.audiCnt +"</td>";
					output += "<td>"+ movieRank.audiAcc +"</td>";
					output += "</tr>";
				}
				
				output += "</table>";		
				output += "</div>";		
				
				
				//3. 출력 append
				//이전 출력화면 삭제하기
				$("div#d2").remove();
				
				//출력
				/*$("body").append(output);*///append는 그전에 있던거에 계속 쌓여서 출력됨 (html은 이전출력물 전부 지워짐 선택박스도 다 사라져버림)
				
				//append는 무조건 마지막에 추가됨 -> 중간에 넣고 싶을때는 before/after 사용!
				/*$().before();*/	//P1전에
				$("#p1").css("background",'tomato');	//d2 다음에
				$("#d1").after(output);	//d1 다음에
				
			});//getJSON
		
		}
	
	});//btnKobis
	
	
});//ready