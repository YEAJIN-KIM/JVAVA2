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
      <form id="form1" name="form1" method="post" action="result.jsp">
        <table width="1465" height="802" border="1" align="center">
          <tr>
            <td width="474" height="60"><div align="center"><strong>도서제목</strong></div></td>
            <td width="769"><div align="left">
              <input name="name" type="text" id="name" size="200" />
            </div></td>
          </tr>
          <tr>
            <td rowspan="2"><div align="center"><strong>저자/역자</strong></div></td>
            <td><p>
              <label>
                <input type="checkbox" name="authorselec" value="저자" id="authorselec_0" />
                저자</label>
              <label>
                <input type="checkbox" name="authorselec" value="역자" id="authorselec_1" />
                역자</label>
              <br />
            </p></td>
          </tr>
          <tr>
            <td><input name="author" type="text" id="author" size="150" /></td>
          </tr>
          <tr>
            <td><div align="center"><strong>출판사</strong></div></td>
            <td><div align="left">
                <input name="publlish" type="text" id="publlish" size="100" />
            </div></td>
          </tr>
          <tr>
            <td><div align="center"><strong>도서분류</strong></div></td>
            <td><div align="left">
              <select name="genre" size="1" id="genre">
                <option value="000 총류">000 총류</option>
                <option value="100 철학">100 철학</option>
                <option value="200 종교">200 종교</option>
                <option value="300 사회과학">300 사회과학</option>
                <option value="400 자연과학">400 자연과학</option>
                <option value="500 기술">500 기술</option>
                <option value="600 예술">600 예술</option>
                <option value="700 언어">700 언어</option>
                <option value="800 문학">800 문학</option>
                <option value="900 역사 및 지리">900 역사 및 지리</option>
              </select>
            </div></td>
          </tr>
          <tr>
            <td><div align="center"><strong>ISBN</strong></div></td>
            <td><div align="left">
              <input name="ISBN" type="text" id="ISBN" size="150" />
            </div></td>
          </tr>
          <tr>
            <td><div align="center"><strong>바코드 번호</strong></div></td>
            <td><div align="left">
              <input name="barcode" type="text" id="barcode" size="150" />
            </div></td>
          </tr>
          <tr>
            <td><div align="center"><strong>가격</strong></div></td>
            <td><div align="left">
              <input name="price" type="text" id="price" size="140" />
            (원)</div></td>
          </tr>
          <tr>
            <td height="152"><div align="center"><strong>참고사항</strong></div></td>
            <td><div align="left">
              <textarea name="text" id="text" cols="210" rows="10"></textarea>
            </div></td>
          </tr>
          <tr>
            <td height="30" colspan="2"><div align="center">
              <input type="submit" name="ok" id="ok" value="확인" />
              <input type="reset" name="cancle" id="cancle" value="취소" />
            </div></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>
    