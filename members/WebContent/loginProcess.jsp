<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*, javax.sql.*, javax.naming.*"%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4</title>
</head>
<body>
	<%
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/members");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement("select * from members where id = ?"); //아이디가 ? 인것을 가져와라.
			pstmt.setString(1, id); 
			rs = pstmt.executeQuery(); //아이디가 없다면 null이 뜰 것이다.
			
			if(rs.next()){ //while을 사용해도 상관 없, 1개를 사용하면 if문을 보통 쓴다.
				if(pass.equals(rs.getString("password"))){ //내부의 값을 확인한다.
					session.setAttribute("id", id);
					out.println("<script>");
					out.println("location.href='main.jsp'"); //main으로 이동하라.
					out.println("</script>");
				}
			}
			
			//일치하지 않는다면 다시 로그인 폼으로 되돌라 가라.
			out.println("<script>");
			out.println("location.href='loginForm.jsp'");
			out.println("</script>");
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}
	
	
	%>

</body>
</html>