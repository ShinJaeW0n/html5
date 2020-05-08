<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String lang = "korea";
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null){
		Cookie[] cks = request.getCookies();
		for(int i = 0; i < cks.length; i++){
			if(cks[i].getName().equals("lang")){
				lang = cks[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(lang.equals("korea")){
			out.println("<h3>안녕하세요 이것은 쿠키 예제입니다.</h3>");
		} else {
			out.println("<h3>Hello. This is Cookie Example.</h3>");
		}
	
	%>
	
	<form action = "cookieEx2.jsp" method = "post">
	<input type = "radio" name = "lang" value = "korea" <%if (lang.equals("korea")) {%>checked = "checked"<%} %> />
	<label>한국어 페이지 보기</label>
	<input type = "radio" name = "lang" value = "english" <%if (lang.equals("english")) {%>checked = "checked"<%} %> />
	<label>영어 페이지 보기</label>
	<input type = "submit" value = "설정" /> 
	</form>
</body>
</html>