<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("name");

%>

<script>
	location.href = "sessionTest.jsp"//다시 sesstionTest로 간다.
</script>
