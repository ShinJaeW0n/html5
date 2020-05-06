package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/sessionLogin")
public class SessionLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(id.equals("java")&&passwd.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			RequestDispatcher rd = request.getRequestDispatcher("menu.jsp"); //리퀘스트,리스폰스를 같이 전달해 줄 수 있다.
			rd.forward(request, response);
		}else {
			out.print("<script>");
			out.print("alert('아이디나 비밀번호가 일치하지 않습니다.');");
			out.print("history.back();"); //history - 뒤로 버튼을 누르는 것. 이전페이지로 가는 것.
			out.print("</script>");
		}
	}

}
