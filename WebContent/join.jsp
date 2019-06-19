<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<link rel="stylesheet" type="text/css" href="css/join.css">
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
  <a href="#default" id="logo">L.S Company</a>
  </div>
<form action="userJoinAction.jsp" method="post">
	 <fieldset style = "position:relative; left:800px; top:300px;width:330px; height:570px;">
		<table>
			<legend>JOIN US</legend><br>
			<tbody>
				<tr>
					<div style="opacity:0.5;">&nbsp;&nbsp;&nbsp;&nbsp;아이디</div>&nbsp;&nbsp;&nbsp;&nbsp;<input name="id" class="inputText" id="id" type="text" placeholder="4글자 이상 입력하세요."> <br><br>
				</tr>
				<tr>
					<div style="opacity:0.5;">&nbsp;&nbsp;&nbsp;&nbsp;비밀번호 </div>&nbsp;&nbsp;&nbsp;&nbsp;<input name="pw" class="inputText" id="pw" type="password" placeholder="8글자 이상 입력하세요."> <br><br>
				</tr>
				<tr>
					<div style="opacity:0.5;">&nbsp;&nbsp;&nbsp;&nbsp;이름 </div>&nbsp;&nbsp;&nbsp;&nbsp;<input name="name" class="inputText" id="name"><br><br>
				</tr>
				<tr>
					<div style="opacity:0.5;">&nbsp;&nbsp;&nbsp;&nbsp;주소 </div>&nbsp;&nbsp;&nbsp;&nbsp;<input name="ad" class="inputText" id="ad" type="text"><br><br>
				</tr>
				<tr>
					<div style="opacity:0.5;">&nbsp;&nbsp;&nbsp;&nbsp;전화번호 </div>&nbsp;&nbsp;&nbsp;&nbsp;<input name="tel" class="inputText" id="tel" type="text"><br><br>
				</tr>
				<tr>
					<div style="opacity:0.5;">&nbsp;&nbsp;&nbsp;&nbsp;이메일 </div>&nbsp;&nbsp;&nbsp;&nbsp;<input name="email" class="inputText" id="email" type="text"><br><br>
				</tr>
				<tr>
					<input type="submit" id="join" value="회원가입" >
				</tr>
			</tbody>
		</table>
		</fieldset>
	</form>

</body>
</html>