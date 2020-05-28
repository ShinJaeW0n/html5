<%@page import="vo.PageInfo"%>
<%@page import="vo.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<BoardBean> articleList = (ArrayList<BoardBean>)request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style>
	#registForm {
		width: 500px;
		height: 600px;
		border: 1px solid red;
		margin: auto;
	}
	
	h2 {
		text-align: center;
	}
	
	table {
		margin: auto;
		width: 450px;
	}
	
	#tr_top {
		background: orange;
		text-align: center;
	}
	
	#pageList {
		margin: auto;
		width: 500px;
		text-align: center;
	}
	
	#emptyArea {
		margin: auto;
		width: 500px;
		text-align: center;
	}
</style>
</head>
<body>
	<section id="listForm">
		<h2>글목록<a href="/model2/boardWriteForm.do">게시판글쓰기</a></h2>
		<%
		if(articleList != null && listCount > 0) {
		%>
		<table>
			<tr id="tr_top">
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>날짜</td>
				<td>조회수</td>
			</tr>
			<%
			for(int i=0; i<articleList.size(); i++) {
			%>
			<tr>
				<td><%=articleList.get(i).getBoard_num() %></td>
				<td>
					<%
					if(articleList.get(i).getBoard_re_ref() != 0) {
						for(int a=0; a<=articleList.get(i).getBoard_re_lev()*2; a++) {
					%>
					&nbsp;
					<%
						}
					%>	
					 ▶ 
					<% 
					} else { 
					%>
					 ▶ 
					<%
					}
					%>
					<a href="/model2/boardDetail.do?board_num=<%=articleList.get(i).getBoard_num() %>&page=<%=nowPage %>"><%=articleList.get(i).getBoard_subject() %></a>
				</td>
				<td><%=articleList.get(i).getBoard_name() %></td>
				<td><%=articleList.get(i).getBoard_date() %></td>
				<td><%=articleList.get(i).getBoard_readcount() %></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		} else {
			out.println("<article id='emptyArea'>등록된 글이 없습니다.</article>");
		}
		%>
	</section>
	<%
	if(articleList != null && listCount > 0) {
	%>
	<section id="pageList">
		<%
		if(nowPage<=1) { 
			out.println("[이전]&nbsp;");
		} else {
			out.println("<a href='/model2/boardList.do?page=" + (nowPage-1) + "'>[이전]</a>&nbsp;");
		}
		
		for(int a=startPage; a<=endPage; a++) {
			if(a==nowPage) {	
				out.println("["+a+"]");
			} else {
				out.println("<a href='/model2/boardList.do?page=" + a + "'>[" + a + "]</a>&nbsp;");
			}
		}
		
		if(nowPage>=maxPage) {
			out.println("[다음]");		
		} else {
			out.println("<a href='/model2/boardList.do?page=" + (nowPage+1) + "'>[다음]</a>");
		}
		%>
	</section>
	<%
	}
	%>
</body>
</html>
