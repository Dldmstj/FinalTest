<%@page import="shop.AdminDao"%>
<%@page import="review.Review" %>
<%@page import="review.ReviewDao" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 회원관리</title>
 <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div id="navbar">
 	 <a href="main.jsp" id="logo">&nbsp;&nbsp;&nbsp;&nbsp;L&S Company</a>
    </div>
    
  
	<fieldset style = "position:relative; left:800px; top:300px;width:330px; height:380px;opacity:0.8; ">
	<h2> REVIEW </h2>
	
	<table>
		<tr>
			<th>아이디</th><th>상품구분</th><th>제목</th><th>점수</th>
		</tr>
	<%
		ReviewDao reviewDao = new ReviewDao();
		ArrayList<Review> list = reviewDao.getReviewAll();
		for(int i=0; i<list.size(); i++){
			Review r = list.get(i);
	%>
			<tr>
				<td><%=r.getId() %></td>
				<td><%=r.getProductName() %></td>
				<td><%=r.getReviewTitle() %></td>
				<td><%=r.getScore() %></td>
			</tr>
	<%
		}
	%>
	</table>	
	
	<input type="button" value="뒤로가기" onclick="history.back();">
 	<hr align="center" style="border: solid 1px black;width:80%;position:absolute; top:780px;left:200px;opacity:0.2;">
	</form><br><br>
	</fieldset>
	
	<div class=footer1>
		<h1>L&S Company</h1>
	</div>
	<div class="footer2">
		대표 : 이은서<br>
		주소 : 경기도 용인시 처인구 용인대학로 134 환경과학대학 2층<br>
		개인정보관리 책임자 : 성재현 (joseph0903@naver.com)<br>
		신한은행:110-437-750-665&nbsp;&nbsp;사업자 등록번호 : 211-06-76999<br>
		통신판매업 신고 : 제 성동 - 3381호 [사업자 정보 확인]<br>
	</div>
	<div class="footer3">
		<h3 style="opacity:0.8;">고객센터 C/S Center</h3>
  		전화 : 02.3446.3775&nbsp;&nbsp;팩스 : 02.3446.4354<br>
    	이메일 : joseph0903@naver.com<br>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;오전 9시부터 오후 6시까지 상담가능합니다.<br></p>
	</div>
</body>

</html>