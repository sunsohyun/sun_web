$(document).ready(function(){
	
	const train = {"response":{"header":{"resultCode":"00","resultMsg":"NORMAL SERVICE."},"body":{"items":{"item":[{"vehiclekndid":"00","vehiclekndnm":"KTX"},{"vehiclekndid":"01","vehiclekndnm":"새마을호"},{"vehiclekndid":"02","vehiclekndnm":"무궁화호"},{"vehiclekndid":"03","vehiclekndnm":"통근열차"},{"vehiclekndid":"04","vehiclekndnm":"누리로"},{"vehiclekndid":"06","vehiclekndnm":"AREX직통"},{"vehiclekndid":"07","vehiclekndnm":"KTX-산천(A-type)"},{"vehiclekndid":"08","vehiclekndnm":"ITX-새마을"},{"vehiclekndid":"09","vehiclekndnm":"ITX-청춘"},{"vehiclekndid":10,"vehiclekndnm":"KTX-산천(B-type)"},{"vehiclekndid":16,"vehiclekndnm":"KTX-이음"},{"vehiclekndid":17,"vehiclekndnm":"SRT"}]}}}}
	
	
	let code = "<h1>"+ train.response.header.resultMsg +"</h1>";
	code += "<table><tr><th>열차명</th></tr>";
	
	for(trainName of train.response.body.items.item){
		
		
		code += "<tr>";
		code += "<td>"+ trainName.vehiclekndnm +"</td>";
		code += "</tr>";
	}
	code += "</table>";
	
	$("body").append(code);
	
	
	
	
	
	
});