<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import = "java.sql.*" %>    
<%@ page import = "my.model.UserInfo" %>
<%@ page import = "my.jdbc.util.*" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "my.dao.UserInfoDao" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); 
	String userId =request.getParameter("userId");
	String password =request.getParameter("password");
	Connection conn = ConnectionProvider.getConnection();
	UserInfoDao userInfoDao = new UserInfoDao();
	UserInfo userInfo=null;
	int count =0;
	try {
		userInfo = userInfoDao.select(conn, userId);
	} catch (SQLException e) { }
	if(password.equals(userInfo.getPassword())) {
		session.setAttribute("LOGIN", "SUCCESS");
		session.setAttribute("ID", userId);
		session.setAttribute("NAME", userInfo.getName());
		out.println("로그인 성공");
	} else{
%>
<script>
alert("로그인 실패");
history.go(-1);
</script>
<%}%>
</body>
</html>








