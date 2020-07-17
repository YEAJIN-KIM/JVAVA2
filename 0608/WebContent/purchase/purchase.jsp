<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="my.dao.PurchaseDao" %>
<%@ page import ="my.model.Purchase" %>
<%@ page import ="java.util.Date" %>
<%@ page import ="my.jdbc.util.*" %>
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
   //카트에 들어있는 영화의 갯수
   String movieTitles = "";
   
   Connection conn = ConnectionProvider.getConnection();
   
%>
<b><center>당신이 구매한 영화 제목입니다.</center></b>
<br><br>
<hr><br><br>
<%
	int totalPrice = 0;
   for (int i = 1; i <= movieCount.intValue(); i++){
      String movie = (String)session.getAttribute("movie"+i);
      movieTitles += (movie + ":");
      totalPrice += 8000;
      out.println(movie+"<br><br>");
   }
   try{
      PurchaseDao purchaseDao = new PurchaseDao(); 
      Purchase purchase = new Purchase(1, "yklee", movieTitles, totalPrice, new Date());
      int count = purchaseDao.insert(conn, purchase);
   }catch (Exception e){
   }
%>
<hr>
구매가 완료되었습니다!!
<a href="main.jsp">메인으로 가기</a> 
<a href="cartdelete.jsp">카트비우기</a> <br><br>


</body>
</html>