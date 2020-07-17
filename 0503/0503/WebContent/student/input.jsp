<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "my.dao.StudentDao" %>
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
<jsp:useBean id="student" class="my.model.Student" scope="request"/>
<jsp:setProperty property="*" name="student"/>
<%
	Connection conn = ConnectionProvider.getConnection();
	StudentDao studentDao = new StudentDao();
	int count =0;
	try {
		count = studentDao.insert(conn, student);
	} catch (SQLException e) { }
%>
<%= count %>개의 데이터가 DB에 입력되었습니다.!!!!
</body>
</html>




