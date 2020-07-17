<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
상품명:<%= request.getParameter("name") %><br>
제조사:<%= request.getParameter("made") %><br>
판매처:<%= request.getParameter("location") %><br>
가격:<%= request.getParameter("price") %><br>
</body>
</html>