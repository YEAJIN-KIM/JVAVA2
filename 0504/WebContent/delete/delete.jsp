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
	try {
		count = productDao.delete(conn, productId);
	} catch (SQLException e) { }
%>

<%= count %>개의 제품정보가 삭제되었습니다.<br>
<%= productId %> 아이디의 제품정보가 삭제되었습니다.
</html>




