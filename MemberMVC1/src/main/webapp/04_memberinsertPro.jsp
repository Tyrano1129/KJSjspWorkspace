<%@page import="kr.basic.member.Member"%>
<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file= "header.jsp"%>

<% 
	 String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String name=request.getParameter("name");
	int age=Integer.parseInt(request.getParameter("age")); 
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	
	Member m = new Member(0,id,pass,name,age,email,phone);
	
	int cnt = MemberDAO.getInstance().addOneMember(m);
	
	if(cnt != 0){%>
	  <script>
		alert('가입 성공 하셨습니다')
		location.href="01_memberLiat.jsp";
	  </script>
	<% }else{%>
	<script>
		alert('가입 실패 하셨습니다')
		location.href="01_memberLiat.jsp";
	 </script>
<%}%>