<%@page import="member.Member"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
  	if(session.getAttribute("dao") == null){
  		response.sendRedirect("index.jsp");
  		return;
  	}
  	
  	MemberDAO dao = (MemberDAO)session.getAttribute("dao");
  	int log = (int)session.getAttribute("log");
  	
  	ArrayList<Member> memberList = dao.getList();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 JSP 로그인 구현 실습 ver2</title>
<script type="text/javascript" src="./commom.js"></script>
</head>
<body>
	<a href="main.jsp">홈</a>
	<% if(log == -1){%>
	<a href="03_11_joinForm.jsp">회원가입</a>
	<a href="03_21_loginForm.jsp">로그인</a>
	<%}else if(log == 99){%>
	<a href="03_23_logoutPro.jsp">로그아웃</a>
	<a href="01_12_adminUserList.jsp">회원관리</a>
	<%}else {%>
	<a href="03_23_logoutPro.jsp">로그아웃</a>
	<a href="03_31_updateForm.jsp">회원정보수정</a>
	<a href="03_41_deleteForm.jsp">회원탈퇴</a>
	<%}%>