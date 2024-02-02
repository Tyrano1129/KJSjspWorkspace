<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>

<%
	int idx = Integer.parseInt(request.getParameter("index"));
	System.out.println(idx);
	String title = request.getParameter("title");
	String textarea = request.getParameter("textarea");
	
	dao.boardSet(idx, title, textarea);
%>
<script type="text/javascript">
	valueCheck("수정완료!","_00_main.jsp");
</script>