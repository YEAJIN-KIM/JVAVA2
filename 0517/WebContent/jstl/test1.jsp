<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page import="java.util.HashMap" %>
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
	HashMap<String, String> map = new HashMap<String,String>();
%>
<c:set var="member" value="<%= member %>"/>
<c:set target="${member}" property="name" value="유재석"/>
<c:set target="${member}" property="address" value="분당"/>
<c:set target="${member}" property="age" value="33"/>
멤버이름: <%= member.getName() %><br>
멤버주소:<%= member.getAddress() %><br>
멤버나이:<%= member.getAge() %><br>
<c:set var="map" value="<%= map %>"/>
<c:set var="myColor" value="#{map.color}"/>
나의 좋아하는 색:${myColor} <br> <!-- 출력 안됨 -->
<c:set target="${map}" property="color" value="red"/>
나의 좋아하는 색:${myColor} <br>
</body>
</html>