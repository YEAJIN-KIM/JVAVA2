<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	Integer movieCount = (Integer)session.getAttribute("movieCount");
	//카트에 들어가있는 영화의 수
	if (movieCount == null) {
		movieCount = new Integer(0);
	}
	String[] moviesSelected;
	String movieName;
	moviesSelected = request.getParameterValues("movie"); //영화제목 배열로 받음
	if (moviesSelected != null) {
		for (int i = 0; i< moviesSelected.length; i ++){
			movieName = moviesSelected[i];
			movieCount = new Integer(movieCount.intValue()+1);
			session.setAttribute("movie"+movieCount, movieName);
			session.setAttribute("movieCount", movieCount);
		}
	}
	
%>
<b><center>당신이 선택한 영화 제목입니다.</center></b>
<br><br>
<hr><br><br>
<%
	for (int i = 1; i<= movieCount.intValue(); i++){
		String movie = (String)session.getAttribute("movie"+i);
		out.println(movie+"<br><br>");
	}
%>
<hr>
<a href="main.jsp">메인으로 가기</a> &nbsp;
<a href="cartdelete.jsp">카트비우기</a> <br><br>
</body>
</html>