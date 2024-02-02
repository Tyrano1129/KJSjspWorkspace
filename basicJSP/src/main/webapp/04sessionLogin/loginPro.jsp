<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

	 ArrayList<String> user = (ArrayList<String>)session.getAttribute("user");
    
    	System.out.println(user.get(3));
    
	 String inputId = request.getParameter("inputid");
	 String inputPw = request.getParameter("inputpw");
	 String msg = "";
	 boolean pass = false;
	 if(inputId.equals(user.get(0)) && inputPw.equals(user.get(1))){
		 msg = "로그인 성공";
		 user.set(2, "login");
	 }else{
		 msg = "로그인 실패";
	 }
	 
%>
<script>
	function pass(str1,str2){
		alert(str2);
		location.href = str1;
	}
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(user.get(2).equals("login")){%>
			<script>
				pass("index.jsp","로그인 성공");
			</script>	
		<%} else {%>
			<script>
				pass("login.jsp","로그인 실패");
			</script>
		<%}%>
</body>
</html>