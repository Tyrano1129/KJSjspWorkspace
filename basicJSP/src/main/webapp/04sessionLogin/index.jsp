<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String name = null;
    	ArrayList user = null;
    	if(session.getAttribute("name") != null && session.getAttribute("user") != null){
        	name = (String)session.getAttribute("name");
        	user = (ArrayList)session.getAttribute("user");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 홈 화면</h1>
	<% if(name != null && user != null && user.get(2).equals("login")){ %>
		<h1><%=name %> 님 환영합니다.</h1>
		<a href="logout.jsp"> 로그아웃 </a>
	<%} else { %>
		<a href="join.jsp">회원가입</a>
		<a href="login.jsp">로그인</a>
	<%} %>
</body>
</html>