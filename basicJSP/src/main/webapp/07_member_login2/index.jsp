<%@page import="member.MemberDAO"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	session.setAttribute("dao",new MemberDAO());
    	session.setAttribute("log",-1);
    	
    	response.sendRedirect("main.jsp");
    %>