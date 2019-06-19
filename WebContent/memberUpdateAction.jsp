<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shop.Member" %>
<%@ page import="shop.MemberDao" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String ad = request.getParameter("ad");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	
	
	
	if(id == null || pw == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	MemberDao memberDao = new MemberDao();
	int result = memberDao.updateMember(id,pw,name,ad,tel,email);
	if(result == 1) {
		session.setAttribute("id",id);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원정보가 수정되었습니다.');");
		script.println("location.href = 'myPage.jsp';");
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
		script.println("alert('아이디를 잘못 입력하셨습니다.');");
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