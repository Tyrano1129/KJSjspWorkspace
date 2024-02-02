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
	try{
		number1 = Integer.parseInt(request.getParameter("number1"));
		number2 = Integer.parseInt(request.getParameter("number2"));
	}catch(Exception e){
		out.print("<h1>둘중 하나가 숫자가 아닙니다.</h1> <br>");
	}
	
	if(number1 == 0 || number2 == 0){
		out.print("<h1> su1 : " + num1 +"</h1>");
		out.print("<h1> su1 : " + num2 + "</h1>");
	}else{
		int sum = number1 + number2;
		out.print("<h1> num1 : " + num1 +"</h1>");
		out.print("<h1> num2 : " + num2 + "</h1>");
		out.print("<h1> sum : " + sum +"</h1>");
	}
%>
</body>
</html>