<%@page import="org.apache.catalina.startup.SetAllPropertiesRule"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("pageScope", "pageScope");
		request.setAttribute("requestScope", "requestScope");
	
	%>
	
	<%=pageContext.getAttribute("pageScope") %>
	<hr/>
	<%=request.getAttribute("requestScope") %>
	<jsp:forward page = "attributeTest2.jsp"></jsp:forward>
	
	
</body>
</html>