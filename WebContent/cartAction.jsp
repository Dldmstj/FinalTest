<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="review.Cart" %>
<%@ page import="review.CartDao" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = null;
	if(session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	}
	if(id == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요.');");
		script.println("location.href='login.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	String product = null;
	int quantity = 0;
	int charge = 0;

	if(request.getParameter("product") != null) {
		product = (String)request.getParameter("product");
	}
	if(request.getParameter("quantity") != null) {
		quantity = Integer.parseInt(request.getParameter("quantity"));
	}
	if(request.getParameter("charge") != null) {
		charge = Integer.parseInt(request.getParameter("charge"));
	}
	
	CartDao cartDao = new CartDao();
	int result = cartDao.addCart(new Cart(0,id,product,quantity,charge));
	if(result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('오류가 발생했습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}else {
		session.setAttribute("id",id);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('장바구니에 추가되었습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
%>