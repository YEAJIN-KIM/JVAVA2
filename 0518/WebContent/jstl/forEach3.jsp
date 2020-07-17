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

<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100">
	<c:set var="sum" value="${sum+i}"/>
</c:forEach>
1부터 100까지의 합: ${sum} <br>
구구단을 만들어보자!<br>
<c:forEach var="j" begin="1" end="9">
	[${j}단:] <br>
	<c:forEach var="i" begin="1" end="9">
		<li> ${j}*${i} = ${j*i} <br>
	</c:forEach>
</c:forEach>
이번에는 varStatus를 살펴보장! <br>
<c:set var="intArray" value="<%= new int[] {3,4,5,6,7,8,9}%>"/>
<c:forEach var="i" items="${intArray}" varStatus="status">
	${status.index} : ${status.count} : ${status.last}  ${i} <br>

</c:forEach>
</body>
</html>