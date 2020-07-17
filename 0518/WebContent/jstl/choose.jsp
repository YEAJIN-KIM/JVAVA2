<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${param.level == 'trial' }"> <!--  test의 값은 boolean : true, false -->
		당신의 수준은 시도자입니다.<br> 	
	</c:when>
	<c:when test="${param.level == 'regular' }"> <!--  test의 값은 boolean : true, false -->
		당신의 수준은 보통입니다.<br> 	
	</c:when>
	<c:when test="${param.level == 'novice' }"> <!--  test의 값은 boolean : true, false -->
		당신의 수준은 초보자입니다.<br> 	
	</c:when>
	<c:otherwise>
		당신의 수준을 파악할 수 없습니다..8ㅅ8
	</c:otherwise>
</c:choose>
</body>
</html>