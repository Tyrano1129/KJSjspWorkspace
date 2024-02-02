<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>
<%
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	boolean check = dao.memberSet(log, pw, name, gender);
	
	if(check){%>
		<script type="text/javascript">
			valueCheck("정보 수정 완료","main.jsp");
		</script>
	<%}else{ %>
		<script type="text/javascript">
			valueCheck("비밀번호를 다시 입력해주세요","03_31_updateForm.jsp");
		</script>
	<%} %>
<%@ include file="./footer.jsp"%>