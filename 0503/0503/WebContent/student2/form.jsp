<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
학생정보 수정: <br>
<form action="update.jsp" method="post">
	아이디: <input type="text" name="studentId" value="1" size="10"><br>
	이름: <input type="text" name="name" value="김길동" size="10"><br>
	학과: <input type="text" name="depart" value="컴공" size="10"><br>
	나이: <input type="text" name="age" value="24" size="10"><br>
	<input type="submit" value="입력">
</form>
</body>
</html>