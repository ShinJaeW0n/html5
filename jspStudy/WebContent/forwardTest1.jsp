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
	<jsp:forward page= '<%=request.getParameter("ft") %>'>
		<jsp:param name = "tel" value= "032-333-3333" />
	</jsp:forward>
</body>
</html>