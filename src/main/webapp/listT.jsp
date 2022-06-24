
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="header">
		<div class="container">
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/index.jsp"><img
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
					<li class="current"><a
						href="<%=request.getContextPath()%>/mvcboard/listT.do">Q&A</a></li>
					<li><a href="<%=request.getContextPath()%>/member/Login.jsp">Login</a></li>
					<a class="banner_btn"
						href="<%=request.getContextPath()%>/member/Register.jsp">회원가입</a>
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
				<h1 class="title-header">후기게시판</h1>
			</section>
		</div>
	</div>
	<div class="container">
		<div class="col-9 pt-3">
			<!-- 게시판 리스트 -->
			<div class="row mt-3 mx-1">
				<table class="table table-bordered table-hover table-striped">
					<thead>
						<tr align="center">
							<th width="10%" align="center">번호</th>
				            <th width="*" align="center">제목</th>
				            <th width="15%" align="center">작성자</th>
				            <th width="10%" align="center">조회수</th>
				            <th width="15%" align="center">작성일</th>
				            <th width="8%" align="center">첨부</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${ empty boardLists }">
								<!-- 리스트 컬렉션에 저장된 게시물이 없을 때 출력 부분 -->
								<tr>
									<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${ boardLists }" var="row" varStatus="loop">
									<tr align="center">
										<td>${ map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}
										</td>
										<td align="left"><a	href="<%=request.getContextPath()%>/mvcboard/viewT.do?idx=${ row.idx }">${ row.title }</a>
										</td>
										<td>${row.name }</td>
										<td>${row.visitcount }</td>
										<td>${row.postdate }</td>
										<td><c:if test="${ not empty row.ofile }"><a href="<%=request.getContextPath()%>/mvcboard/downloadT.do?ofile=${ row.ofile }&sfile=${ row.sfile }&idx=${ row.idx }">[Down]</a>
											</c:if></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<!-- 페이지 번호 -->
			<div class="row mt-3" align="center">
				<div class="col">
					<ul class="pagination justify-content: center!important;">
					<%= BoardPage.pagingStr(totalCount, pageSize,blockPage, pageNum, request.getRequestURI()) %>
						<li class="page-item"><a class="page-link" href="#"> <i
								class='bi bi-skip-backward-fill'></i>
						</a></li>
						<li class="page-item"><a class="page-link" href="#"> <i
								class='bi bi-skip-start-fill'></i>
						</a></li>
						<li class="page-item active"><a class="page-link" href="${ map.pagingImg }">1</a></li>
						<li class="page-item"><a class="page-link" href="${ map.pagingImg }">2</a></li>
						<li class="page-item"><a class="page-link" href="${ map.pagingImg }">3</a></li>
						<li class="page-item"><a class="page-link" href="${ map.pagingImg }"> <i class='bi bi-skip-end-fill'></i>
						</a></li>
						<li class="page-item"><a class="page-link" href="${ map.pagingImg }"> <i class='bi bi-skip-forward-fill'></i>
						</a></li>
					</ul>
					<button type="button" style="float:right" class="btn btn-primary" onclick="location.href='<%=request.getContextPath()%>/mvcboard/writeT.do';">글쓰기</button>
				</div>
			</div>
			<!-- 각종버튼 -->
			
			<!-- 검색 -->
			<div class="row" align="center">
				<form method="get">
					<div class="input-group ms-auto" style="width: 200px;">
						<select name="searchField" class="form-control">
							<option value="">제목</option>
							<option value="">내용</option>
							<option value="">작성자</option>
						</select><br />
						<input type="text" class="form-control" placeholder="Search" vertical-align="middle";/>
						<br />
						<input type="submit" value="검색하기" />
							<i class="bi-search" style="font-size: 1rem; color: white;"></i>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="contact">
		<div class="container">
			<div class="row contact_top">
				<div class="col-md-4 contact_details">
					<h5>Mailing address:</h5>
					<div class="contact_address">321 Awesome Street, New York, NY
						17022</div>
				</div>
				<div class="col-md-4 contact_details">
					<h5>Call us:</h5>
					<div class="contact_address">
						+1 800 123 1234<br>
					</div>
				</div>
				<div class="col-md-4 contact_details">
					<h5>Email us:</h5>
					<div class="contact_mail">info@companyname.com</div>
				</div>
			</div>
		</div>
	</div>
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
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.flexslider.js"></script>
</body>
</html>
