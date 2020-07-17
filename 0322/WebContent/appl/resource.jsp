<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	FileReader fr =null;
	char[] buff=new char[20]; //파일에서 읽은 것을 임시로 저장
	int len= -1;
	try{
		fr =new FileReader("D:\\workspace2\\0322\\WebContent\\message\\notice\\notice.txt");
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