<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product.Product" %>    
<%@ page import="product.ProductDao" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/detail.css">
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<body onload="init();">
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

var sell_price;
var quantity;

function init () {
	sell_price = document.form.sell_price.value;
	quantity = document.form.quantity.value;
	document.form.charge.value = sell_price;
	change();
}

function add () {
	hm = document.form.quantity;
	charge = document.form.charge;
	hm.value ++ ;

	charge.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.quantity;
	charge = document.form.charge;
		if (hm.value > 1) {
			hm.value -- ;
			charge.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.quantity;
	charge = document.form.charge;

		if (hm.value < 0) {
			hm.value = 0;
		}
		charge.value = parseInt(hm.value) * sell_price;
}  

</script>
<body>
	<div id="navbar">
  	<a href="main.jsp" id="logo">&nbsp;&nbsp;&nbsp;&nbsp;L&S COMPANY</a>
  	</div>
  	
	<form name="form" action="cartAction.jsp" method="get">
	<fieldset style = "position:relative; left:800px; top:300px;width:330px; height:380px;opacity:0.8; ">
	<br><br>
	
        <b><font size="6" color="gray">상품 정보</font></b>
	<legend>상품옵션</legend>
	<!-- -->
	상품명 : 장수막걸리 <br></p> <input type="hidden" name="product" value="jangsu">
	수량 : <input type=hidden name="sell_price" value="1350">
	<input type="text" name="quantity" value="1" size="3" onchange="change();">
	<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
	금액 : <input type="text" name="charge" size="11" readonly>원

	<!-- 
	상품명 : 장수막걸리 <br></p> <input type="hidden" name="product" value="jangsu">
	수량 : <select name="quantity" style="width:170px;height:30px;">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
		</select> &nbsp;개
	<br>
	Price : 1,350 <input type="hidden" name="price" value="1350">
		<br><br>
		-->
		<!-- <input type="text" name="reviewContent" placeholder="내용을 입력하세요" style="width:300px; height:150px;"> <br><br>-->
		<input type="submit" value="장바구니에 추가" style="position:relative;left:100px;width:200px;height:40px;background-color:#4C4C4C;color:white;">
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