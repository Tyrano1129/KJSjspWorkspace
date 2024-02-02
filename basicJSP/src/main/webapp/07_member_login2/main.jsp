<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./header.jsp"%>
	<%if(log == -1){ %>
		<h1>현재 로그인 상태 : 로그아웃</h1>
	<%}else if(log == 99){ %>
		<h1>현재 로그인 상태 : 관리자</h1>
	<%}else{ %>
		<h1>현재 로그인 상태 : <%=memberList.get(log).getName() %></h1>
	<%} %>
<%@ include file="./footer.jsp"%>