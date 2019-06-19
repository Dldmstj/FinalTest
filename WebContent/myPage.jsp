<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shop.MemberDao" %>    
<%@ page import="shop.Member" %>


<html>
<head>
    <title>현재 유저정보 출력화면</title>
    <link rel="stylesheet" type="text/css" href="css/myPage.css">
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
        String id = session.getAttribute("id").toString();

        MemberDao dao = MemberDao.getInstance();
        Member member = dao.getUserInfo(id);
    %>
 	<div id="navbar">
 	 <a href="main.jsp" id="logo">&nbsp;&nbsp;&nbsp;&nbsp;L&S Company</a>
    </div>
    
  
	<fieldset style = "position:relative; left:800px; top:300px;width:330px; height:380px;opacity:0.8; ">
	<legend>내 정보</legend><br><br>
		 <table>
            <tr>
                <td id="title">아이디</td>
                <td><%=member.getId() %></td>
            </tr>                 
            <tr>
                <td id="title">비밀번호</td>
                <td><%=member.getPw() %></td>
            </tr>                 
            <tr>
                <td id="title">이름</td>
                <td><%=member.getName() %></td>
            </tr>                  
            <tr>
                <td id="title">주소</td>
                <td><%=member.getAd()%></td>
            </tr>    
            <tr>
                <td id="title">전화번호</td>
                <td>
                    <%=member.getTel() %>
                </td>
            </tr>               
            <tr>
                <td id="title">이메일</td>
                <td><%=member.getEmail() %></td>
            </tr>
        </table>
        
        <br>
        <input type="button" value="뒤로" onclick="history.back();">&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="memberUpdate.jsp">회원정보 변경</a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="memberDelete.jsp">회원탈퇴</a>
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