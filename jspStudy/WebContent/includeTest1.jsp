<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
  	request.setCharacterEncoding("UTF-8");  
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 테스트 예제-2</title>
</head>
<body>
	<% 
	
	String name = request.getParameter("name"); 
	
	
	%>

	<h3><%=name %></h3>
</body>
</html>