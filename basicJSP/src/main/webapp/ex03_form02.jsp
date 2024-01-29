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
int age = 0;
String name = request.getParameter("name");
if(request.getParameter("age").length() != 0){
	age = Integer.parseInt(request.getParameter("age"));
}
%>
<h1> 이름 : <%= name %></h1>
<h1> 나이 : <%= age %></h1>
</body>
</html>