package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;




@WebServlet("/partUploadPro2")
@MultipartConfig(
		fileSizeThreshold = 0,
		location = "C:\\apache-tomcat-9.0.34\\wtpwebapps\\jspStudy\\upload"
		)
public class PartUploadPro2 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProc(request, response);
	}
	
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String writer = request.getParameter("writer");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String uploadFileNamelist = "";
		
		for(Part part:request.getParts()) {
			
			String contentDisposition = part.getHeader("content-disposition");
			String uploadFileName = getUploadFileName(contentDisposition);
			part.write(uploadFileName);
			uploadFileNamelist += " " + uploadFileName;
		}
		out.println("작성자" + writer + "님이" + uploadFileNamelist + "파일을 업로드 하였습니다.");
		
	}

//	//사용 브라우저가 IE인 경우
//	private String getUploadFileName(String contentDisposition) {
//		String uploadFileName = null;
//		String[] contentSplitStr = contentDisposition.split(";");
//		int lastPathSeparatorIndex = contentSplitStr[2].lastIndexOf("\\");
//		int lastQutosIndex = contentSplitStr[2].substring(lastPathSeparatorIndex + 1, lastQutosIndex);
//		return uploadFileName;
//	}
	
	
	
	//사용 브라우저가 크롬인 경우
		private String getUploadFileName(String contentDisposition) {
			String uploadFileName = null;
			String[] contentSplitStr = contentDisposition.split(";");
			int firstQutosIndex = contentSplitStr[2].indexOf("\""); /*쌍 따옴표 1개를 뜻함.*/
			int lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
			uploadFileName = contentSplitStr[2].substring(firstQutosIndex + 1, lastQutosIndex);
			return uploadFileName;
		}


}
