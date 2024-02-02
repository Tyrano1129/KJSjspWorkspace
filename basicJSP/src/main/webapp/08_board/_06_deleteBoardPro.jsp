<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>

<%
	int idx = Integer.parseInt(request.getParameter("index"));

	dao.boardDelete(idx);
%>
<script type="text/javascript">
	valueCheck("게시글 삭제됐습니다.","_00_main.jsp");
</script>