<%@page import="gugudon.guguDanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if(session.getAttribute("dao") == null){
	response.sendRedirect("index.jsp");
	return;
}
	guguDanDAO dao = (guguDanDAO)session.getAttribute("dao");
	
	/* if(dao.getCount() == 5){
		session.invalidate();
		response.sendRedirect("index.jsp");
		return;
	} */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 게임</h1>
	<form action="gugudanPro.jsp">
		<h2><%=dao.getCount() + 1%>번째 문 (현재 점수 :
			<%=dao.getScore()%>)
		</h2>
		<h2><%=dao.getQuiz()%>
			= <input type="number" name="answer"required />
		</h2>
		<button>전송</button>
	</form>
</body>
</html>