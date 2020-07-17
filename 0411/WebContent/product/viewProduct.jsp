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
	Product product = (Product)session.getAttribute("PRODUCT");
%>

이름=<%=product.getName() %><br>
제조사=<%=product.getCompany()%><br>
특징=<%=product.getTrait()%><br>
가격=<%=product.getPrice()%><br>

</body>
</html>