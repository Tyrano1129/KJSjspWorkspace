<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList"); 
	ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList"); 
	ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("nameList"); 
	ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");
	
	int num = Integer.parseInt(request.getParameter("index"));
	System.out.println("test=" + num);

	idList.remove(num);
	pwList.remove(num);
	nameList.remove(num);
	genderList.remove(num);
	
	session.setAttribute("idList",idList);
	session.setAttribute("pwList",pwList);
	session.setAttribute("nameList",nameList);
	session.setAttribute("genderList",genderList);
	
	response.sendRedirect("01_12_adminUserList.jsp");
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>