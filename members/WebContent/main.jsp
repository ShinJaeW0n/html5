<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = null;
	
	//데이터가 들어가있는 경우에는
	if(session.getAttribute("id") != null){
		id = (String)session.getAttribute("id"); //아이디를 가져와서 저장해라.
	
	}else{ //아이디가 저장되어 있지 않은 상태로 main으로 온다면 로그인폼으로 다시 이동시켜라.
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 메인 페이지</title>
</head>
<body>
<h3><%=id%>로 로그인 하셨습니다.</h3>
	<%if(id.equals("admin")){ %>		
		<a href="member_list.jsp">관리자모드 접속(회원 목록 보기)</a>
<%}%>
</body>
</html>