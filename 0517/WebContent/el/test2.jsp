<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("name", "김길동");
	request.setAttribute("address", "부산");
	request.setAttribute("age", 22);
%>
요청 URI: ${pageContext.request.requestURI}<br>
name: ${requestScope.name} <br> <!-- request.getAttribute("name") -->
code: ${param.code} <br> <!-- get방식으로 넘겨주면 바로 반영함! -->
address: ${requestScope.address} <br>
age: ${requestScope.age} <br>
rating: ${param.rating} <br>
</body>
</html>