<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<% 
	session.setAttribute("log",-1);
%>
<script type="text/javascript">
	valueCheck("로그아웃!","main.jsp");
</script>
<%@ include file="./footer.jsp"%>