<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900'
	rel='stylesheet' type='text/css'>
</head>
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="z-index: 2000;">
		<div class="container-fluid">
			<a class="navbar-brand" href="${pageContext.request.contextPath}"> <img alt="Vue logo"
				src="<%=request.getContextPath()%>/resources/img/logo.png" style="height: 35px;" />
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>


			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="navbar-nav me-auto ">
					<li class="nav-item "><a class="nav-link active" href="${pageContext.request.contextPath}">홈
							<span class="sr-only">(current)</span>
					</a></li>
					<c:choose>
						<c:when test="${empty USER_ID}">
							<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/member/login.do">로그인</a></li>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/member/register.do">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/member/modify.do">회원수정</a></li>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a></li>
						
						</c:otherwise>
					
					</c:choose>
					
				</ul>

				<form class="d-flex">
					<input class="form-control me-2" type="text" placeholder="Search">
					<button class="btn btn-primary" type="button">Search</button>
				</form>
			</div>
		</div>
	</nav>
	
</body>
</html>
