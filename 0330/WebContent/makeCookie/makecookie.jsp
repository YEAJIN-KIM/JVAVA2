<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie =new Cookie("id","yeajin"); //서버에서 만들어짐
	response.addCookie(cookie);//클라이언트에 발송.쿠키저장소에 저장
	Cookie cookie1= new Cookie("password","123456");
	response.addCookie(cookie1);
	Cookie cookie2= new Cookie("name",URLEncoder.encode("예지니","utf-8"));
	response.addCookie(cookie2);
%>
<%= cookie.getName() %> = <%= cookie.getValue() %> <br>
<%= cookie1.getName() %> = <%= cookie1.getValue()%> <br>
<%= cookie2.getName() %> = <%= URLDecoder.decode(cookie2.getValue(),"utf-8")%><br>
</body>
</html>