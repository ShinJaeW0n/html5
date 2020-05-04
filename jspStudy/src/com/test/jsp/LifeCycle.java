package com.test.jsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/lifeCycle") // <-어노테이션. mapping
public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LifeCycle() {
        System.out.println("생성자 호출");

    }
    

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("서비스 메서드 호출");
	}
	
	@Override
	public void destroy() {
		System.out.println("디스트로이 호출");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("초기화 호출");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}	

	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 또는 doGet 호출");
	}
	
}
