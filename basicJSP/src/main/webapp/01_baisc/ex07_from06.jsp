<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="ex04_form03.jsp"> form04로 이동</a>
	<button onclick="movePage()">form 4로 이동</button>
	<form action="ex08_from06pro.jsp"> <!-- method선언을 안하면  값이 기본으로 get으로 되어있따. -->
		<input type="number" id="num" name="num" /> 
		<input type="button" id="btn1" value="버튼1" />
		<input type="submit" value="버튼2" />
		<button >버튼 2</button> <!-- form 태그 안에 있는 버튼은 <input type="submit" value="버튼2" /> 와 동일 -->
	</form>
		<button onclick="goNextPage()">전송 2</button> <!-- form 태그 밖에 있는 버튼은 <input type="button" value="버튼1" /> 과 동일 -->
</body>
</html>
<script>
document.querySelector("#btn1").addEventListener("click",goNextPage);
	function movePage() {
		location.href = "ex04_form03.jsp";
	}
	function goNextPage(num){
		let name = document.querySelector("#num").name;
		let value = document.querySelector("#num").value;
		location.href = `ex08_from06pro.jsp?${name}=${value}`;
	}
</script>