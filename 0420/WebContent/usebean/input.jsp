<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
데이터를 입력하세요.<br>
<form action="useBean.jsp" method="post">
이름:<input type="text" name="name" value="고니" size="10"><br>
나이:<input type="text" name="age" value="22" size="10"><br>
주소:<input type="text" name="address" value="천안" size="10"><br>
<input type="submit" value="DB입력">
</form>
</body>
</html>