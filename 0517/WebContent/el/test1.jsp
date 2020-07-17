<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.member.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member member =new Member();
	member.setName("홍길동");
	member.setAddress("천안");
	member.setAge(21);
	
%>
<c:set var="m" value="<%=member %>"/> <!--  member 객체를 m 변수에 저장 -->
<c:set var="name" value="#{m.name}"/> <!-- name 변수 선언 -->
<c:set var="name1" value="${m.name}"/> 

나의 이름:${name} <br> <!-- 여기서  값이 할당 -->
나의 이름:${name1} <br>
나의 이름:${m.name} <br>
나의 이름:<%=member.getName() %> <br>
나의 주소:${m.address} <br>
나의 나이:${m.age} <br>
</body>
</html>