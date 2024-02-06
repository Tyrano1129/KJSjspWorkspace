<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file= "header.jsp"%>
<%
   session.removeAttribute("log");
%>
<script>
alert('로그아웃 하셨습니다')
location.href="01_memberLiat.jsp";
</script>