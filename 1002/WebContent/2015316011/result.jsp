<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>무제 문서</title>
<link href="layout.css" rel="stylesheet" type="text/css" />
</head>

<body><% request.setCharacterEncoding("utf-8"); %>
<div id="wrap">
  <div id="pageheader">
    <div id="toplogo"><a href="#"><img src="images/noun_547809_cc_01.png" name="photo1" width="300" height="279" id="photo1" /></a></div>
    <div id="topmain"> 
      <p>BOOK MANAGER★</p>
    </div>
    <div id="topnav">
      <div id="login"><a href="#"><img src="images/photo2_02.png" name="photo2" width="250" height="79" id="photo2" /></a></div>
      <div id="membership"><a href="#"><img src="images/photo3_02.png" name="photo3" width="250" height="79" id="photo3" /></a></div></div></div>
  <div id="pagecenter">
    <div id="bannerset">
      <div id="banner1"><a href="#"><img src="images/photo4.png" name="photo4" width="200" height="100" id="photo4" /></a></div>
      <div id="banner2"><a href="#"><img src="images/photo5.png" name="photo5" width="200" height="100" id="photo5" /></a></div>
      <div id="banner3"><a href="#"><img src="images/photo6.png" name="photo6" width="200" height="100" id="photo6" /></a></div>
    </div>
    <div id="main">
      <form id="form1" name="form1" method="post" action="">
        <table width="1465" height="779" border="1" align="center">
          <tr>
            <td width="474" height="60"><div align="center"><strong>도서제목</strong></div></td>
            <td width="769"><%=request.getParameter("name") %>&nbsp;&nbsp;</td>
          </tr>
          <tr>
            <td rowspan="2"><div align="center"><strong>저자/역자</strong></div></td>
            <td height="57"><p><%=request.getParameter("authorselec") %>&nbsp;&nbsp;</p></td>
          </tr>
          <tr>
            <td><%=request.getParameter("author") %>&nbsp;&nbsp;</td>
          </tr>
          <tr>
            <td><div align="center"><strong>출판사</strong></div></td>
            <td><div align="left"><%=request.getParameter("publlish") %>&nbsp;</div></td>
          </tr>
          <tr>
            <td><div align="center"><strong>도서분류</strong></div></td>
            <td><div align="left"><%=request.getParameter("genre") %>&nbsp;</div></td>
          </tr>
          <tr>
            <td><div align="center"><strong>ISBN</strong></div></td>
            <td><%=request.getParameter("ISBN") %>&nbsp;</td>
          </tr>
          <tr>
            <td><div align="center"><strong>바코드 번호</strong></div></td>
            <td><%=request.getParameter("barcode") %>&nbsp;</td>
          </tr>
          <tr>
            <td><div align="center"><strong>가격</strong></div></td>
            <td><div align="left"><%=request.getParameter("price") %>&nbsp;
          (원)</div></td>
          </tr>
          <tr>
            <td height="152"><div align="center"><strong>참고사항</strong></div></td>
            <td><%=request.getParameter("text") %>&nbsp;</td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>
    