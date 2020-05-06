<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키예제</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		for(Cookie ck : cookies){
		out.println(ck.toString() + "<br/>"); //ck를 스트링으로 변환해서 나오게함.
		}
		out.println("<hr/>");
		out.println("서버의 도메인명 : " + request.getServerName());
		out.println("<hr/>");
		out.println("서버의 포트번호 : " + request.getServerPort());
		out.println("<hr/>");
		out.println("요청 URL : " + request.getRequestURL().toString());
		out.println("<hr/>");
		out.println("요청 URI : " + request.getRequestURI());
		out.println("<hr/>");
	%>
</body>
</html>