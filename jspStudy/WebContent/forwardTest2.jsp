<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
  	request.setCharacterEncoding("UTF-8");  
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워드 테스트-2</title>
</head>
<body>
	<div>
		<h3>이름: <%=request.getParameter("name") %></h3>
		</div>
		<div>
		<h3>나이: <%=request.getParameter("age") %></h3>
		</div>
		<div>
		<h3>주소: <%=request.getParameter("addr") %></h3>
		</div>
		<div>
		<h3>전화: <%=request.getParameter("tel") %></h3>
		</div>
		
		
</body>
</html>