<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 메일 보내기 폼 예제-1</title>
</head>
<body>
	<form action = "mailSend" method = "post">
		<h1>자바 메일 보내기</h1>
		<div>
			<label>보내는 사람 메일: </label>
			<input type = "email" name = "sender" />
		</div>
		<div>
			<label>받는 사람 메일: </label>
			<input type = "email" name = "receiver" />
		</div>
		<div>
			<label>제목: </label>
			<input type = "text" name = "subject" />
		</div>
		<div>
			<label>내용: </label>
			<textarea name = "content" style = "width : 500px; height : 300px; resize : none;"></textarea>
		</div>
		<div>
			<input type = "submit" />
		</div>
	</form>
</body>
</html>