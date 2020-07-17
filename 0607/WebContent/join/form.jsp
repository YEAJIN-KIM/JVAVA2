<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
회원정보 입력: <br>
<form action="insert.jsp" method="post">
아이디: <input type="text" name="userId" size="10" ><br>
패스워드: <input type="password" name="password" size="10"><br>
이름: <input type="text" name="name" value="홍길동" size="10"><br>
<input type="submit" value="회원가입">
</form>
</body>
</html>