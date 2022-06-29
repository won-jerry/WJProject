<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/resources/jQuery/jquery-3.6.0.min.js"></script>
<link href="<%=request.getContextPath()%>/resources/bootstrap-5.1.3/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/resources/bootstrap-5.1.3/js/bootstrap.bundle.min.js"></script>
<style>
.user_input {
	border: 1px solid rgb(75, 75, 75);
	width: 320px;
	height: 27px;
	padding: 10px;
	font-size: 18px;
}

input[type=image] {
	margin-top: 2px;
}
</style>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style2.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="<%=request.getContextPath()%>/https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/datepicker-ko.js"></script>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
<script type="text/javascript">
	//아이디 비번 입력체크
	function loginCheck(form) {
		
			if (form.user_id.value == "") {
				alert("아이디 입력");
				form.user_id.focus();
				return false;
			}if (form.user_pw.value == "") {
				alert("비밀번호 입력");
				form.user_pw.focus();
				return false;
			}	
	}
</script>
</head>
<body>
	<div class="header">
		<div class="container">
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/index.jsp"><img
				src="<%=request.getContextPath()%>/images/logo.png"
				style="width: 150px" /></a>
		</div>
	</div>
	<fieldset>
		<%
		if (session.getAttribute("Userid") == null) {
			// session 영역에 저장된 속성값이 없다면 로그아웃 상태이다.
			// 그러므로 로그인 폼이 화면에 출력되어야 한다.
		%>
		<table border="0" cellpadding="40" cellspacing="0" width="100%">
			<tr>
				<td align="center" valign="middle">
					<table border="0" cellpadding="0" cellspacing="0" width="470">
						<tr>
							<td align="center"><img
								src="<%=request.getContextPath()%>/images/login_logo.gif" /></td>
						</tr>
					</table>

					<form name="loginFrm" action="../member/login.do" method="post"
						onsubmit="return loginCheck(this);">
						<table width="470" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="350"><input type="text" name="userid"
									placeholder="아이디" class="user_input" /><br />
								<td width="120" rowspan="3" align="right"><input
									type="image"
									src="<%=request.getContextPath()%>/images/login_bt.gif" /></td>
							</tr>
							<tr height="5">
								<td></td>
							</tr>
							<tr>
								<td><input type="password" name="pass" placeholder="****"
									class="user_input" /></td>
							</tr>
							<tr>
								<td></td>
								<td><input id="id_check" type="checkbox" checked class="custom-control-input"> 
										<label for="customCheck1" class="custom-control-label">Remember Id</label>
								</td>
							<tr>
						</table>
						<div style="margin-top: 15px;"></div>
						<div style="margin-top: 15px;"></div>
						<table width="470" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td align="left"><a href="#" onClick=""><img
										src="<%=request.getContextPath()%>/images/login_member.gif"
										alt="아직도 회원이 아니세요?" /></a></td>
								<td align="right"><a href="#" onClick=""><img
										src="<%=request.getContextPath()%>/images/login_idpw.gif"
										alt="아이디/비밀번호를 잊어버리셨어요?" /></a></td>
							</tr>
						</table>
					</form>
					<div style="margin-top: 30px;"></div>
				</td>
			</tr>
		</table>
	</fieldset>
	<%
	} else {
	// session 영역에 저장된 속성값이 있다면 로그인 된 상태이므로
	// 회원 정보 및 로그아웃 버튼을 화면에 출력한다.
	%>
	<%=session.getAttribute("Name")%>
	님, 로그인 하셨습니다.
	<br />
	<a href="<%=request.getContextPath()%>/logout.jsp">[로그아웃]</a>
	<%
	}
	%>
</body>
</html>