<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" type="text/css" href="css/myPage.css">
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
	<fieldset style = "position:relative; left:800px; top:300px;width:330px; height:380px;opacity:0.8; ">
	<form action="memberUpdateAction.jsp" method="post">
	<h2>회원 정보 수정</h2>
		ID : <input type="text" name="id" placeholder = "본인의 아이디를 정확히 입력"><br>
		PW : <input type="password" name="pw" placeholder = "본인의 비밀번호를 정확히 입력"><br>
		NAME : <input type="text" name="name" placeholder = "변경할 이름을 입력"><br>
		ADDRESS : <input type="text" name="ad" placeholder = "변경할 주소를 입력"><br>
		PHONE NUMBER : <input type="text" name="tel" placeholder = "변경할 전화번호를 입력"><br>
		E-MAIL : <input type="text" name="email" placeholder = "변경할 이메일주소를 입력"><br>
		<input type="submit" value="회원정보 수정">
	</form>
	</fieldset>
	<hr align="center" style="border: solid 1px black;width:80%;position:absolute;top:780px;left:200px;opacity:0.2;">
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