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
	<input type="checkbox" name="movie"value="시애틀의 잠 못 이루는 밤">시애틀의 잠 못 이루는 밤<br><br>
	<input type="checkbox" name="movie"value="엽기적인 그녀">엽기적인 그녀<br><br>
	<input type="checkbox" name="movie"value="용감한 가족">용감한 가족<br><br>
	<input type="checkbox" name="movie"value="브라더스">브라더스<br><br>
	<hr>
	<input type="submit" value="카트에 담기">
	<input type="reset" value="취소">
</form>
</body>
</html>