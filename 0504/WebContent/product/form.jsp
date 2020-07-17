<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
제품정보 입력: <br>
<form action="input.jsp" method="post">
	이름: <input type="text" name="name" value="아이폰" size="10"><br>
	생산자: <input type="text" name="producer" value="애플" size="10"><br>
	가격: <input type="text" name="price" value="1000000" size="10"><br>
	<input type="submit" value="입력">
</form>
</body>
</html>