package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*이 2줄은 무조건 넣는다.*/
		request.setCharacterEncoding("UTF-8"); //Post일 경우 한글 처리 코드
		response.setContentType("text/html;charset=UTF-8"); //데이터 타입은 html이고 utf-8 방식으로 문자처리
		
		String id = request.getParameter("id"); //파라미터로 전송된 id를 저장
		String passwd = request.getParameter("passwd"); //파라미터로 전송된 passwd를 저장
		PrintWriter out = response.getWriter(); //출력 스트림
		out.println("아이디=" + id + "<br />");
		out.println("비밀번호=" + passwd + "<br />");
		out.close(); //스트림은 사용 후 반드시 닫아야한다.
	}

}
