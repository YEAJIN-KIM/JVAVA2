<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
당신의 정보를 입력하세요. <br><br>
<form action="/0309/form/output.jsp" method="post">
이름 : <input type = "text" name ="name" size="10" value="김하영"> <br>
아이디 : <input type = "text" name ="id" size="10" value="hyKim"> <br>
패스워드 : <input type = "password" name ="password" size="10"> <br>
주소 : <input type = "text" name ="address" size="10" value="부천"> <br>
나이 : <input type = "text" name ="age" size="10" value="21"> <br>
<input type = "submit" value="입력">
</form>
</body>
</html>