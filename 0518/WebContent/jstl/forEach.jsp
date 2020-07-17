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
<c:forEach var="i" begin="1" end="100">
	<li>i = ${i}
</c:forEach>

<c:forEach var="i" begin="1" end="100" step="2"> <!-- 홀수만 출력-->
	<li>i = ${i}
</c:forEach>
</body>
</html>