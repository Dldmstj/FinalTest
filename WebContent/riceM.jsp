<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="shop.MemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/riceM1.css">
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
<div id="navbar">
  <a href="index.jsp" id="logo">L&S COMPANY</a>
  <div id="navbar-right">
    <a class="active" href="main.jsp">Home</a>
    <a href="review.jsp">review</a>
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

<div class="rice" style="position:absolute;top:270px;left:450px;color:#F7CA18;">
	<h2>쌀 막걸리</h2>
	<hr align="center" style="border: solid 0.8px #F7CA18;width:1000px;position:absolute;top:50px;">
</div>


<!-- 상품목록 -->
<ul class="imglist_ul" style="position:relative;top:400px;left:-40px;">
		<li>
			<a href="riceM1.jsp" style="position:relative;width:600px;">
			<h3 style="text-align:center;">부자 생 막걸리</h3><br>
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/rice/buja.jpg">
				</div>
				<!-- <p>불린 쌀과 밀가루에 물을 넣고 쑨 죽에 누룩을 섞어 항아리에 담아 7∼14일 발효시키고 용수를 박아 떠 낸 술의 찌꺼기에 물을 섞어 걸러낸 술입니다.</p>-->
			</a>
		</li>
		<li>
			<a href="riceM2.jsp" style="position:relative;left:300px;width:600px;">
			<h3 style="text-align:center;">덕산 쌀 막걸리</h3><br>
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/rice/ducksan.png">
				</div>
	
			</a>
		</li><br><br>
		<li>
			<a href="riceM3.jsp"style="position:relative;top:60px;width:600px;">
			<h3 style="text-align:center;">호랑이 생 막걸리</h3><br>
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/rice/horang.png">
				</div>
			
			</a>
		</li>
		<li>
			<a href="riceM4.jsp" style="position:relative;top:60px;left:300px;width:600px;">
			<h3 style="text-align:center;">서울 장수 막걸리</h3><br>
				<div class="screen">
					<span></span><span></span><span></span><span></span>
					<img src="./img/rice/jangsu.png">
				</div>
				
			</a>
		</li>
	</ul>



</body>
<hr align="center" style="border: solid 0.3px black;width:80%;position:absolute;left:200px;top:1500px;">
	<!-- <div class="footer" style="margin-top:300px;padding-top:1260px;text-align:center;">-->
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
	<div class="footer3" style="z-index:2;position:absolute;right:260px;top:1550px;height:180px;text-align:center;opacity:0.7;">
		<h3 style="opacity:0.8;">고객센터 C/S Center</h3>
  		전화 : 010.9428.5862&nbsp;&nbsp;팩스 : 02.3446.4354<br>
    	이메일 : joseph0903@naver.com<br>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;오전 9시부터 오후 6시까지 상담가능합니다.<br></p>
	</div>
	</div>

</html>
