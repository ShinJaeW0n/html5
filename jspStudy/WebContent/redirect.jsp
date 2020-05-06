<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리다이렉트예제-1</title>
</head>
<body>
	<%=(String)request.getAttribute("data")%>
	<%-- JSP주석 --%>
	<!-- HTMl주석 -->
	<%
		//자바 한 줄 주석
		/*자바 여러줄 주석 */
		/**자바 도큐먼트 주석**/
	
	%>
</body>
</html>