<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int answer = 0;
    	int rd = 0;
    	String msg = "";
    	String route = "";
    	String msg2 = "";
    	try{
    		if(request.getParameter("answer") == ""){
    			throw new Exception();
    		}
	    	answer = Integer.parseInt(request.getParameter("answer"));
	    	rd = Integer.parseInt(request.getParameter("com"));
	    	msg = "";
	    	if(answer < rd){
	    		msg = "내가 작습니다.";
	    		route = "updownGameplay.jsp";
	    		msg2 = "뒤로가기";
	    	}else if(answer > rd){
	    		msg = "내가 큽니다.";
	    		route = "updownGameplay.jsp";
	    		msg2 = "뒤로가기";
	    	}else{
	    		msg =  "정답입니다.";
	    		route = "index.jsp";
	    		msg2 = "처음으로";
	    	}
    	}catch(NumberFormatException e){
    		msg= "입력하신건 숫자가 아닙니다.";
    		route = "updownGameplay.jsp";
    		msg2 = "뒤로가기";
    	}catch(Exception e){
    		msg= "값이 비어있습니다.";
    		route = "updownGameplay.jsp";
    		msg2 = "뒤로가기";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= msg %></h1>
	<a href="<%=route %>?com=<%= rd %>"><%=msg2 %></a>
</body>
</html>
<script type="text/javascript">
function getValue(str1 , str2){
	let com = str2;
	let route = str1;
	let url = `${route}?com=${com}`;
	location.href = url;
}

</script>