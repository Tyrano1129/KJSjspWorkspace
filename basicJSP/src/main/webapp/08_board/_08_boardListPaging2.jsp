<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>

<%
	int total = List.size(); // 전체 게시글수
	int onePage = 5;	 // 한페이지 보여줄게시글수
	int nowNum = 1;	// 현재페이지 번호
	
	if(request.getParameter("start") != null){
		nowNum = Integer.parseInt(request.getParameter("start"));
	}
	
	int startPageNum = (nowNum -1) * onePage; // 현재 게시글 시작 번호
	int endPageNum = startPageNum + onePage; // 현재 게시글 마지막 번호
	if(endPageNum > total){
		endPageNum = total;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>전체 게시글 갯수 <%=List.size() %></h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>제목</th>
			<th>내용</th>
			<th>삭제</th>
		</tr>
	<%for(int i= startPageNum; i < endPageNum; i+=1){ %>
		<tr>
			<td><%=List.get(i).getNo() %></td>
			<td><%=List.get(i).getWriter() %></td>
			<td><%=List.get(i).getRegDate() %></td>
			<td><a href="_05_updateBoard.jsp?index=<%=i%>"><%=List.get(i).getSubject() %></a></td>
			<td><%=List.get(i).getContents() %></td>
			<td><button onclick="valueDelect(<%=i%>)">삭제</button></td>
		</tr>
	<%} %>	
	</table>
	<%	
		// 페이지 번호
		// 23 / 5 => 4 + 1 => 5
		int totalPageNum = total / onePage; // 전체 페이지 수 // 4
		int startPage = 1;// 한페이지 보여줄 페이지 시작번호
		int onePageNumcnt = 3; // 한페이지에 보여줄 번호
		if(totalPageNum % onePage > 0){ // 3
			totalPageNum +=1; // 5
		}
		if(request.getParameter("curNum") != null){
			startPage = Integer.parseInt(request.getParameter("curNum"));
		}
		
		int onePageNumEnd = startPage + onePageNumcnt -1; // 한페이지에 보여줄 마지막 번호
		
		if(onePageNumEnd > totalPageNum){ // 전체 페이지 번호 사이즈보다 크면
			onePageNumEnd = totalPageNum;
		}
		
		// [이전]
				
		if(startPage > onePageNumcnt){%>
		<a href="_07_boardListPaging.jsp?start=<%=startPageNum - 1%>curNum=<%=startPageNum - onePageNumcnt%>">[이전]</a>
	<%} %>
	<% 
		for(int i = startPage; i < onePageNumEnd; i+=1){
			%>
			
			<a href="_07_boardListPaging.jsp?start=<%=i%>">[<%=i%>]</a>
			
		<%}
	if(onePageNumEnd < totalPageNum){%>
		<a href="_07_boardListPaging.jsp?start=<%=startPageNum + onePage%>curNum=<%=startPageNum - onePageNumcnt%>">[이후]</a>
	<%} %>
</body>
</html>