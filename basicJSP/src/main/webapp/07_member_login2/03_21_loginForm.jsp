<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<h1>로그인 페이지</h1>
<form action="03_22_loginPro.jsp" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw" required></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="로그인"></td>
		</tr>
	</table>
</form>
<br>
<%@ include file="./footer.jsp"%>