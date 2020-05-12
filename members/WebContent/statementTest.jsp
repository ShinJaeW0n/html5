<%@page import="java.sql.Statement"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "members.dao.MembersDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	MembersDAO dao = new MembersDAO();
	Connection conn = dao.getConn();
	Statement stmt = null;
	
	try{
	stmt = conn.createStatement(); 	/*sql 에선 ''로 안에 또 감싸줘야함.*/
	String sql = "insert into members values('java2', 'java2', '홍길동', '30', '남성', 'hong@test.com')";
	stmt.executeUpdate(sql);
	out.println("<h3>유저 생성 성공</h3>");
	
	} catch(Exception e){
		out.println("<h3>유저 생성 실패</h3>");
		e.printStackTrace();
	} finally{
		try{	
		if(stmt != null) stmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
		dao.membersClose();
	}
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 예제-1</title>
</head>
<body>

</body>
</html>