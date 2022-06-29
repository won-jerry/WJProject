<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KOSMO ESCAPE : 예약</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900' rel='stylesheet' type='text/css'>
<style>
.body{
	text-align: center;
}
</style>
</head>
<body>
<div class="header">
  <div class="container"> <a class="navbar-brand" href="index.jsp"><img src="<%=request.getContextPath()%>/images/logo.png" style="width: 150px" /></a>
    <div class="menu"> <a class="toggleMenu" href="#"><img src="images/nav_icon.png" alt="" /> </a>
      <ul class="nav" id="nav">
      	<c:choose>
			<c:when test="${empty USERID}">
				<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO ESCAPE</a></li>
				<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
				<li class="current"><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
				<li><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">후기게시판</a></li>
				<li><a href="<%=request.getContextPath()%>/member/login.do">Login</a></li>
				<a class="banner_btn"
					href="<%=request.getContextPath()%>/member/regist.jsp">회원가입</a>
				<div class="clear"></div>
			</c:when>
			<c:when test="${USERID eq 'admin'}">
				<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO ESCAPE</a></li>
				<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
				<li class="current"><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
				<li><a href="<%=request.getContextPath()%>/mvcboard/listT.do">후기게시판</a></li>
				<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
				<a class="banner_btn" href="<%=request.getContextPath()%>/admin/index.jsp">관리자 페이지</a>
				<div class="clear"></div>
			</c:when>
			<c:otherwise>
				<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO ESCAPE</a></li>
				<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
				<li class="current"><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
				<li><a href="<%=request.getContextPath()%>/mvcboard/listT.do">후기게시판</a></li>
				<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
				<a class="banner_btn"
					href="<%=request.getContextPath()%>/member/modify.do">회원정보수정</a>
				<div class="clear"></div>
			</c:otherwise>
		</c:choose>
      </ul>
      <script type="text/javascript" src="js/responsive-nav.js"></script> 
    </div>
  </div>
</div>
<div class="about">
  <div class="container">
    <section class="title-section">
      <h1 class="title-header">Reservation</h1>
    </section>
  </div>
</div>
<div class="body">
    <div class="container">
        <h3>예약 시스템을 준비중입니다.</h3>
        <br>
        <img src="<%=request.getContextPath()%>/images/reservationEx.png" style="width:103%" >
        <br>
        <br>
        <br>
        <br>
    </div>
</div>
<div class="testimonial-area">
	<div class="testimonial-solid">
		<div class="container">
			<h2>고객 후기</h2>
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"><a href="#"></a></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"
						class=""><a href="#"></a></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"
						class=""><a href="#"></a></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"
						class=""><a href="#"></a></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<p>
							"[테마: 링, 포레스트, 콜러] 이제서야 리뷰를 쓰게 되었네요. 포레스트 첫타임하고 온 사람입니다. 제로월드갈
							때는 항상 기분이 좋아요ㅎ<br /> 직원분들도 너무 잘 대해주시고!!! 매니저님께서도 갈 때마다 항상
							기억해주셔서 감사하더라구요!<br /> 오늘도 다른 알바생분께서 기억햐주시고 너무 감사합니다 ㅜㅜㅜ 항상 재밌게
							놀구 기분좋게 떠납니다♥♥♥"
						</p>
						<p>
							<strong>- 소크라택수 -</strong>
						</p>
					</div>
					<div class="item">
						<p>
							"[테마: 링] 여태 한 공태중에 최고.... 방 구성 이쁘고 진짜 일본에 간느낌.<br /> 일본 공포영화
							특유의 느낌도 잘 살아있어서 좋아요. 기어다니는 바람에 직원분들 바닥청소 안하셔도 될듯..."
						</p>
						<p>
							<strong>- 호빵맨 -</strong>
						</p>
					</div>
					<div class="item">
						<p>
							"[테마: 나비효과]서비스 , 테마퀄 , 연출 , 스토리 등 뭘로 흠을 잡을까..?<br /> 최고의
							방탈출카페."
						</p>
						<p>
							<strong>- 방세포 -</strong>
						</p>
					</div>
					<div class="item">
						<p>
							"[테마: DONE]인테리어+스토리 진행 맛집. <br /> 서브는 20분 이상 남겨야 진행할 수 있다던데 대체
							어디의 방탈신들이신 거예요... <br /> 엔딩은 아쉬웠지만 처음부터 끝까지 진짜 신나서 했어요. 활동성 좀
							있으니 바지 추천드립니다."
						</p>
						<p>
							<strong>- 방탈출석사과정 -</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
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