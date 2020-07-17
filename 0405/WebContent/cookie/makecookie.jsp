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
	response.addCookie(CookieBox.createCookie("id", "yeajin","/",-1));
	response.addCookie(CookieBox.createCookie("password", "123456","/",-1)); //웹브라우져 살아있는 동안 쿠키박스에 저장해랏
	response.addCookie(CookieBox.createCookie("name", "예진","/",-1));
%>
쿠키가 만들어졌습니다.<br>
</body>
</html>
