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
	application.setAttribute("manager", "예진");
	application.setAttribute("version", "3.0.1");
	application.setAttribute("madeDate", new java.util.Date());
	application.setAttribute("userNumber", 10);
%>
애플리케이션 속성설정 완료
</body>
</html>