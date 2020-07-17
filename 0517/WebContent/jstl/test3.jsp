<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	HashMap member = new HashMap();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>c:set Deferred Expression</title>
</head>
<body>
<c:set var="member" value="<%= member %>" />
<c:set var="memeber" value="#{ member}"/>
<c:set var="memeber" value="#{ member}"/>
<c:set var="memeber" value="#{ member}"/>
<c:set target="${ member }" property="name" value="준태" />
<c:set target="${ member }" property="address" value="공룡나라" />
<c:set target="${ member }" property="age" value="22" />
멤버이름: ${memeber.name}<br>
멤버주소: ${memeber.address}<br>
멤버나이: ${memeber.age}<br>
</body>
</html>
