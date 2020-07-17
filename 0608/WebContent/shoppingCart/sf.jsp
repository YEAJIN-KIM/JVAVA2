<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="movieStore.jsp" method="post">
	<input type="checkbox" name="movie"value="매트릭스">매트릭스<br><br>
	<input type="checkbox" name="movie"value="스타워즈">스타워즈<br><br>
	<input type="checkbox" name="movie"value="아바타">아바타<br><br>
	<input type="checkbox" name="movie"value="아이언맨">아이언맨<br><br>
	<hr>
	<input type="submit" value="카트에 담기">
	<input type="reset" value="취소">
</form>
</body>
</html>