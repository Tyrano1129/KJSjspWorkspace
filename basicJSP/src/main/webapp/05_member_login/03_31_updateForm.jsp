<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	    ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList"); 
		ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList"); 
		ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("nameList"); 
		ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");
		
		int log = (int)session.getAttribute("log");
	    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 수정</h1>
	<form action="03_32_updatePro.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="<%=idList.get(log)%>" readonly></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pw" required></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="<%=nameList.get(log)%>"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<input type="radio" name="gender" value="남성" <% if(genderList.get(log).equals("남성")){%>checked<%}%>/>남
				<input type="radio" name="gender" value="여성" <% if(genderList.get(log).equals("여성")){%>checked<%}%>/>여
				</td>	
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="정보수정"></td>
			</tr>
		</table>
	</form>
	<button onclick="home()"> 메인화면 </button>
</body>
</html>
<script type="text/javascript">
	function home(){
		location.href = "02_main.jsp";
	}
</script>