<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	public String sumString(String str1, String str2){
		return str1 + str2 ;
	
	}

	public int sum(int i1, int i2) {
		return i1+i2;
	}
	
	public int multiply(int i1, int i2) {
		return i1*i2;
	}
%>

나의 이름은 <%= sumString ("김","하영") %> 입니다. <br>
5 + 10 = <%= sum(5,10) %> <br>
5 * 10 = <%= multiply (5,10) %> <br>

</body>
</html>