<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>
<%
	dao.boardAllDelete();
	List = dao.getBoardList();
%>
<script type="text/javascript">
	valueCheck("게시글 전체삭제되었습니다.","_00_main.jsp");
</script>