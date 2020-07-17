<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <%@ page import="my.school.Student" %> 
<title>Insert title here</title>

</head>
<body>
<%
   Student student = new Student();
 // 클래스      객체                 생성자
   student.setId("kjh");
   student.setName("김정현");
   student.setHakban(2014316040); //hakbun은 int타임 "있으면 안됨
   student.setPassword("릭 오웬스");
%>
여기서 출력!! <br><br>
Id = <%= student.getId() %> <br>
Name = <%=student.getName() %> <br>
Hakban = <%=student.getHakban() %> <br>
password = <%=student.getPassword() %> <br>
</body>
</html>