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
<c:if test="true">
항상 실행되는 부분입니다!
</c:if>
<c:if test="${param.code=='mycode'}">
입력받은 코드값은 ${param.code} 입니다. <br>
</c:if>
<c:if test="${10< param.age && param.age <=20}">
	당신은 청년입니다.<br>
</c:if>
<c:if test="${20< param.age && param.age <=30}">
	당신은 장년입니다.<br>
</c:if>
<c:if test="${30< param.age && param.age <=40}">
	당신은 중년입니다.<br>
</c:if>
</body>
</html>