<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList"); 
	ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList"); 
	ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("nameList"); 
	ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");
	
	int log = (int)session.getAttribute("log");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");
	String name = request.getParameter("name");
	
	boolean check = true;
	for(int i = 0; i < idList.size(); i+=1){
		if(idList.get(i).equals(id) && log != i){
			check = false;
			break;
		}
	}
	if(check){
		idList.set(log,id);
		pwList.set(log,pw);
		nameList.set(log,name);
		genderList.set(log,gender);
	%>
<script type="text/javascript">
		alert("수정완료!")
		location.href = "02_main.jsp";
	</script>
<%}else{%>
<script type="text/javascript">
		alert("중복된 아이디입니다.")
		location.href = "03_11_joinForm.jsp";
	</script>
<%}%>