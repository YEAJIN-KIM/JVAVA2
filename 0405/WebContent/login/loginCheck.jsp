<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.CookieBox" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	CookieBox cookieBox = new CookieBox(request);
	boolean	login = cookieBox.exists("LOGIN") && 
			cookieBox.getValue("LOGIN").equals("SUCCESS");
	if(login){
%>		
<%= cookieBox.getValue("ID") %> 가 로그인한 상태입니다.		
<%
	} else{
		out.println("로그인하지 않은 상태입니다.");
	}
%>
</body>
</html>