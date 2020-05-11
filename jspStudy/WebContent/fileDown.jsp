<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.net.URLEncoder , java.io.*" %> 

<%
	String fileName = request.getParameter("file_name");
	
	String savePath = "upload"; /*다운 받을 곳은 upload다.*/
	ServletContext context = getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
	String sFilePath = sDownloadPath + "\\" + fileName;
	byte b[] = new byte[4096];
	FileInputStream in = new FileInputStream(sFilePath);
	String sMimetype = getServletContext().getMimeType(sFilePath);
	System.out.println("sMimetype>>>" + sMimetype);
	
	if (sMimetype == null) sMimetype = "application/octet-stream";
	
	response.setContentType(sMimetype);
	String agent = request.getHeader("User-Agent");
	boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);
			
	if(ieBrowser){
		fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20"); /*정규 표현식 \가 1개 이상일 경우.*/
		
	}else {
		fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
				
	}
	response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
	
	ServletOutputStream out2 = response.getOutputStream();
	int numRead;
	
							/*b=byte 배열, 0번부터 시작해서 length 만큼 읽었을때, -1 = 내용이 없다는 뜻.*/
	while((numRead = in.read(b, 0, b.length)) != -1){ /*내용이 있을 때*/
		out2.write(b, 0, numRead); /*0번부터 numRead 만큼 읽어라. */
	}
	
	out2.flush(); /*flush - 출력하고 버퍼(메모리) 비우는 것.*/
	out2.close(); /*in과 out은 역순으로 닫는다.*/
	in.close();
%>
