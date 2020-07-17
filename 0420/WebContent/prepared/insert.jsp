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
	request.setCharacterEncoding("UTF-8");
	String name =request.getParameter("name");
	int price = Integer.parseInt(request.getParameter("price"));
	
	Class.forName("com.mysql.jdbc.Driver"); //드라이버 가져오기
	Connection conn =null; //connection 타입의 객체 +DB 연결
	PreparedStatement pstmt =null; //SQL문을 가져오기 위한 객체(여기다가 넣음!)
	try{
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/classb","root","root");
		pstmt= conn.prepareStatement("insert into product (name,price) values (?,?)");
		pstmt.setString(1, name);
		pstmt.setInt(2, price);
		int numIns = pstmt.executeUpdate();
		out.println(numIns +"개의 레코드가 삽입되었습니다.");
		
	}catch (SQLException e){
			e.printStackTrace();
	}finally{
		if(conn!= null) conn.close();
		if(pstmt!= null) pstmt.close();
		//if(rs!= null) rs.close();
	}

%>
</body>
</html>