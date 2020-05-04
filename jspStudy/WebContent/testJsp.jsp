<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		//여기는 자바 영역입니다. 원하는 어떤 위치에서든 사용 가능합니다.
		//개발할때는 코드사용은 서블렛에서 하고 코드 사용이 없는 곳은 jsp에서 사용
		Calendar c = Calendar.getInstance();	//1
		int year = c.get(Calendar.YEAR);		//2
		int month = c.get(Calendar.MONTH)+1;	//3
		int day = c.get(Calendar.DAY_OF_MONTH);	//4
		
	%>
	
	<h3>오늘 날짜는 <%out.print(year);//5%>-<%out.print(month);//6%>-<%out.print(day);//7%> 입니다.</h3>
	<br/>
	<h3>오늘 날짜는 <%=year%> - <%=month%> - <%=day%> 입니다.</h3> <!-- 8,9,10 -->
	
</body>
</html>