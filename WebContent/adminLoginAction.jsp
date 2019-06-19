<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shop.Member" %>
<%@ page import="shop.MemberDao" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = null;
	String pw = null;

	if(request.getParameter("id") != null) {
		id = (String)request.getParameter("id");
	}
	if(request.getParameter("pw") != null) {
		pw = (String)request.getParameter("pw");
	}
	
	
	MemberDao memberDao = new MemberDao();
	int result = memberDao.admin(id,pw);
	if(result == 1) {
		session.setAttribute("id",id);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('관리자님 환영합니다.');");
		script.println("location.href = 'admin.jsp';");
		script.println("</script>");
		script.close();
		return;
	}else if(result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 잘못 입력하셨습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}else if(result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디 입니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}else if(result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
%>