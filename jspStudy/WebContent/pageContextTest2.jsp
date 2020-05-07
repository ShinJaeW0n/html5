<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
	<%
		pageContext.include("pageContextTest3.jsp");
		out.println(request.getAttribute("data").toString());
		//out.println(pageContext.getAttribute("page").toString());
		
	%>
	<h3>pageContext의 forward로 포워딩된 페이지 입니다.</h3>

</body>
</html>