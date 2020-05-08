<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = "", value="", ck = request.getHeader("Cookie");
	
	if(ck != null){
		Cookie[] cks = request.getCookies();
		
		
		for(int i = 0; i < cks.length; i++){
			if(cks[i].getName().equals("name")){
				name = cks[i].getName();
				value = cks[i].getValue();
						
			}
		}
	}else{
		name = value = "쿠키없음";
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
	<h2> <%=cks[0].getMaxAge() %></h2>
</body>
</html>