<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shop.Member" %>
<%@ page import="shop.MemberDao" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
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
<body>
  <div id="navbar">
  <a href="main.jsp" id="logo">&nbsp;&nbsp;&nbsp;&nbsp;L&S Company</a>
  </div>
	<form action="adminLoginAction.jsp" name="login" method="post">
	<fieldset style = "position:relative; left:800px; top:300px;width:330px; height:290px;">
	<legend>LOGIN</legend>
		<div class="inputbox">
		<div style="opacity:0.5;">&nbsp;Your Id</div>
			<label title="아이디" class="id"></label>
				<input class="inputText" name="id" id="member_id" type="text" placeholder="아이디"><br><br>
		</div>
		<div class="inputbox">
		<div style="opacity:0.5;">&nbsp;Your Password</div>
				<label title="비밀번호" class="pw"></label>
					<input class="inputText"name="pw" id="member_pw" type="password" placeholder="비밀번호"><br><br>
		</div>
			<input title="로그인" href="main.html" class="btn_login" type="submit" value="로그인">
	</fieldset>
	</form>

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