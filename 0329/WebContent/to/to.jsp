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
여기는 to.jsp 입니다. <br>
id=<%=request.getParameter("id") %><br>
password=<%=request.getParameter("password")%><br>

<%
	String address = (String)request.getAttribute("address");
	Calendar cal = (Calendar)request.getAttribute("time");
%>
address=<%=address %><br>
오늘 날짜: <%=cal.get(Calendar.DATE)%> <br>
지금 시각: <%= cal.get(Calendar.HOUR) %><br>
지금 분:  <%= cal.get(Calendar.MINUTE) %><br>
지금 초: <%= cal.get(Calendar.SECOND) %><br>
</body>
</html>
