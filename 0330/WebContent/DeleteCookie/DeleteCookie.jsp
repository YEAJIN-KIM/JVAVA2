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
	Cookie[] cookies =request.getCookies();
	if(cookies != null && cookies.length >0) {
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("id")){
				Cookie temp =new Cookie("id",""); //ChageCookie 폴더에 디폴트로 저장
				temp.setPath("/");
				temp.setMaxAge(0);
				response.addCookie(temp);//클라이언트에게 보내라
			}
		}
		
	}


%>
쿠키의 값이 변경되었습니다! <br>
</body>
</html>
