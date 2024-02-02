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

<h1>메인 페이지</h1>
<% if((int)session.getAttribute("log") == -1){ %>
	<a href="03_11_joinForm.jsp">회원가입</a>
	<a href="03_21_loginForm.jsp">로그인</a>
<%} else {
	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
	String id = idList.get((int)session.getAttribute("log"));
%>
	<h1><%=id %>님 환영합니다.</h1>
	<a href="03_21_logoutPro.jsp">로그아웃</a>
	<a href="03_31_updateForm.jsp">회원정보수정</a>
	<a href="03_41_deleteForm.jsp">회원탈퇴</a>
<%}%>
</body>
</html>