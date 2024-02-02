<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>

<%
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String textarea = request.getParameter("textarea");
	
	dao.boardAdd(id, title, textarea);
%>
<script type="text/javascript">
	valueCheck("작성완료!","_00_main.jsp");
</script>