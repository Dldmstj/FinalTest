<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>
	<div id="navbar">
  	<a href="main.jsp" id="logo">&nbsp;&nbsp;&nbsp;&nbsp;L&S COMPANY</a>
  	</div>
  	
	<form action="reviewAction.jsp" method="post">
	<fieldset style = "position:relative; left:800px; top:300px;width:330px; height:380px;opacity:0.8; ">
	<legend>REVIEW</legend>
	<br>
		<select name="productName" style="width:170px;height:30px;">
			<option value="rice">쌀막걸리</option>
			<option value="premium">프리미엄막걸리</option>
			<option value="can">캔막걸리</option>
			<option value="fruit">과실막걸리</option>
			<option value="distill">증류주</option>
			<option value="gift">선물세트</option>
		</select>
		<select name="Score" style="width:60px;height:30px;">
			<option value="1">1점</option>
			<option value="2">2점</option>
			<option value="3">3점</option>
			<option value="4">4점</option>
			<option value="5">5점</option>
		</select><br><br>
		<input type="text" name="reviewTitle" placeholder="상품명을 입력하세요" style="height:40px;font-size:18px;width:230px;"> <br><br>
		<!--<textarea form="inform" cols="40"rows="10" name="content" autofocus required wrap="hard" placeholder="내용을 입력하세요"></textarea><br><br> -->
		<input type="submit" value="저장" style="position:relative;left:100px;width:100px;height:40px;background-color:#4C4C4C;color:white;">
	</form>
	</fieldset>
	
	<hr align="center" style="border: solid 0.5px black;width:80%;position:relative;top:380px;">
	<div class=footer1>
		<h1>L&S COMPANY</h1>
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