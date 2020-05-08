<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String lang = "korea";
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null){
		Cookie[] cks = request.getCookies();
		for(int i = 0; i < cks.length; i++){
			if(cks[i].getName().equals("lang")){
				lang = cks[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>안녕하세요 이것은 쿠키 예제입니다.</h3>
	<form action = "cookieEx3.jsp" method = "post">
	<input class = "rbtn" type = "radio" name = "lang" value = "korea" checked = "checked" />
	<label>한국어 페이지 보기</label>
	<input class = "rbtn" type = "radio" name = "lang" value = "english"  />
	<label>영어 페이지 보기</label>
	<input type = "submit" value = "설정" /> 
	</form>
	<script src = "https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script>
	
		//최근에는 쿠키보다 이렇게 로컬스토리지를 이용한다. 
		//로컬스토리지를 지우려면 clean~ 을 써줘야한다.
		$(function(){
			$(".rbtn").removeProp("checked");
		if(localStorage.lang == "korea"){
			$(".rbtn:first").prop("checked" , "checked");
			$("h3").text("안녕하세요 이것은 쿠키 예제입니다.");
		}else{
			$(".rbtn:last").prop("checked" , "checked");
			$("h3").text("Hello. This is Cookie Example.");
		}
			$(".rbtn").click(function(){
				$(".rbtn").removeProp("checked");
				$(this).prop("checked" , "checked");
				localStorage.lang = $(this).val();
			});
		});
	</script>
	
</body>
</html>