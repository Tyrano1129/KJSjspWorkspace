<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<h1>회원 수정</h1>
<form action="03_32_updatePro.jsp">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" value="<%=memberList.get(log).getId()%>"
				readonly></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="pw" required></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"
				value="<%=memberList.get(log).getName()%>"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="radio" name="gender" value="남성"
				<% if(memberList.get(log).getGender().equals("남성")){%> checked <%}%> />남 <input
				type="radio" name="gender" value="여성"
				<% if(memberList.get(log).getGender().equals("여성")){%> checked <%}%> />여</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="정보수정"></td>
		</tr>
	</table>
</form>
<%@ include file="./footer.jsp"%>