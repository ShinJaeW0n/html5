<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = "", value="", ck = request.getHeader("Cookie");
	Cookie[] cks = request.getCookies();
	
	if(ck != null){
		
		for(int i = 0; i < cks.length; i++){
			System.out.println(cks[i].getName());
			if(cks[i].getName().equals("name")){
				name = cks[i].getName();
				value = cks[i].getValue();
						
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
	<h2>쿠키이름 = <%=name %></h2>
	<h2>쿠키 값 = <%=value %></h2>
	<%
		cks[0].setMaxAge(0); //쿠키는 0초를 셋팅하면 없어진다.
				
		
	%>
	<a href = "cookieTest3.jsp">쿠키삭제</a>
</body>
</html>