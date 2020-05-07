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
		request.setAttribute("data", "냠냠");
		pageContext.setAttribute("page", "페이지 컨텍스트");
		pageContext.forward("pageContextTest2.jsp");
		//pageContext의 허용범위(scope)는 자기 자신의 페이지까지 입니다.
		
	%>

</body>
</html>