<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="my.info.Contact" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Contact contact= new Contact();
	contact.address="안산";
	contact.phone="041-333-4252";
	contact.mobile="010-3675-5752";
	application.setAttribute("myInfo",contact);
%>
애플리케이션 속성설정이 끝났습니다.
<%
	Contact myInfo =(Contact)application.getAttribute("myInfo");
%><br>
주소=<%=myInfo.address %><br>
전화번호=<%=myInfo.phone %><br>
핸폰=<%=myInfo.mobile %><br>
</body>
</html>