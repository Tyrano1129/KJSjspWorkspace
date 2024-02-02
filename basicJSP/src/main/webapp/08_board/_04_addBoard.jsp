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
	<h1>게시글 추가하기</h1>
	<form action="_04_addBoardPro.jsp" method="post">
		<table border="1">
			<tr>
				<th>번호</th>
				<td><%=BoardVO.getCurNo()%></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="id" value="test" readonly></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="30" rows="20" name="textarea"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="left"><input type="submit" value="작성완료"></td>
			</tr>
		</table>
	</form>
</body>
</html>