<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.dao.ProductDao" %>
<%@ page import = "my.jdbc.util.*" %>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="product" class="my.model.Product" scope="request"/>
<jsp:setProperty property="*" name="product"/>
<%
	Connection conn = ConnectionProvider.getConnection();
	ProductDao productDao = new ProductDao();
	int count =0;
	try {
		count = productDao.update(conn, product);
	} catch (SQLException e) { }
%>
<%= count %>개의 데이터가 수정되었습니다.!!!!
</body>
</html>




