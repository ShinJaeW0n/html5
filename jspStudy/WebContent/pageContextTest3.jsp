<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
	
	<h3>pageContext3의 페이지 입니다.</h3>
	<%
		out.println(request.getAttribute("page3: " + request.getAttribute("data")) + "<hr/>");
	
	%>

</body>
</html>