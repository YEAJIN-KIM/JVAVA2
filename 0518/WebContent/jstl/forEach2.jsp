<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="2"> <!-- 홀수만 출력-->
	<li>i = ${i}
</c:forEach>
<%
	HashMap<String, Object> map = new HashMap<String, Object>();
	map.put("name","홍길동");
	map.put("age",30);
	map.put("now", new java.util.Date());
	map.put("saying",true);
%>
<c:set var="map" value="<%= map %>"/>
<c:forEach var="i" items="${map}">
	${i.key} =${i.value} <br>
</c:forEach>
</body>
</html>