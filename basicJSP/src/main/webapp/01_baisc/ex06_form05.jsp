<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int number1 = 0;
	int number2 = 0;
	String num1 = request.getParameter("number1");
	String num2 = request.getParameter("number2");
	boolean err = true;
	try {
		number1 = Integer.parseInt(num1);
		number2 = Integer.parseInt(num2);
	} catch (Exception e) {
		err = false;
	}

	if (!err) {
	%>
	<h1>둘중 하나가 숫자가 아닙니다.</h1>
	<%
	} else {
	if (number1 > number2) {
	%>
	<h1><%=number1%>값이 더 큽니다.</h1>
	<%
	} else if (number1 < number2) {
	%>
	<h1><%=number2%>값이 더 큽니다.</h1>
	<%
	} else if (number1 == number2) {
	%>
	<h1>둘이 값이 같습니다.</h1>
	<%
	}
	}
	%>
</body>
</html>