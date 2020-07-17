<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <% request.setCharacterEncoding("UTF-8");%>
    이름 : <%= request.getParameter("name") %><br>
    주소 : <%= request.getParameter("address") %><br>
    취미 : 
    <%
        // 체크박스는 배열로 처리해야 함
      	
        String[] values = request.getParameterValues("hobby");
        if(values != null){
            for(int i=0; i<values.length; i++){        
    %>
        <%=values[i] %>
    <%                        
            }
        }
    %>



</body>
</html>