<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		Random rd = new Random();
		int rNum = 0;
		String com = request.getParameter("com");
		
		if(com == null || com == ""){
			rNum = rd.nextInt(100) + 1;
		}else{
			rNum = Integer.parseInt(com);
		}
		
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>치트키 <%=rNum %></p>
<h1> 업다운 게임</h1>
<form action="updownGameplayPro.jsp">
<input type="hidden" name="com" value=<%= rNum %>>
<input type="number" name='answer' required min="1" max="100">
<button> 전송</button>
</form>
</body>
</html>