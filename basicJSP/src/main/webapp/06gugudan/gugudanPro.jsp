<%@page import="gugudon.guguDanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("dao") == null){
	response.sendRedirect("index.jsp");
	return;
}
	guguDanDAO dao = (guguDanDAO)session.getAttribute("dao");
%>
<%
	String answer = request.getParameter("answer");
	boolean check = dao.checkAnswer(answer);
	
	if(check){
		%>
		<script type="text/javascript">
			alert("정답입니다.")
			location.href = "gugudan.jsp";
			//history.go(-1);
			//history.back();
		</script>
	<%}else {%>
	`<script type="text/javascript">
			alert("오답입니다.")
			location.href = "gugudan.jsp";
			//history.go(-1);
			//history.back();
		</script>
	<%}
%>