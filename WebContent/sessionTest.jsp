<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name;
	if(session.getAttribute("name") != null) {
		name = (String) session.getAttribute("name");
	}else{
		name = "技记 蔼 绝澜.";
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Session Test</title>
</head>
<body>
	<h2>技记 抛胶飘</h2>
	<input type="button" onclick="location.href='sessionSet.jsp'" value="技记 蔼 历厘" />
	<input type="button" onclick="location.href='sessionDel.jsp'" value="技记 蔼 昏力" />
	<input type="button" onclick="location.href='sessionInvalidate.jsp'" value="技记 檬扁拳" />
	<h3><%=name %></h3>
</body>
</html>