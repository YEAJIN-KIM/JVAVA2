<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
여기는 시작! <br>
<jsp:include page="/module/sub.jsp" flush="true"> //tag start
	<jsp:param value="2015316011" name="id"/>  //tag body+jsp run
	<jsp:param value="123456" name="password"/> //tag end
</jsp:include>

여기는 끝!<br>

</body>
</html>
