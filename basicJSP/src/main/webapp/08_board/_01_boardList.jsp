<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>
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
	<%for(int i= 0; i < List.size(); i+=1){ %>
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
</body>
</html>