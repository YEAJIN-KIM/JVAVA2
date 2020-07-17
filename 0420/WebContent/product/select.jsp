<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver"); //드라이버 가져오기
	Connection conn =null; //connection 타입의 객체 +DB 연결
	Statement stmt =null; //SQL문을 가져오기 위한 객체(여기다가 넣음!)
	ResultSet rs = null; //SQL 실행결과 저장하는 객체
	try{
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/classb","root","root");
		stmt= conn.createStatement();
		rs=stmt.executeQuery("select * from product"); //쿼리실행
		String id = null; String productName=null; String price=null;
		while (rs.next()){
			id= rs.getString(1);
			productName = rs.getString(2);
			price = rs.getString(3);
			out.println(id+":"+productName+":"+price+",<br>");
		}
		
	}	catch (SQLException e){
			e.printStackTrace();
	}finally{
		if(conn!= null) conn.close();
		if(stmt!= null) stmt.close();
		if(rs!= null) rs.close();
	}

%>
</body>
</html>
