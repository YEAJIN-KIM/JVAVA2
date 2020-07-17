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
	String id =request.getParameter("id");
	String password =request.getParameter("password");
	if(id.equals(password)) {
		response.addCookie(CookieBox.createCookie("LOGIN","SUCCESS","/",-1)); //로그인 쿠기만들고 success 값으로 줌+로그인 성공 여부를 알려면 이부분만 있으면 됨
		response.addCookie(CookieBox.createCookie("ID",id,"/",-1));
		out.println("로그인에 성공!");
	}else{
%>		
<script>
	alert("로그인 실패!");
	history.go(-1);
</script>

<%} %>
</body>
</html>