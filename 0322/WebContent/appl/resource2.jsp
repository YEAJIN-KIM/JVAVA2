<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.net.URL" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String resourcePath="/message/notice/notice.txt";
	BufferedReader fr =null;
	char[] buff=new char[20]; //파일에서 읽은 것을 임시로 저장
	int len= -1;
	try{
		URL url=application.getResource(resourcePath);
		fr =new BufferedReader(new InputStreamReader(url.openStream()));
		while((len= fr.read(buff))!= -1 ) {
		out.print(new String(buff,0,len));
	}
	}catch (IOException e){
		out.println("exception"+e.getMessage());
	}finally{
		if(fr !=null)fr.close();
	}
%>
</body>
</html>