<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./List.jsp"%>
<%
	int idx = Integer.parseInt(request.getParameter("index"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 수정하기</h1>
	<form action="_05_updateBoardPro.jsp">
		<input type="hidden" name="index" value="<%=idx%>"/>
		<table border="1">
			<tr>
				<th>번호</th>
				<td colspan="3"><%=List.get(idx).getNo()%></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=List.get(idx).getWriter()%></td>
				<th>작성일</th>
				<td><%=List.get(idx).getRegDate()%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><input type="text" name="title" value="<%=List.get(idx).getSubject()%>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><textarea cols="30" rows="20" name="textarea"><%=List.get(idx).getContents()%></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="left"><input type="submit" value="수정하기"/></td>
			</tr>
		</table>
	</form>
</body>
</html>