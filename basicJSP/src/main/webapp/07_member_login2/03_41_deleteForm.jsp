<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>
<h1>회원 탈퇴</h1>
<form action="03_42_deletePro.jsp">
	<table border="1">
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="회원탈퇴"></td>
		</tr>
	</table>
</form>
<%@ include file="./footer.jsp"%>