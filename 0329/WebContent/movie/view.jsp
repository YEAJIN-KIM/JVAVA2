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
	String movie =request.getParameter("movie");
	String url =null;
	if(movie.equals("A"))
		url ="/moviedetail/abouttime.jsp";
	else if (movie.equals("B"))
		url ="/moviedetail/saw.jsp";
	else
		url ="/moviedetail/haoul.jsp";
%>
<jsp:forward page="<%= url %>"/>
</body>
</html>