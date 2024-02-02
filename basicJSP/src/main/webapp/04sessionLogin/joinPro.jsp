<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	 String name = request.getParameter("name");
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 String pass = "";
	 session.setAttribute("name",name);
	 
	 ArrayList<String> list = new ArrayList<String>();
	 list.add(id);
	 list.add(pw);
	 list.add(pass);
	 session.setAttribute("user",list);
	 // 세션은 보통 30분으로 디폴트로 서버안에 저장되어있음
	 //session.setMaxInactiveInterval(5); 5초동안만 유지
	 //
	 // response.sendRedirect("login.jsp")
%>
</body>
</html>
<script type="text/javascript">
	alert("회원가입 완료");
	location.href = "index.jsp";
</script>