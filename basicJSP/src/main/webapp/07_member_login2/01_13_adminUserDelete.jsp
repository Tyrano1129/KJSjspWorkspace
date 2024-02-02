<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<%int idx = Integer.parseInt(request.getParameter("index")); %>

<input type="hidden" id="delete" value="<%=memberList.get(idx).getName()%>">
<%
	dao.memberDelete(idx);
%>

<script type="text/javascript">
	memberDelete(document.querySelector("#delete").value);
</script>

<%@ include file="./footer.jsp"%>