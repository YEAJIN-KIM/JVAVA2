<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import=java.util.Calendar %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
여기는 from.jsp 입니다.<br><br>
<%
		request.setAttribute("address", "천안");
		Calendar cal = Calendar.getInstance();
		request.setAttribute("time", cal);
%>

<jsp:forward page="/to/to.jsp">
	<jsp:param value="yeajin" name="id"/>
	<jsp:param value="123456" name="password"/>
</jsp:forward>
여기는 forward 이후 부분입니다.
</body>
</html>