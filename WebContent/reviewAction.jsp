<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="review.Review" %>
<%@ page import="review.ReviewDao" %>
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
	String productName = null;
	String reviewTitle = null;
	String reviewContent = null;
	String Score = null;

	if(request.getParameter("productName") != null) {
		productName = (String)request.getParameter("productName");
	}
	if(request.getParameter("reviewTitle") != null) {
		reviewTitle = (String)request.getParameter("reviewTitle");
	}
	if(request.getParameter("reviewContent") != null) {
		reviewContent = (String)request.getParameter("reviewContent");
	}
	if(request.getParameter("Score") != null) {
		Score = (String)request.getParameter("Score");
	}
	
	if(productName == null || reviewTitle == null || Score == null || reviewTitle.equals("") ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	
	ReviewDao reviewDao = new ReviewDao();
	int result = reviewDao.write(new Review(0,id,productName,reviewTitle,reviewContent,Score));
	if(result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('리뷰 등록에 실패하였습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}else {
		session.setAttribute("id",id);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('리뷰가 등록되었습니다.');");
		script.println("location.href = 'review.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
%>