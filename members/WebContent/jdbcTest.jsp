<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
    
<%
	Connection conn = null;
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/testDB?useUnicode=true&amp;serverTimezone=Asia/Seoul";
	
	
	Boolean connect = false;
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "root", "yt1234");
		
		connect = true;
		
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		<%
			if(connect == true){
				out.println("연결됨");
			}else{
				out.println("연결안됨");
			}
		
		
		%>
	
	</h3>

</body>
</html>