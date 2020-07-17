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
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="userInfo" class="my.model.UserInfo" scope="request"/>
<jsp:setProperty property="*" name="userInfo"/>
<%
	userInfo.setLoginTime(new Date());
	Connection conn = ConnectionProvider.getConnection();
	UserInfoDao userInfoDao = new UserInfoDao();
	int count =0;
	try {
		count = userInfoDao.insert(conn, userInfo);
	} catch (SQLException e) { }
%>
<%= count %>개의 데이터가 DB에 입력되었습니다.!!!! <br>
<c:set var="userInfo" value="<%= userInfo %>"/>
userId = ${userInfo.userId} <br>
password = ${userInfo.password} <br>
name = ${userInfo.name} <br>

</body>
</html>








