<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("UTF-8");
    %>
    <jsp:useBean id="user" class = "com.test.jsp.dto.JoinBean"></jsp:useBean>
    <jsp:setProperty property = "*" name = "user" /><%--자바빈의 필드명과 폼태그의 네임속성 값이 동일하면 *로 모두 저장할 수 있다. --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:getProperty property="id" name="user"/><hr/>
	<jsp:getProperty property="pass" name="user"/><hr/>
	<jsp:getProperty property="name" name="user"/><hr/>
	<jsp:getProperty property="sex" name="user"/><hr/>
	<jsp:getProperty property="age" name="user"/><hr/>
	<jsp:getProperty property="email" name="user"/><hr/>
</body>
</html>