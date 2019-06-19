<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shop.Member" %>
<%@ page import="shop.MemberDao" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = null;
	String pw = null;
	String name = null;
	String ad = null;
	String tel = null;
	String email = null;

	if(request.getParameter("id") != null) {
		id = (String)request.getParameter("id");
	}
	if(request.getParameter("pw") != null) {
		pw = (String)request.getParameter("pw");
	}
	if(request.getParameter("name") != null) {
		name = (String)request.getParameter("name");
	}
	if(request.getParameter("ad") != null) {
		ad = (String)request.getParameter("ad");
	}
	if(request.getParameter("tel") != null) {
		tel = (String)request.getParameter("tel");
	}
	if(request.getParameter("email") != null) {
		email = (String)request.getParameter("email");
	}
	
	if(id == null || pw == null || name == null || ad == null || tel == null || email == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	MemberDao memberDao = new MemberDao();
	int result = memberDao.join(new Member(id,pw,name,ad,tel,email));
	if(result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}else {
		session.setAttribute("id",id);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입 성공.');");
		script.println("location.href = 'login.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
%>