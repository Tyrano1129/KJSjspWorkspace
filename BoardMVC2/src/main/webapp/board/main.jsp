<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="ctx" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 게시판</h1>
	<a href="${ctx}/boardList.do">전체 게시글 확인하기</a> <br><br>
	<a href="${ctx}/boardAddDummy.do }">더미 게시글 추가하기</a><br><br>
	<a href="${ctx}/boardDeleteAll.do">전체 게시글 삭제하기</a><br><br>
	<a href="${ctx}/board/addBoard.jsp">게시글 추가하기</a><br><br>
	<a href="${ctx}/boardListPaging.do">페이징 게시판</a><br><br>