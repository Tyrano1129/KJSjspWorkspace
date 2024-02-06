<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
int check = MemberDAO.getInstance().checkLogin(id, pw);

if (check != 0) {
	session.setAttribute("log", check);
%>
<script>
	alert('로그인 하셨습니다')
	location.href = "01_memberLiat.jsp";
</script>

<%
} else {
%>
<script>
	alert('로그아웃 하셨습니다')
	location.href = "01_memberLiat.jsp";
</script>
<%
}
%>