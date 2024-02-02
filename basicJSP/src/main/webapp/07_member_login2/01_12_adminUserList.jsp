<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
%>
<%@ include file="./header.jsp"%>
<h1>회원관리</h1>
<table border="1">
		<tr>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
			<td>성별</td>
			<td>삭제</td>
		</tr>
		<%
		for (int i = 0; i < memberList.size(); i += 1) {
		%>
			<tr>
				<td><%=memberList.get(i).getId()%></td>
				<td><%=memberList.get(i).getPw()%></td>
				<td><%=memberList.get(i).getName()%></td>
				<td><%=memberList.get(i).getGender()%></td>
				<td>
					<button onclick="location.href='01_13_adminUserDelete.jsp?index=<%=i%>'">삭제</button>
				</td>
			</tr>
		<%
		}
		%>
</table>
<%@ include file="./footer.jsp"%>