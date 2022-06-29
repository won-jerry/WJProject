<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script>
	function setThumbnail(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("class", "col-lg-6");
			document.querySelector("div#image_container").appendChild(img);
		};
		
		reader.readAsDataURL(event.target.files[0]);
	}
	</script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('preview').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('preview').src = "";
	  }
	}
</script>
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900'
	rel='stylesheet' type='text/css'>
</head>

<body>
	<div class="header">
		<div class="container">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">
			<img src="<%=request.getContextPath()%>/images/logo.png" style="width: 150px" /></a>
			<div class="menu">
				<a class="toggleMenu" href="#"><img
					src="<%=request.getContextPath()%>/images/nav_icon.png" alt="" />
				</a>
				<ul class="nav" id="nav">
				<c:choose>
					<c:when test="${empty USERID}">
						<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
						<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
								ESCAPE</a></li>
						<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
						<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
						<li class="current"><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">후기게시판</a></li>
						<li><a href="<%=request.getContextPath()%>/member/login.do">Login</a></li>
						<a class="banner_btn"
							href="<%=request.getContextPath()%>/member/regist.jsp">회원가입</a>
						<div class="clear"></div>
					</c:when>
					<c:when test="${USERID eq 'admin'}">
						<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
						<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
								ESCAPE</a></li>
						<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
						<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
						<li class="current"><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">후기게시판</a></li>
						<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
						<a class="banner_btn" href="<%=request.getContextPath()%>/admin/index.jsp">관리자 페이지</a>
						<div class="clear"></div>
					</c:when>
					<c:otherwise>
						<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
						<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
								ESCAPE</a></li>
						<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
						<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
						<li class="current"><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">후기게시판</a></li>
						<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
						<a class="banner_btn"
							href="<%=request.getContextPath()%>/member/modify.do">회원정보수정</a>
						<div class="clear"></div>
					</c:otherwise>
				</c:choose>
				</ul>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/js/responsive-nav.js"></script>
			</div>
		</div>
	</div>
	<div class="about">
		<div class="container">
			<section class="title-section">
				<h1 class="title-header">상세보기</h1>
			</section>
		</div>
	</div>
	<form class="container">
		<table class="table table-bordered">
			<colgroup>
				<col width="20%" />
				<col width="30%" />
				<col width="20%" />
				<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<td>번호</td>
					<td>${ dto.idx }</td>
					<td>작성자</td>
					<td>${ dto.name }</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>${ dto.postdate }</td>
					<td>조회수</td>
					<td>${ dto.visitcount }</td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="3">${ dto.title }</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3" height="100">${ dto.content }<br /> 
								<img src="../Uploads/${dto.sfile }" width="500px;" />
					</td>
				</tr>
				<tr>
					<td>첨부파일</td>
					<td>
					<c:if test="${ not empty dto.ofile }">${ dto.ofile }<a href="<%=request.getContextPath()%>/mvcboard/downloadT.do?ofile=${ dto.ofile }&sfile=${ dto.sfile }&idx=${ dto.idx }">[다운로드]</a>
					</c:if>
					</td>
					<td>다운로드수</td>
					<td>${ dto.downcount }</td>
				</tr>
			</tbody>
		</table>

		<!-- 각종버튼 -->
		<div class="row mb-3" align="right">
			<div class="col d-flex justify-content-end">
				<button type="button" class="btn btn-warning" onclick="location.href='<%=request.getContextPath()%>/mvcboard/passT.do?mode=edit&idx=${ param.idx }';">수정하기</button>
				<button type="button" class="btn btn-warning" onclick="location.href='<%=request.getContextPath()%>/mvcboard/passT.do?mode=delete&idx=${ param.idx }';">삭제하기</button>
				<button type="button" class="btn btn-warning" onclick="location.href='<%=request.getContextPath()%>/mvcboard/listT.do';">목록보기</button>
			</div>
			<tr><br /></tr>
		</div>
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