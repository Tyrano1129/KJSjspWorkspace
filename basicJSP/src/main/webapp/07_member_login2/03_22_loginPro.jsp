<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if(id.equals("admin") && pw.equals("admin")){
		session.setAttribute("log",99);
	%>
		<script type="text/javascript">
			valueCheck("로그인 성공","main.jsp")
		</script>
	<% }
	
	int idx = dao.memberLogin(id, pw);
	if(idx == -1){%>
		<script type="text/javascript">
			valueCheck("로그인 실패","03_21_loginForm.jsp")
		</script>
	<%} else {
		session.setAttribute("log",idx);
	%>
		<script type="text/javascript">
			valueCheck("로그인 성공","main.jsp")
		</script>
	<%}%>
%>
<%@ include file="./footer.jsp"%>