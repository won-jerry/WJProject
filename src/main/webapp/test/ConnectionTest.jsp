<%@ page import="common.JDBConnect" %>
<%@ page import="common.DBConnPool" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>테스트</h2>
	<%
	JDBConnect jdbc1 = new JDBConnect();
	jdbc1.close();
	%>
	
	<h2>테스트 2</h2>
	<%
	JDBConnect jdbc3 = new JDBConnect();
	jdbc3.close();
	%>
	
	<h2>테스트 3</h2>
	<%
	DBConnPool pool = new DBConnPool();
	pool.close();
	%>
</body>
</html>