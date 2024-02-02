<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
	<form action="03_12_joinPro.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<input type="radio" name="gender" value="남" checked/>남
				<input type="radio" name="gender" value="여"/>여
				</td>	
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="가입"></td>
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