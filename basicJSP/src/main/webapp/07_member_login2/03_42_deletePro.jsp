<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%
	String pw = request.getParameter("pw");
	
	boolean check = dao.memberResign(log, pw);
	
	if(check){
		session.setAttribute("log", -1);
	%>
		<script type="text/javascript">
			valueCheck("탈퇴되었습니다.","main.jsp");
		</script>
	<%}else{ %>
		<script type="text/javascript">
			valueCheck("비밀번호를 틀렸습니다.","03_41_deleteForm.jsp");
		</script>
	<%} %>
<%@ include file="./footer.jsp"%>