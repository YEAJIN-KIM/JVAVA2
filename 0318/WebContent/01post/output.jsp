<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
상품 정보 내역서:<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
		out.println("상품명:"+name+"<br>");	
	String made = request.getParameter("made");
		out.println("제조사:"+made+"<br>");
	String location = request.getParameter("location");
		out.println("판매처:"+location+"<br>");
	int price = Integer.parseInt(request.getParameter("price"));
		out.println("가격:"+price+"<br>");
		
%>

</body>
</html>