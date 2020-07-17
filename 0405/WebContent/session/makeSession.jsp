<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
세션 객체를 만듭니다.
<%
	request.setCharacterEncoding("utf-8");  //한글은 리퀘스트를 타고 넘어갈때 인코딩을 필요로 함
	session.setAttribute("ID",request.getParameter("id"));
	session.setAttribute("PASSWORD",request.getParameter("password"));
	session.setAttribute("NAME",request.getParameter("name"));
%>
id=<%= session.getAttribute("ID") %> <br>
password=<%= session.getAttribute("PASSWORD") %> <br>
name=<%= session.getAttribute("NAME") %> <br>
</body>
</html>
