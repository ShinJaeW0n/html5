<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.test.jsp.dto.beanTest"%>
    <jsp:useBean id = "myBean" class = "com.test.jsp.dto.beanTest" scope = "request"></jsp:useBean>
    
    <!-- 클래스로 객체를 생성하고 변수명이 id 값으로 저장됩니다.-->
    
    <jsp:useBean id = "yourBean" class = "com.test.jsp.dto.beanTest" scope = "session"></jsp:useBean>
      
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈테스트 예제-1</title>
</head>
<body>
	<jsp:setProperty property="name" name="myBean" value = "홍길동"/>
	<%
		out.println(myBean.getName());
	%>
	<hr/>
	<%
		yourBean.setName("김영희");
		
	
	%>
	<jsp:getProperty property="name" name="yourBean"/>
	
</body>
</html>