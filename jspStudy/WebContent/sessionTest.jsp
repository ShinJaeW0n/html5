<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>

<% 
	String name;
	if(session.getAttribute("name") != null) {
		name = (String)session.getAttribute("name");
	}else {
		name = "세션 값 없음";
	}

%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 예제</title>
</head>
<body>
	<h2>세션 없음</h2>
	<button onclick = "location.href = 'sessionSet.jsp'">세션값 저장</button>
	<button onclick = "location.href = 'sessionDel.jsp'">세션값 삭제</button>
	<button onclick = "location.href = 'sessionInv.jsp'">세션 초기화</button>
	<h3><%=name%></h3> <!-- name을 출력해라. -->
	<hr/>
	<h3><%=session.isNew() %></h3> <!-- 새 것인가? 트루, 펄스-->
	<%
		if(session.getAttribute("list") != null){
			List<String> list = (List)session.getAttribute("list");
				for(int i=0; i < list.size(); i++){
		%>
		<!-- 여긴 html열 if나 for 문 사이에 있으면 영향을 받는다.-->
				<h4><%=list.get(i) %></h4><br/>
				
		<% 			
				}
		}
	
	%>
	
</body>
</html>