<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<c:choose>
	<c:when test="${param.site == 'naver'}">
		<c:import url="http://www.naver.com"/>
	</c:when>
	<c:when test="${param.site == 'daum'}">
		<c:import url="http://www.daum.net"/>
	</c:when>
	<c:otherwise>
		<c:import url="http://www.google.com"/>
	</c:otherwise>
</c:choose>
</body>
</html>