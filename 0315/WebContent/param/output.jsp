<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
당신이 선택한 과일 목록 : <br>
<%
	request.setCharacterEncoding("utf-8");
	String[] fruits = request.getParameterValues("fruit"); 
	for (int i=0; i < fruits.length; i++)
		out.println(fruits[i]+"<br>");
%>
<br> 변수 이름 : <br>
<%
	Enumeration<String> paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()){
			String paramName = paramNames.nextElement(); //paramName : 단수
			out.println(paramName+"<br>");	
	}
%>
<br>맵을 이용한 출력 : <br>
<%
	Map<String,String[]> paramMap = request.getParameterMap();
	String[] fruitss = paramMap.get("fruit");
	for(int i =0; i<fruitss.length; i++)
			out.println(fruitss[i]+"<br>");
	%>
</body>
</html>