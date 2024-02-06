<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// java에서 데이터베이스 직접 연결하기
    	
    	String url = "jdbc:mysql://localhost:3306/testdb?charaterEncoding=UTF-8&serverTimezone=UTC";
    	String user = "root";
    	String password = "1234";
    	Connection conn = null;
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		conn = DriverManager.getConnection(url,user,password);
    		System.out.println(conn);
    	}catch(SQLException e){
    		System.out.println(e.getErrorCode());
    		System.out.println("연동실패");
    		
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(conn != null){%>
	<h1>연동 성공</h1>
	<%}else { %>
	<h1>연동 실패</h1>
<%} %>
</body>
</html>