<%@page import="gugudon.guguDanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	if(session.getAttribute("dao") == null){
    		session.setAttribute("dao",new guguDanDAO());
    	}else{
    		/* dao = (guguDanDAO)session.getAttribute("dao"); */
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 구구단 게임</h1>
<h2>5분제를 모두 맞추면 게임 종료</h2>
<a href="gugudan.jsp"> 게임 시작</a>
</body>
</html>