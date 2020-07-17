<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:bundle basename="resource.message">
<fmt:message key="NAME" var="name"/>
<fmt:message key="ID" var="id">
	<fmt:param value="hong"/>
</fmt:message>
<fmt:message key="ADDRESS" var="address"/>
name= ${name}<br>
id=${id} <br>
address=${address} <br>
</fmt:bundle>
</body>
</html>









