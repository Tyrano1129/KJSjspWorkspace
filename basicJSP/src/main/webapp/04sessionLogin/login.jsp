<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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