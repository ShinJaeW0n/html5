package com.jsp.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SuveltStudy
 */		

			/*원하는 이름으로 변경가능*/
@WebServlet("/suvletTest") /*페이지 맵핑*/
public class SuvletTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	
	/*만약에 오류가 생기면 여기로 throw한다.*/
																					 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
																					
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doProc(request, response);
	}
	
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Car mycar = new Car("현대자동차","제네시스");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		Calendar c = Calendar.getInstance(); /*현재 시간 가져오기*/
		int hour = c.get(Calendar.HOUR_OF_DAY); /*칼랜더의 시간을 가져오기*/
		int min = c.get(Calendar.MINUTE);
		int sec = c.get(Calendar.SECOND);
		PrintWriter pw = response.getWriter(); /*텍스트 파일을 쓰기를 할 수 있는 객체.*/
		pw.write("<html><head><title>ServletTest</titel></head>");
		pw.write("<body><h1>");
		pw.write("현재 시각은");
		pw.write("Integer.toString(hour)");
		pw.write("시 ");
		pw.write("Integer.toString(min)");
		pw.write("분 ");
		pw.write("Integer.toString(sec)");
		pw.write("초 입니다.");
		pw.write("</h1>");
		pw.write("<h2>");
		pw.write("당신의 자동차는" + mycar.getCompany() + "제품이고, 모델명은" + mycar.getModel() + "입니다.");
		pw.write("</h2>");
		
		pw.write("</body></html>");
		pw.close();
		
	}
	

}
