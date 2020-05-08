<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie ck = new Cookie("lang", request.getParameter("lang"));
	ck.setMaxAge(60*60*24); //하루 동안 유지됨.
	response.addCookie(ck);
	response.sendRedirect("cookieEx1.jsp");
			//sendRedirect - 다른 곳으로 보내는 코드
%>
