<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String remoteAddress = request.getRemoteAddr();
	String Method = request.getMethod();
	String RequestURI = request.getRequestURI();
	String contextPath = request.getContextPath();
	String serverName = request.getServerName();
	int portNumber = request.getServerPort();
%>
remoteAddress = <%= remoteAddress %> <br>
Method = <%= Method %> <br>
RequestURI = <%= RequestURI %> <br>
contextPath = <%= contextPath %> <br>
serverName = <%= serverName %> <br>
portNumber = <%= portNumber %> <br>
</body>
</html>