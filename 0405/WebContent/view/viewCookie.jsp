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
	if(cookieBox.exists("id")){
		Cookie cookie = cookieBox.getCookie("id");
		out.println(cookie.getName()+"="+cookie.getValue()+"<br>");
	}
	
	CookieBox cookieBox2 = new CookieBox(request);
	if(cookieBox.exists("password")){
		out.println("password ="+cookieBox.getValue("password")+"<br>");
	}
	
	CookieBox cookieBox3 = new CookieBox(request);
	if(cookieBox.exists("name")){
			out.println("name ="+cookieBox.getValue("name")+"<br>");
	
	}
	

%>
</body>
</html>
