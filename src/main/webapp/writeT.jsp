<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One | Services</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript">
	//글쓰기 폼에서 누락된 내용이 있는지 확인하는 함수
    function validateForm(form) {   
        if (form.name.value == "") {
            alert("작성자를 입력하세요.");
            form.name.focus();
            return false;
        }
        if (form.title.value == "") {
            alert("제목을 입력하세요.");
            form.title.focus();
            return false;
        }
        if (form.content.value == "") {
            alert("내용을 입력하세요.");
            form.content.focus();
            return false;
        }
        if (form.pass.value == "") {
            alert("비밀번호를 입력하세요.");
            form.pass.focus();
            return false;
        }
    }
</script>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="header">
		<div class="container">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp"><img
				src="<%=request.getContextPath()%>/images/logo.png"
				style="width: 150px" /></a>
			<div class="menu">
				<a class="toggleMenu" href="#"><img
					src="<%=request.getContextPath()%>/images/nav_icon.png" alt="" />
				</a>
				<ul class="nav" id="nav">
					<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
							ESCAPE</a></li>
					<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
					<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
					<li><a
						href="<%=request.getContextPath()%>/mvcboard/listT.do">Q&A</a></li>
					<li><a href="<%=request.getContextPath()%>/member/Login.jsp">Login</a></li>
					<a class="banner_btn" href="<%=request.getContextPath()%>/member/Register.jsp">회원가입</a>
					<div class="clear"></div>
				</ul>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/js/responsive-nav.js"></script>
			</div>
		</div>
	</div>
	<div class="about">
		<div class="container">
			<section class="title-section">
				<h1 class="title-header">후기 작성</h1>
			</section>
		</div>
	</div>
	<div class="container">
		<div class="col-9 pt-3">
			<form name="writeFrm" method="post" enctype="multipart/form-data" action="<%=request.getContextPath()%>/mvcboard/writeT.do" onsubmit="return validateForm(this);">
				<table class="table table-bordered">
					<colgroup>
						<col width="20%" />
						<col width="*" />
					</colgroup>
					<tbody>
						<tr>
							<th class="text-center" style="vertical-align: middle;">작성자</th>
							<td><input type="text" name="name" class="form-control"
								style="width: 100px;" /></td>
						</tr>
						<tr>
							<th class="text-center" style="vertical-align: middle;">패스워드</th>
							<td><input type="password" name="pass" class="form-control"
								style="width: 200px;" /></td>
						</tr>
						<tr>
							<th class="text-center" style="vertical-align: middle;">제목</th>
							<td><input type="text" name="title" class="form-control" /></td>
						</tr>
						<tr>
							<th class="text-center" style="vertical-align: middle;">내용</th>
							<td><textarea name="content" rows="5" class="form-control"></textarea></td>
						</tr>
						<tr>
							<th class="text-center" style="vertical-align: middle;">첨부파일</th>
							<td><input type="file" name="ofile" class="form-control" /></td>
						</tr>
					</tbody>
				</table>

				<!-- 각종버튼 -->
				<div class="row mb-3" align="right">
					<div class="col d-flex justify-content-end">
						<button type="button" class="btn btn-warning"
							onclick="location.href='<%=request.getContextPath()%>/mvcboard/listT.do';">목록보기</button>
						<button type="submit" class="btn btn-danger">작성완료</button> 
					</div>
				</div>
			</form>
		</div>
	</div>
	</form>
<div class="footer">
		<div class="footer_bottom">
			<div class="follow-us">
				<a class="fa fa-facebook social-icon" href="#"></a> <a
					class="fa fa-twitter social-icon" href="#"></a> <a
					class="fa fa-linkedin social-icon" href="#"></a> <a
					class="fa fa-google-plus social-icon" href="#"></a>
			</div>
			<div class="copy">
				<p>
					Copyright &copy; 2015 Company Name. Design by <a
						href="http://www.templategarden.com" rel="nofollow">TemplateGarden</a>
				</p>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.flexslider.js"></script>
</body>
</html>