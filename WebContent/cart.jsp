<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="review.Cart" %>    
<%@ page import="review.CartDao" %>


<html>
<head>
    <title>현재 유저정보 출력화면</title>
     <link rel="stylesheet" type="text/css" href="css/myPage.css">
</head>
<body>
    <%
        String id = session.getAttribute("id").toString();

        CartDao dao = CartDao.getInstance();
        Cart cart = dao.myCart(id);
    %>
 	
</head>
<body>
<div id="navbar">
 	 <a href="main.jsp" id="logo">&nbsp;&nbsp;&nbsp;&nbsp;L&S Company</a>
    </div>
    <fieldset style = "position:relative; left:800px; top:300px;width:330px; height:380px;opacity:0.8; ">
        <br><br>
        <b><font size="6" color="gray">장바구니</font></b>
        <br><br><br>
                        <!-- 가져온 정보를 출력한다. -->
        <table>
            <tr>
                <th>상품이름</th><th>수량</th><th>가격</th>
            </tr>    
            <tr>
           		<td><%=cart.getProduct() %></td>
                <td><%=cart.getQuantity() %></td>
                <td><%=cart.getCharge() %></td>
            </tr>
        </table>
        
        <br>
        <input type="button" value="이전 페이지로" onclick="history.back();">
        </fieldset>
</body>
</html>