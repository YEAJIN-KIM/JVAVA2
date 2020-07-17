<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8"); 
	String name= request.getParameter("name");
	String company= request.getParameter("company");
	String trait= request.getParameter("trait");
	String price= request.getParameter("price");
%>
<%
	Product product = new Product(name,company,trait,price);
	session.setAttribute("PRODUCT", product);	
%>

세션 속성 설정 완료!
</body>
</html>