<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문예제-1</title>
</head>
<body>
	<%!  //!가 붙은거 먼저 처리됨. 선언되고 난 다음에 호출. !을 붙여야만 메소드를 정의할 수 있다.
		private String str = "선언문";
		private String getStr(){
		str+="테스트입니다.";
		return str;
	}
	
	%>
	<h1><%=getStr() %></h1>
	
</body>
</html>