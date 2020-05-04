package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dog.do")
public class DogSuvlet extends HttpServlet {
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
		String hide = request.getParameter("hide"); //폼 태그에서 넘어오는 데이터는 파라미터로 넘어온다. 이때 name 속성은 key값이 된다.
		out.println(hide); //출력
		//똑같은 dog 네임으로 넘어오기 때문에 배열로 받을 수 있게 된다. 배열로 넘어올때는 겟 파라미터 벨류스로 가져온다.
		//동일 키로 여러 데이터가 넘어오면 배열로 전달된다.
		String[] dogs = request.getParameterValues("dog");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8' />");
		out.println("<title>강아지 사진</title>");
		out.println("</head>");
		out.println("<body>");
		for(String url : dogs) {
			out.println("<img src = '"+ url +"' alt='-' style='width:200px;'>"); 
		}
		out.println("</body>");
		out.println("</html>");
		
		
	}

}
