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
	String login = (String)session.getAttribute("LOGIN");
	boolean status = login == null ? false : true ;
	if (status) {
%>
${ID}가 로그인한 상태입니다. 로그인한 사람의 이름은 ${NAME} 입니다.
<%
	}else {
%>		
			
<%}%>
</body>
</html>