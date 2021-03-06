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
						<li><a href="<%=request.getContextPath()%>/theme.jsp">??????</a></li>
						<li><a href="<%=request.getContextPath()%>/reservation.jsp">??????</a></li>
						<li class="current"><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">???????????????</a></li>
						<li><a href="<%=request.getContextPath()%>/member/login.do">Login</a></li>
						<a class="banner_btn"
							href="<%=request.getContextPath()%>/member/regist.jsp">????????????</a>
						<div class="clear"></div>
					</c:when>
					<c:when test="${USERID eq 'admin'}">
						<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
						<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
								ESCAPE</a></li>
						<li><a href="<%=request.getContextPath()%>/theme.jsp">??????</a></li>
						<li><a href="<%=request.getContextPath()%>/reservation.jsp">??????</a></li>
						<li class="current"><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">???????????????</a></li>
						<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
						<a class="banner_btn" href="<%=request.getContextPath()%>/admin/index.jsp">????????? ?????????</a>
						<div class="clear"></div>
					</c:when>
					<c:otherwise>
						<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
						<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
								ESCAPE</a></li>
						<li><a href="<%=request.getContextPath()%>/theme.jsp">??????</a></li>
						<li><a href="<%=request.getContextPath()%>/reservation.jsp">??????</a></li>
						<li class="current"><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">???????????????</a></li>
						<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
						<a class="banner_btn"
							href="<%=request.getContextPath()%>/member/modify.do">??????????????????</a>
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
				<h1 class="title-header">????????????</h1>
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
					<td>??????</td>
					<td>${ dto.idx }</td>
					<td>?????????</td>
					<td>${ dto.name }</td>
				</tr>
				<tr>
					<td>?????????</td>
					<td>${ dto.postdate }</td>
					<td>?????????</td>
					<td>${ dto.visitcount }</td>
				</tr>
				<tr>
					<td>??????</td>
					<td colspan="3">${ dto.title }</td>
				</tr>
				<tr>
					<td>??????</td>
					<td colspan="3" height="100">${ dto.content }<br /> 
								<img src="../Uploads/${dto.sfile }" width="500px;" />
					</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>
					<c:if test="${ not empty dto.ofile }">${ dto.ofile }<a href="<%=request.getContextPath()%>/mvcboard/downloadT.do?ofile=${ dto.ofile }&sfile=${ dto.sfile }&idx=${ dto.idx }">[????????????]</a>
					</c:if>
					</td>
					<td>???????????????</td>
					<td>${ dto.downcount }</td>
				</tr>
			</tbody>
		</table>

		<!-- ???????????? -->
		<div class="row mb-3" align="right">
			<div class="col d-flex justify-content-end">
				<button type="button" class="btn btn-warning" onclick="location.href='<%=request.getContextPath()%>/mvcboard/passT.do?mode=edit&idx=${ param.idx }';">????????????</button>
				<button type="button" class="btn btn-warning" onclick="location.href='<%=request.getContextPath()%>/mvcboard/passT.do?mode=delete&idx=${ param.idx }';">????????????</button>
				<button type="button" class="btn btn-warning" onclick="location.href='<%=request.getContextPath()%>/mvcboard/listT.do';">????????????</button>
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