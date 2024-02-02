<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>

<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	boolean check = dao.memberJoin(id, pw, name, gender);
	
	if(check){%>
		<script type="text/javascript">
			valueCheck("가입 완료","main.jsp");
		</script>
		
	<% }else{%>
		<script type="text/javascript">
			valueCheck("중복된 아이디가 있습니다.","03_11_joinForm.jsp");
		</script>
	<% }%>
<%@ include file="./footer.jsp"%>