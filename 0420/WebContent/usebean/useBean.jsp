<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="Student" class="my.info.Student" scope="request"/>
<jsp:setProperty property="*" name="Student"/>

이름:<jsp:getProperty property="name" name="Student"/><br>
나이:<jsp:getProperty property="age" name="Student"/><br>
주소:<jsp:getProperty property="address" name="Student"/><br>
</body>
</html>