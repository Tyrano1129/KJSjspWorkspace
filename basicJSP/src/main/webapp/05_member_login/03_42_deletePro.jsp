<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");

int log = (int) session.getAttribute("log");

String pw = request.getParameter("pw");

boolean check = false;
if (pwList.get(log).equals(pw)) {
	check = true;
}
if (check) {
	idList.remove(log);
	pwList.remove(log);
	nameList.remove(log);
	genderList.remove(log);

	session.setAttribute("idList", idList);
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);
	session.setAttribute("log", -1);
%>
<script type="text/javascript">
	alert("회원탈퇴 완료되었습니다.");
	location.href = "02_main.jsp";
</script>
<%
} else {
%>
<script type="text/javascript">
	alert("비밀번호를 틀렸습니다.");
	location.href = "03_41_deleteForm.jsp";
</script>
<%
}
%>