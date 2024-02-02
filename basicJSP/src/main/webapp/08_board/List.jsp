<%@page import="Board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("dao") == null){
		response.sendRedirect("index.jsp");
		return;
	}

	BoardDAO dao = (BoardDAO)session.getAttribute("dao");
	ArrayList<BoardVO> List = dao.getBoardList();
%>
<script type="text/javascript" src="./commom.js"></script>