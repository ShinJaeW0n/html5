<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	if(session.getAttribute("userID") != null){
		out.println("<script>");
		out.println("alert('로그인 중에는 회원가입이 불가능합니다.');");
		out.println("location.href = 'main.jsp'");
		out.println("</script>");
	}
%>

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<!-- 단독태그는 /로 닫아줘야함!! -->
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />

<title>회원가입</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
			<!--collapse - 접히는 것.  -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="main.jsp">메인
			</a></li>
				<li class="nav-item"><a class="nav-link" href="bbs.jsp">게시판</a></li>
				</ul>
				
				<ul class = "navbar-nav ml-auto">
					<li class = "nav-item dropdown">
					<a class = "nav-link dropdown-toggle" href = "#" id = "navbarDropdown" 
					role = "button" data-toggle = "dropdown" aria-haspopup="true" aria-expanded="false">접속하기</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item  " href="login.jsp">로그인</a>
						<div class="dropdown-divider"></div> <!-- 한줄 긋기. -->
						<a class="dropdown-item active" href="join.jsp">회원가입</a><span class="sr-only">(current)</span> 
					</div></li>
				</ul>
			</div>
	</nav>
	
	<!-- 점보트론 -->
	<div class = "container pt-3"> <!-- 컨테이너:좌우에 여백 주는 것. 패딩탑 -->
		<div class = "col-lg-4 offset-lg-4"> <!-- 12칸 중 4칸을 쓰겠다. offset: 띄운다. -> 12칸 중에 4칸을 띄우겠다. 중간에 놓겠다. --> 
			<div class = "jumbotron pt-5"> <!-- 점보트론 : 광고판 패딩 탑, 위에 5만큼 띄우겠다. -->
				<form method = "post" action = "joinAction.jsp">
					<h3 class = "text-center pb-2">회원가입</h3>
					<div class = "form-group">
						<input type = "text" class = "form-control" name = "userID" placeholder="아이디" maxlength="20" required="required" autocomplete="on" />
					 </div>
					 
					 <div class = "form-group">
						<input type = "password" class = "form-control" name = "userPassword" placeholder="비밀번호" maxlength="20" required="required" />
					 </div>
					  
					 <div class = "form-group">
						<input type = "text" class = "form-control" name = "userName" placeholder="이름" maxlength="20" required="required" />
					 </div>
					
					<div class = "form group text-center mb-3">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-success active"> 
							<input type="radio" name="userGender" id="option1" checked="checked" value="남성"> 남성
							</label> 
							<label class="btn btn-success"> 
							<input type="radio" name="userGender" id="option2" value="여성"> 여성
							</label> 
						</div>
					</div>

					<div class = "form-group">
						<input type = "email" class = "form-control" name = "userEmail" 
						placeholder="이메일" required="required" />
					 </div>
					  <button type = "submit" class = "btn btn-success form-control">회원가입</button>
					 
				</form>
			</div>
		</div>
	
	</div>
	
	

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>