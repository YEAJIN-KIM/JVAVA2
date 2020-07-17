<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.dao.ProductDao" %>
<%@ page import = "my.jdbc.util.*" %>
<%@ page import = "java.sql.*" %>    
<%@ page import = "my.model.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = ConnectionProvider.getConnection();
	ProductDao productDao = new ProductDao();
	int productId = Integer.parseInt(request.getParameter("productId"));
	int count =0;
	Product product = null;
	try {
		product = productDao.select(conn, productId);
	} catch (SQLException e) { }
%>
선택한 제품의 정보 : <br>
아이디: <%= product.getProductId() %> <br>
상품명: <%= product.getName() %> <br>
생산자: <%= product.getProducer() %> <br>
가격: <%= product.getPrice() %> <br>
</body>
</html>




