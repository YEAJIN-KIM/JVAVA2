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
	response.addCookie(CookieBox.createCookie("LOGIN","","/",0)); //쿠키가 사라지니꺄 로그아웃
	response.addCookie(CookieBox.createCookie("ID","","/",0));
%>
로그아웃 되었습니다.
</body>
</html>
