<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URL"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어플리케이션테스트 예제-1</title>
</head>
<body>
	메이저버전: <%=application.getMajorVersion() %><hr/>
	마이너버전: <%=application.getMinorVersion() %><hr/>
	서블릿정보: <%=application.getServerInfo() %><hr/>
	<% 
		String path = application.getRealPath("/");
		URL url = application.getResource("/"); 
	
	%>
	real Path: <%=path %><hr/>
	URL 정보: <%=application.getResource("/") %><hr/>
	파일정보: <%=application.getMimeType("c:/tomcat9/BUILDING.txt") %>
	
</body>
</html>