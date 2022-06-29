<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상대경로</h2>
	<img src="../images/logo.png" alt=""/>
	
	<h2>절대경로 사용1</h2>
	<p>프로젝트를 변경하거나 배포하면 경로를 수정해야 한다.</p>
	<img src="/WJProject/images/logo.png" alt=""/>
	
	<h2>절대경로 사용2(메서드를 통해 얻어옴)</h2>
	<p>메서드를 통해 얻어오므로 프로젝트를 변경하더라도 수정할 필요가 없다.</p>
	<img src="<%=request.getContextPath() %>/images/logo.png" alt=""/>
</body>
</html>