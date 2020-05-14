<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.test.model1.dao.UserDAO" %>
<%@ page import = "javax.naming.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "user" class = "com.test.model1.vo.User" scope="page" />
<jsp:setProperty name = "user" property = "userID" />
<jsp:setProperty name = "user" property = "userPassword" />

<%
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(user.getUserID(), user.getUserPassword());
	if(result == 1){		//앞에는 키 값, 뒤에는 밸류값
		session.setAttribute("userID", user.getUserID());
		out.println("<script>");
		out.println("location.href = 'main.jsp'");
		out.println("</script>");
	}else if(result == 0) {
		out.println("<script>");
		out.println("alert('비밀번호가 틀립니다.')");
		out.println("history.back()");
		out.println("</script>");
	}else if(result == -1) {
		out.println("<script>");
		out.println("alert('아이디가 존재하지 않습니다.')");
		out.println("history.back()");
		out.println("</script>");
	}else if(result == -2) {
		out.println("<script>");
		out.println("alert('데이터 베이스 오류가 발생하였습니다.')");
		out.println("history.back()");
		out.println("</script>");
	}
	userDAO.udClose();
%>
