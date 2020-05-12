<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "members.dao.MembersDAO" %>
<%@page import = "java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	MembersDAO dao = new MembersDAO();
	Connection conn = dao.getConn();
	PreparedStatement pstmt = null;

%>

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 예제-3</title>
</head>
<body>
<%
	
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		if(id != null){ //조건 불만족시 else로 간다. , 처음에 만들면 아무것도 없기 때문에 else를 실행하게 된다.
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		

		try{
		
		String sql = "insert into members values (?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setInt(4, age);
		pstmt.setString(5, gender);
		pstmt.setString(6, email);
		pstmt.executeUpdate();
		out.println("<h3>회원정보가 저장되었습니다.</h3>");
		
		
		} catch(Exception e){
			out.println("<h3>회원정보를 저장하지 못했습니다.</h3>");
			e.printStackTrace();
		} finally{
			try{	
			if(pstmt != null) pstmt.close();
			} catch(Exception e){
				e.printStackTrace();
			}
			dao.membersClose();
		}
	}else{
%>
	<!-- action이 없기 때문에 자기 자신에게 넘겨준다. -->
	<form method = "post">
	<div>
		<label>아이디 : </label>
		<input type = "text" name = "id">
	</div>
	<div>
		<label>비밀번호 : </label>
		<input type = "password" name = "password">
	</div>
	<div>
		<label>이름 : </label>
		<input type = "text" name = "name">
	</div>
	<div>
		<label>나이 : </label>
		<input type = "text" name = "age">
	</div>
	<div>
		<label>성별 : </label>
		<select name = "gender">
		<option>선택하세요</option>
		<option value = "남성">남성</option>
		<option value = "여성">여성</option>
		</select>
	</div>
	<div>
		<label>이메일 : </label>
		<input type = "email" name = "email">
	</div>
	<div>
		<button type = "submit">회원정보저장</button>
	</div>
	
</form>    

<%
	}	//여기까지가 else 이다.

%>

</body>
</html>