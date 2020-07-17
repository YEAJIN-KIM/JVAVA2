<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
당신의 이름은 :<%= request.getParameter("name") %>
당신의 아이디  : <%= request.getParameter("id") %>
당신의 패스워드  : <%= request.getParameter("password") %>
<%-- input.jsp에서 get방식으로 넘어온 파라미터값 출력 --%>
</body>
</html>