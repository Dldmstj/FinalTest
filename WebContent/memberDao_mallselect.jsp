<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "shop.MemberDao" %>
<%@ page import = "shop.Member" %>
<%@ page import = "shop.AdminDao" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	AdminDao dao = new AdminDao();
	ArrayList<Member> list = dao.getMemberAll();
		for(int i=0; i<list.size(); i++) {
			Member m = list.get(i);
			String getId = m.getId();
			String getPw = m.getPw();
			String getName = m.getName();
			String getAd = m.getAd();
			String getTel = m.getTel();
			String getEmail = m.getEmail();
	}
	%>
</body>
</html>