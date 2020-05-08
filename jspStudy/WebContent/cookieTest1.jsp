<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie ck = new Cookie("name" , "홍길동");
	ck.setMaxAge(600);
	response.addCookie(ck);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%= ck.getName() %></h2>
	<h2><%= ck.getValue() %></h2>
	<h2><%= ck.getMaxAge() %></h2>
	<a href = "cookieTest2.jsp">쿠키값 불러오기</a>
</body>
</html>