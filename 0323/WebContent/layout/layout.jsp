<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="700" border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="2"> 
			<jsp:include page="/module/top.jsp" flush="false">
				<jsp:param value="yeajin" name="id"/>
			</jsp:include>
		</td>
	</tr>	
	<tr>
		<td> <jsp:include page="/module/left.jsp" flush="false"> 
		<jsp:param value="KOKOMONG" name="name"/>
			</jsp:include>
		</td> 
		<td> <jsp:include page="/module/main.jsp" flush="false"/> </td>
	</tr>
	<tr>
		<td colspan="2"><jsp:include page="/module/bottom.jsp" flush="false"/></td>
	</tr>
	
</table>
</body>
</html>
