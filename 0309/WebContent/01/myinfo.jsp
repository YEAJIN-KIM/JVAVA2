<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "김하영"; //name은 변수
	String adress = "경기도 부천"; //adress는 변수
	int age = 21; //age는 변수
	Date date = new Date(); //date는 Date 클래스 타입의 객체
%>

나의 이름은 : <%= name %> <br>
나의 주소는 : <%= adress %> <br>
나의 나이는 : <%= age %> <br>
지금 시간은 : <%= date %> 입니다. <br>

</body>
</html>