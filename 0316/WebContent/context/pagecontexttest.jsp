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
	HttpServletRequest httpRequest =
		(HttpServletRequest)pageContext.getRequest();

%>
<%-- 코멘트문 : 기존 request와 httpRequest가 같은건가? --%>
<%= request == httpRequest %> <%--두개가 같으면 true를 return --%>

<%
	pageContext.getOut().println("<br><br>페이지 컨텍스트 테스트");
%>
</body>
</html>
