<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	 String name = request.getParameter("name");
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 String inputId = request.getParameter("inputid");
	 String inputPw = request.getParameter("inputpw");
	 String msg = "";
	 boolean pass = false;
	 if(id.equals(inputId) && pw.equals(inputPw)){
		 msg = "로그인 성공";
		 pass = true;
	 }else{
		 msg = "로그인 실패";
	 }
	 
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