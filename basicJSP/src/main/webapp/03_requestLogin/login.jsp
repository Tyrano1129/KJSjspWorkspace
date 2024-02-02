<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	 String name = request.getParameter("name");
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 
	 String[] member = (String[])request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인</h1>
<form action="loginPro.jsp" method="post">
	ID : <input type="text" name="inputid"> <br><br>
	PW : <input type="text" name="inputpw"> <br><br>
	<input type="hidden" name="name" value="<%=name%>">
	<input type="hidden" name="id" value="<%=id%>">
	<input type="hidden" name="pw" value="<%=pw%>">
	<input type="hidden" name="id">
	<input type="submit" value="LOG-IN">
</form>
<br>
<button onclick="home()">홈으로</button>
</body>
</html>
<script type="text/javascript">
	function home(){
		location.href = "index.jsp";
	}
</script>