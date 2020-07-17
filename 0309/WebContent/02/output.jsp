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
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String address = request.getParameter("address");
	int  age = Integer.parseInt(request.getParameter("age")); //age 스트링->int
%>
name = <%=name %> <br>
id = <%=id %> <br>
password = <%=password %> <br>
address = <%=address %> <br>
<%
	if (age <= 20)
		out.println("당신은 청년입니다.<br>");
	if (age >20 && age <50)
		out.println("당신은 중년입니다.<br>");
	else
		out.println("당신은 노년입니다.<br>");
%>

</body>
</html>
