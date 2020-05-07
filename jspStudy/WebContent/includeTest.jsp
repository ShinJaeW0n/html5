<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
  	request.setCharacterEncoding("UTF-8");  
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 테스트 예제-1</title>
</head>
<body>
	<jsp:include page="includeTest1.jsp">
		<jsp:param value = "홍길동" name = "name" />
	</jsp:include>

</body>
</html>