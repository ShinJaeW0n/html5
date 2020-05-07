<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  	request.setCharacterEncoding("UTF-8");  
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워드 테스트-1</title>
</head>
<body>
	<form action = "forwardTest1.jsp" method = "post">
		<div>
		<label>이름: </label><input type = "text" name = "name" />
		</div>
		<div>
		<label>나이: </label><input type = "number" name = "age" />
		</div>
		<div>
		<label>주소: </label><input type = "text" name = "addr" />
		</div>
		<input type = "hidden" value = "forwardTest2.jsp" name = "ft" />
		<button type = "submit">데이터 전송</button>		
	
	</form>
</body>
</html>