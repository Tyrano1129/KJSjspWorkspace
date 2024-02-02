<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
	ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
	String id = "";
	String pw = "";
	boolean pass = false;
	
	//request.getParameter("id")
	//request.getParameter("pw")
	if(request.getParameter("id") != null && request.getParameter("pw") != null){
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		pass = true;
	}
	
	if(pass){
		pass = false;
		for(int i = 0; i < idList.size(); i+=1){
			if(id.equals(idList.get(i)) && pw.equals(pwList.get(i))){
				session.setAttribute("log",i);
				pass = true;
				break;
			} else if(id.equals("admin") && pw.equals("admin")){
				session.setAttribute("log",99);
				pass = true;
				break;
			}
		}
		if(pass){
			if((int)session.getAttribute("log") == 99){%>	
			<script>
				alert("로그인성공!");
				location.href = "01_11_adminMain.jsp";
			</script>
		<% }else {%>
			<script>
				alert("로그인성공!");
				location.href = "02_main.jsp"
			</script>
		<% }
		}else {%>
			<script>
				alert("로그인 실패!");
				location.href = "03_21_loginForm.jsp"
			</script>
		<%} 
	}else{%>
		<script>
			alert("입력값이 없습니다.");
			location.href = "03_21_loginForm.jsp"
		</script>
<% }%>