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

</head>
<body>
<fieldset style = "position:relative; left:800px; top:300px;width:330px; height:380px;opacity:0.8; ">
	
	<h2> REVIEW </h2>
	
	<table>
		<tr>
			<th>아이디</th><th>상품구분</th><th>제목</th>
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
				<td><a href="#">삭제</a></td>
			</tr>
	<%
		}
	%>
	</table><br><br>
	<input type="button" value="뒤로가기" onclick="history.back();">
 	<input type="button" value="메인으로" onclick="location.href='admin.jsp';">	
	<form action="member_modify_admin_form.jsp" name="modifyFrm" method="post">
		<input type="hidden" name="id">
	</form>
	</fieldset>
</body>
</html>