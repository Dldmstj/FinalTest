<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="shop.MemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body><title>main</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
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
<%
	String id = null;
	if(session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	}
	if(id == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요.');");
		script.println("location.href = 'login.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
%>
<!-- 
<header>
		<nav class="leftnav"> 
			<ul>
<%
	if(id == null) {
%>
				<li><a href="login.jsp" title="login">LOGIN</a></li>
				<li><a href="join.jsp" title="join">JOIN US</a></li>
<%
	} else {
%>
				<li><a href="logout.jsp" title="loout">LOGOUT</a></li>
				<li><a href="myPage.jsp" title="mypage">MY PAGE</a></li>
<%
	}
%>
-->
			</ul>
		</nav>
	<div id="navbar">
  <a href="#default" id="logo">L&S COMPANY</a>
  <div id="navbar-right">
    <a class="active" href="main.jsp">Home</a>
    <a href="writeReview.jsp">review</a>
<%
	if(id == null) {
%>
    <a href="login.jsp">login</a>
    <a href="join.jsp">join</a>
<%
	} else {
%>
	<a href="logout.jsp">logout</a>
	<a href="cart.jsp">cart</a>
    <a href="myPage.jsp">mypage</a>
<%
	}
%>
  </div>
</div>
	</header>
	
	<ul class="imglist_ul">
		<li>
			<a href="riceM.jsp">
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/jangsu.jpg">
				</div>
				<h3>쌀 막걸리</h3>
				<p>불린 쌀과 밀가루에 물을 넣고 쑨 죽에 누룩을 섞어 항아리에 담아 7∼14일 발효시키고 용수를 박아 떠 낸 술의 찌꺼기에 물을 섞어 걸러낸 술입니다.</p>
			</a>
		</li>
		<li>
			<a href="preM.jsp">
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/pre.jpg">
				</div>
				<h3>프리미엄 막걸리</h3>
				<p>프리미엄 막걸리들은 유기농 쌀, 찹쌀, 햅쌀, 지역 최상급 쌀들을 사용합니다. 술값이 상대적으로 비싼 이유는 이러한 재료를 사용하기 때문입니다.</p>
			</a>
		</li>
		<li>
			<a href="fruitM.jsp">
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/jat.jpg">
				</div>
				<h3>과실 막걸리</h3>
				<p>젊은 소비자의 입맛에 맞게 개발된 제품으로 부드러운 목넘김을 강조한 막걸리입니다.냉장 저장고에서 휴면발효공법으로 숙취와 잡냄새를 제거하였습니다. </p>
			</a>
		</li>
		<li>
			<a href="yakM.jsp">
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/seoul.jpg">
				</div>
				<h3>약주, 증류주</h3>
				<p>약주 : 약효가 있는 것이라고 인정되는 종류의 술이거나 처음부터 약재를 넣고 빚은 술입니다.<br>증류주 : 양조주보다 순도 높은 주정을 얻기 위해 1차 발효된 양조주를 다시 증류시켜 알코올 도수를 높인 술입니다. </p>
			</a>
		</li>
		<li>
			<a href="presentM.jsp">
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/sansam.jpg">
				</div>
				<h3>선물 세트</h3>
				<p>산삼주, 복분자주 등이 포함되어 있습니다.</p>
			</a>
		</li>
		<li>
			<a href="canM.jsp">
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/can.jpg">
				</div>
				<h3>캔 막걸리</h3>
				<p>살균탁주지만 탄산이 첨가되어 청량감과 텁텁함이 없는 깔끔한 맛을 자랑하는 막걸리로 휴대성이 좋게 캔막걸리로 만든 것이 특징입니다.</p>
			</a>
		</li>
	</ul>
	<iframe style="position:absolute;top:1020px;left:480px;" width="1000" height="440" src="https://www.youtube.com/embed/DDrxjY7PjrA?autoplay=1" frameborder="0"></iframe>
	
</body>

<hr align="center" style="border: solid 0.5px black;width:80%;position:relative;top:750px;">
	<!-- <div class="footer" style="margin-top:300px;padding-top:500px;text-align:center;">-->
	<div class=footer1>
		<h1 style="z-index:2;position:absolute;left:330px;top:1590px;height:140px;text-align:center;opacity:0.3;">L&S COMPANY</h1>
	</div>
	<div class="footer2"style="	z-index:1;position: absolute;left: 0;top:1560px;width:100%;height:150px;
			background-color: white;color: black;text-align: center;opacity:0.7;">
		대표 : 이은서<br>
		주소 : 경기도 용인시 처인구 용인대학로 134 환경과학대학 2층<br>
		개인정보관리 책임자 : 성재현 (joseph0903@naver.com)<br>
		신한은행:110-437-750-665&nbsp;&nbsp;사업자 등록번호 : 211-06-76999<br>
		통신판매업 신고 : 제 성동 - 3381호 [사업자 정보 확인]<br>
	</div>
	<div class="footer3" style="z-index:2;position:absolute;right:260px;top:1540px;height:180px;text-align:center;opacity:0.7;">
		<h3 style="opacity:0.8;">고객센터 C/S Center</h3>
  		전화 : 010.9428.5862&nbsp;&nbsp;팩스 : 02.3446.4354<br>
    	이메일 : joseph0903@naver.com<br>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;오전 9시부터 오후 6시까지 상담가능합니다.<br></p>
	</div>
	</div>

</html>
