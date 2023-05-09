<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JoinVo 임표트하기 임포트는 가장 위에 --%>
<%@ page import="com.beans.sun_web_project.JoinVo" %> 

<jsp:useBean id="joinVo" class="com.beans.sun_web_project.JoinVo"></jsp:useBean> <!-- JSP엔진한테 만들어달라고 하는 코드! -->
<jsp:setProperty name="joinVo" property="*" />	<!-- property에 아스타를 넣으면 전체가된다. -->

<%--
	JoinVo joinVo = new JoinVo();
	//request.setCharacterEncoding("utf-8"); //괄호 안에 인코딩 타입 넣기

	//회원가입폼에서 넘어오는 데이터를 변수에 저장하기
	// String 변수 = request.getParameter("name값"); 
	
	joinVo.setId(request.getParameter("id"));
	joinVo.setPassword(request.getParameter("password"));
	//String cpass = request.getParameter("cpass"); //cpass는 db로 연결하는거 아니니까 안받아도된다.
	joinVo.setName(request.getParameter("name"));
	joinVo.setGender(request.getParameter("gender"));
	joinVo.setEmail1(request.getParameter("email1"));
	joinVo.setEmail2(request.getParameter("email2"));
	joinVo.setAddr1(request.getParameter("addr1"));
	joinVo.setAddr2(request.getParameter("addr2"));
	joinVo.setTel(request.getParameter("tel"));
	joinVo.setPhone1(request.getParameter("phone1"));
	joinVo.setPhone2(request.getParameter("phone2"));
	joinVo.setPhone3(request.getParameter("phone3"));
	joinVo.setHobby(request.getParameterValues("hobby"));
	joinVo.setIntro(request.getParameter("intro"));
	
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 정보 - JavaBean 연동</h1>
	<ul>
		<li>
			<label>아이디 : </label>
			<span><jsp:getProperty name="joinVo" property="id"/></span> <!-- 이걸로 해도 결과는 같은데 더 편하게 joinVo.get 사용 -->
		</li>
		<li>
			<label>패스워드 : </label>
			<span> <%= joinVo.getPassword() %></span>
		</li>
		<li>
			<label>성명 : </label>
			<span> <%= joinVo.getName() %></span>
		</li>
		<li>
			<label>성별 : </label>
			<span> <%= joinVo.getGender() %></span>
		</li>
		<li>
			<label>이메일 : </label>
			<span> <%= joinVo.getEmail() %> </span>
		</li>
		<li>
			<label>주소 : </label>
			<span> <%= joinVo.getAddress() %></span>
		</li>
		<li>
			<label>통신사 : </label>
			<span> <%= joinVo.getTel() %></span>
		</li>
		<li>
			<label>휴대폰 번호 : </label>
			<span> <%= joinVo.getPhoneNumber() %></span>
		</li>
		<li>
			<label>취미 : </label>
			<span> <%= joinVo.getHobbyList() %></span>
		</li>
		<li>
			<label>자기소개 : </label>
			<span> <%= joinVo.getIntro() %></span>
		</li>
	</ul>
	
</body>
</html>