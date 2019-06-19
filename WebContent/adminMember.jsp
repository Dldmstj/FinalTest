<%@page import="shop.Member"%>
<%@page import="shop.MemberDao"%>
<%@page import="shop.AdminDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 - 회원관리</title>
<link rel="stylesheet" type="text/css" href="css/writeReview.css">
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    document.getElementById("navbar").style.padding = "30px 10px";
    document.getElementById("logo").style.fontSize = "25px";
  } else {
    document.getElementById("navbar").style.padding = "80px 10px";
    document.getElementById("logo").style.fontSize = "35px";
  }
}
</script>
</head>
<body>
<div id="navbar">
 	 <a href="main.jsp" id="logo">&nbsp;&nbsp;&nbsp;&nbsp;L&S Company</a>
    </div>
    
  
	<fieldset style = "position:relative; left:600px; top:300px;width:850px; height:380px;opacity:0.8; ">
	<legend></legend><br><br>
	<h2> ** 관리자 - 전체 회원 관리 ** </h2>
	
	<table>
		<tr>
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>주소</th><th>전화번호</th><th>이메일</th><th>삭제</th>
		</tr>
	<%
		AdminDao adminDao = new AdminDao();
		ArrayList<Member> list = adminDao.getMemberAll();
		for(int i=0; i<list.size(); i++){
			Member m = list.get(i);
	%>
			<tr>
				<td><%=m.getId() %></td>
				<td><%=m.getPw() %></td>
				<td><%=m.getName() %></td>
				<td><%=m.getAd() %></td>
				<td><%=m.getTel() %></td>
				<td><%=m.getEmail() %></td>
				<td><a href="#">삭제</a></td>
			</tr>
	<%
		}
	%>
	</table>	
	<form action="member_modify_admin_form.jsp" name="modifyFrm" method="post">
		<input type="hidden" name="id">
	</form>
</body>
</html>