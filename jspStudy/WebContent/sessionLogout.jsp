<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=(String)session.getAttribute("id")%>님은 로그아웃 되었습니다.</h3>
	<%
		//session.removeAttribute("id");
		session.invalidate(); //invalidate하는 방법도 있다.
	%>
	<a href = "sessionLogin1.jsp">로그인 페이지로 이동</a>
</body>
</html>