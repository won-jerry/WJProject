<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KOSMO ESCAPE : 게시판</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
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
			<h1 class="title-header">후기게시판</h1>
		</section>
	</div>
</div>
<!-- 검색 -->
<div class="row" align="center">
	<form method="get">
		<div class="input-group ms-auto" style="width: 400px;">
			<select name="searchField" class="form-control">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="name">작성자<br /></option>
			</select>
			<input type="text" name="searchWord" class="form-control" placeholder="Search" style="width: 300px;"/>
			<input type="submit" value="검색하기" />
			<i class="bi-search" style="font-size: 1rem; color: white;"></i>
		</div>
	</form>
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
									<td align="left"><a
										href="<%=request.getContextPath()%>/mvcboard/viewT.do?idx=${ row.idx }">${ row.title }</a>
									</td>
									<td>${row.name }</td>
									<td>${row.visitcount }</td>
									<td>${row.postdate }</td>
									<td><c:if test="${ not empty row.ofile }">
											<a
												href="<%=request.getContextPath()%>/mvcboard/downloadT.do?ofile=${ row.ofile }&sfile=${ row.sfile }&idx=${ row.idx }">[Down]</a>
										</c:if></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		<!-- 페이지 번호 -->
		<div class="page-wrap" align="center" width="90%">
			<p align="center">
				<td>${ map.pagingImg }</td>
				<td width="100"><button type="button" style="float: right"
						class="btn btn-primary"
						onclick="location.href='<%=request.getContextPath()%>/mvcboard/writeT.do';">글쓰기</button></td>
			</p>
		</div>
		<br />
	</div>
</div>
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
