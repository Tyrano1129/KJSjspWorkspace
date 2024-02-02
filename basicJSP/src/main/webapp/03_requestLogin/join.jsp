<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 가입</h1>
<form action="joinPro.jsp" method="post">
	Name : <input type="text" name="name"> <br><br>
	I D : <input type="text" name="id"> <br><br>
	P W : <input type="text" name="pw"> <br><br>
	<input type="submit" value="회원가입">
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