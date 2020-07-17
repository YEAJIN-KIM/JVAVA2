<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;
PreparedStatement pstmt=null;
String jdbcDriver="jdbc:mysql://localhost:3306/classb";
String dbUser="root";
String dbPass="root";
conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>connect test</title>
</head>
<body>
<br><br>
connect success!<br>
</body>
</html>