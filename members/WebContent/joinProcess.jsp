<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
%>	
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3</title>
</head>
<body>
	<%
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/members");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement("insert into members values(?,?,?,?,?,?)");
			pstmt.setString(1,id);
			pstmt.setString(2,pass);
			pstmt.setString(3,name);
			pstmt.setInt(4,age);
			pstmt.setString(5,gender);
			pstmt.setString(6,email);
			int result = pstmt.executeUpdate(); //실행한 쿼리의 개수가 출력됨.
			
			if(result != 0){ //하나라도 인서트 됬다면
				out.println("<script>");
				out.println("location.href='loginForm.jsp'");
				out.println("</script>");
			}else{ //만약에 입력된게 없다면 다시 조인폼으로 돌아가라.
				out.println("<script>");
				out.println("location.href='joinForm.jsp'");
				out.println("</script>");
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				pstmt.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	
	%>
</body>
</html>