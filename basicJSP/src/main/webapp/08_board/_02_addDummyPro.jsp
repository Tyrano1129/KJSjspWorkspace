<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>
<%
	for(int i = 0; i < 10; i+=1){
		String writer = "test" + BoardVO.getCurNo();
		String subject = "제목" + BoardVO.getCurNo();
		String contents = "내용" + BoardVO.getCurNo();
		dao.boardAdd(writer, subject, contents);
	}
%>
<script type="text/javascript">
	valueCheck("더미 게시글 10개 생성되었습니다.","_00_main.jsp");
</script>