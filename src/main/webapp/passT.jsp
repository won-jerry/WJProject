<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
<script type="text/javascript">
	//글쓰기 폼에서 누락된 내용이 있는지 확인하는 함수
    function validateForm(form) {
        if (form.pass.value == "") {
            alert("비밀번호를 입력하세요.");
            form.pass.focus();
            return false;
        }
    }
</script>
<link
	href='<%=request.getContextPath()%>/http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900'
	rel='stylesheet' type='text/css'>
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
	<div class="about">
		<div class="container">
			<section class="title-section">
				<h1 class="title-header">비밀번호 확인</h1>
			</section>
		</div>
	</div>
<form class="container" name="writeFrm" method="post" 
      action="<%=request.getContextPath()%>/mvcboard/passT.do" onsubmit="return validateForm(this);">
<!--  
해당 요청명으로 넘어온 파라미터는 컨트롤러에서 받은후 request영역에 저장하여
View에서 확인할수 있지만, EL을 이용하면 해당 과정없이 param내장객체로 즉시
값을 받아올 수 있다.

※hidden박스를 사용하는 경우 웹브라우져에서는 숨김처리 되기때문에 값이 제대로
입력되었는지 화면으로 확인할수 없다. 따라서 개발자모드를 사용하거나 type을 디버깅용으로
잠깐 수정한 후 값이 제대로 입력되었는지 반드시 확인해야 한다.  
-->
<input type="hidden" name="idx" value="${param.idx }" />
<input type="hidden" name="mode" value="${mode}" />
      
<table class="table table-bordered" border="2" width="20%" height="300px">
	    <tr>
	        <td>비밀번호를 입력하세요.</td>
	        <td>
	            <input type="password" name="pass" style="width:100px;" />
	        </td>
	    </tr>
	    <tr>
	        <td colspan="2" align="center">
	            <button type="submit">작성 완료</button>
	            <button type="reset">RESET</button>
	            <button type="button" onclick="location.href='<%=request.getContextPath()%>/mvcboard/listT.do';">
	                목록 바로가기
	            </button>
	        </td>
	    </tr>
</table>    
</form>
<div class="footer">
			<div class="footer_bottom">
				<div class="follow-us">
					<a class="fa fa-facebook social-icon" href="https://www.ikosmo.co.kr/"></a> <a
						class="fa fa-twitter social-icon" href="https://www.ikosmo.co.kr/"></a> <a
						class="fa fa-linkedin social-icon" href="https://www.ikosmo.co.kr/"></a> <a
						class="fa fa-google-plus social-icon" href="https://www.ikosmo.co.kr/"></a>
				</div>
				<div class="copy">
					<p>
						Copyright &copy; 2022 KOSMO ESCAPE CAFE. Design by <a href="https://www.ikosmo.co.kr/" rel="nofollow">KOSMO</a>
					</p>
				</div>
			</div>
		</div>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.flexslider.js"></script>
</body>
</html>














