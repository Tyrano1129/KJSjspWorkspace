<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 샘플 회원 목록
	ArrayList<String> sampleId = new ArrayList<String>(Arrays.asList("qwer","abcd","hello"));
	ArrayList<String> samplePw = new ArrayList<String>(Arrays.asList("1111","2222","3333"));
	ArrayList<String> sampleName = new ArrayList<String>(Arrays.asList("이만수","박영희","이수민"));
	ArrayList<String> samlpleGender = new ArrayList<String>(Arrays.asList("남성","여성","여성"));
	int log = -1; // 로그인 후 인덱으로 확인할것 admin 특수 번호로 지정
	
	session.setAttribute("idList",sampleId);
	session.setAttribute("pwList",samplePw);
	session.setAttribute("nameList",sampleName);
	session.setAttribute("genderList",samlpleGender);
	session.setAttribute("log",log);	
	
	response.sendRedirect("02_main.jsp");
%>