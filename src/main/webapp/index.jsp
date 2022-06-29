<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta http-equiv="Content-Language" content="ko" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<title>KOSMO ESCAPE</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/font-awesome.min.css">

<script src="js/jquery.min.js"></script>
<style>
.row {
    margin-left: -25px;
    margin-right: -25px;
}
.swiper-container-android .swiper-slide, .swiper-wrapper {
	transform: translate3d(0px, 0, 0);
}

.swiper-container .swiper-notification {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
	opacity: 0;
	z-index: -1000;
}

.warning {
	color: #e9f8f5;
	font-size: 1em;
	line-height: 1.5;
	margin-bottom: 1em;
	font-weight: 4500;
}

.content_white h2 {
	font-size: 1.5em;
	font-weight: 600;
}

.mainb2 {
	padding: 18.667vw 0;
	overflow: hidden;
}

.container2 {
	max-width: 89.333vw;
	margin: 0 auto;
}

.title1 {
	display: block;
	margin: 0 auto;
	width: 23.333vw;
	height: 6.267vw;
	line-height: 8.267vw;
	border: 0.8vw solid #000;
	border-radius: 8vw;
	text-align: center;
	font-weight: 200;
	font-size: 3vw;
}

.mainb2-prev {
	left: 0%;
	background-image: url(<%=request.getContextPath()%>/images/arrow1.png);
}

.mainb2-next {
	right: 0;
	background-image: url(<%=request.getContextPath()%>/images/arrow2.png);
}
.mainb2-prev, .mainb2-next {
	position: absolute;
	z-index: 4;
	top: 50%;
	width: 5.333vw;
	height: 5.333vw;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
	background-color: #fff;
	background-size: 1.667vw;
	background-position: center;
	background-repeat: no-repeat;
	border-radius: 90%;
	-webkit-box-shadow: 0 10px 20px rgb(0 0 0/ 19%), 0 6px 6px
		rgb(0 0 0/ 23%);
	box-shadow: 0 10px 20px rgb(0 0 0/ 19%), 0 6px 6px rgb(0 0 0/ 23%);
}

.mainb2 .swiper-container {
	overflow: visible;
}

.swiper-container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	list-style: none;
	padding: 0;
	z-index: 1;
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
	display: flex;
	transition-property: transform;
	box-sizing: content-box;
}

.mainb1-text {
	margin-top: 13.333vw;
	font-size: 4.533vw;
	font-weight: 300;
	text-align: center;
	line-height: 1.8;
}

.swiper-container .swiper-notification {
	position: absolute;
	left: 0;
	top: 0;
	pointer-events: none;
	opacity: 0;
	z-index: -1000;
}
</style>
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
			<a class="navbar-brand" href="index.jsp"><img
				src="<%=request.getContextPath()%>//images/logo.png"
				style="width: 150px" /></a>
			<div class="menu">
				<a class="toggleMenu" href="#"><img
					src="<%=request.getContextPath()%>/images/nav_icon.png" alt="" />
				</a>
				<ul class="nav" id="nav">
					<c:choose>
						<c:when test="${empty USERID}">
							<li class="current"><a
								href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
							<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
									ESCAPE</a></li>
							<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
							<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
							<li><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">후기게시판</a></li>
							<li><a href="<%=request.getContextPath()%>/member/login.do">Login</a></li>
							<a class="banner_btn"
								href="<%=request.getContextPath()%>/member/regist.jsp">회원가입</a>
							<div class="clear"></div>
						</c:when>
						<c:when test="${USERID eq 'admin'}">
							<li class="current"><a
								href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
							<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
									ESCAPE</a></li>
							<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
							<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
							<li><a href="<%=request.getContextPath()%>/mvcboard/listT.do">후기게시판</a></li>
							<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
							<a class="banner_btn" href="<%=request.getContextPath()%>/admin/index.jsp">관리자 페이지</a>
							<div class="clear"></div>
						</c:when>
						<c:otherwise>
							<li class="current"><a
								href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
							<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
									ESCAPE</a></li>
							<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
							<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
							<li><a
								href="<%=request.getContextPath()%>/mvcboard/listT.do">후기게시판</a></li>
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
	<div class="banner text-center">
		<div class="container">
			<div class="banner-info">
				<h1>제한 시간 내에 KOSMO를 탈출하라!</h1>
				<h2>당신을 위해 준비한 드라마틱한 방탈출 카페</h2>
				<p>
					“사실감 넘치는 인테리어와 신기한 장치 신선한 문제<br /> 그리고 전문작가의 흥미진진한 스토리로 가득찬 코스모
					방탈출을 지금 경험해 보세요.”
				</p>
				<a class="banner_btn" href="about.jsp">Read More</a>
			</div>
		</div>
	</div>
	<hr class="hr1">
	<div class="container2">
		<h2>
			<br />
		</h2>
		<div class="swiper-container" id="eveMainb2Swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme1.jpg"
								alt="[강남] 헐!" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme2.jpg"
								alt="[강남] 포레스트 (FORREST)" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme3.jpg"
								alt="[강남] DONE" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme4.jpg"
								alt="[강남] 제로호텔L" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme5.jpg"
								alt="[강남] 아이엠" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme6.jpg"
								alt="[강남] 어느겨울밤2" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme7.jpg"
								alt="[강남] 콜러" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme8.jpg"
								alt="[강남] 나비효과" width="400px" />
						</figure>
					</section>
				</div>
				<div class="swiper-slide">
					<section class="mainb2-box">
						<figure>
							<img src="<%=request.getContextPath()%>/images/theme9.jpg"
								alt="[강남] 링" width="400px" />
						</figure>
					</section>
				</div>
			</div>
			<button id="eveMainb2SwiperPrev" class="mainb2-prev" type="button"></button>
			<button id="eveMainb2SwiperNext" class="mainb2-next" type="button"></button>
		</div>
		<div class="container" align="center">
			<a class="banner_btn" style="align: right;"
				href="<%=request.getContextPath()%>/reservation.jsp">예약하기</a>
		</div>
	</div>
	<br />
	<hr class="hr1">
	<div class="main">
		<div class="content_white">
			<h2>공지 사항</h2>
			<p>이것만은 꼭! 지켜주세요.</p>
		</div>
		<div class="featured_content" id="feature">
			<div class="container">
				<div class="row text-center">
					<div class="col-mg-3 col-xs-3 feature_grid1">
						<i class=""></i>
						<h3 class="m_1">
							<img src="images/icon1.png" width="110px"><br /> <a
								href="reservation.jsp"><br />시간준수</a>
						</h3>
						<p class="m_2">예약해 주신 시간은 입장시간입니다. 브리핑 및 짐 보관을 위해 15분전에 도착해
							주셔야 합니다. 늦으실 경우 늦은 시간만큼 시간이 차감될 수 있습니다.</p>
					</div>
					<div class="col-mg-3 col-xs-3 feature_grid1">
						<i class=""></i>
						<h3 class="m_1">
							<img src="images/icon1.png" width="110px"><br /> <a
								href="reservation.jsp"><br />안전</a>
						</h3>
						<p class="m_2">힘으로 억지로 열거나 작동시키려 할 경우 부상과 파손의 위험이 있습니다. 소품 및
							장치 파손 시 배상의 책임이 있습니다.</p>
					</div>
					<div class="col-md-3 col-xs-3 feature_grid1">
						<i class=""></i>
						<h3 class="m_1">
							<img src="images/icon2.png" width="100px"><br /> <a
								href="reservation.jsp"><br />촬영 및 스포일러 금지</a><br />
						</h3>
						<p class="m_2">테마방은 녹화 및 녹취, 사진 촬영이 모두 금지되어 있습니다. 또한 테마방의 문제
							유형 및 기밀들의 발설을 금지합니다. 입장 전 핸드폰을 포함한 모든 짐은 사물함에 보관해주시기를 바랍니다. 이를 어길
							시 법적(민사)처벌을 받을 수 있습니다</p>
					</div>
					<div class="col-md-3 col-xs-3 feature_grid2">
						<i class=""></i>
						<h3 class="m_1">
							<img src="images/icon4.png" width="100px"><br /> <a
								href="reservation.jsp"><br />입장제한</a>
						</h3>
						<p class="m_2">임산부나 노약자, 음주자, 폐쇄공포증이 있으신 분은 입장에 제한이 있을 수 있습니다.<br />
							※ 무서운 걸 싫어하시는 분들은 테마 선택시 공포 테마는 피해주세요.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<hr class="hr1">
	<div class="highlight-info">
		<div class="overlay spacer">
			<div class="container">
				<div class="row text-center">
					<div class="col-sm-3 col-xs-6">
						<i class="fa fa-smile-o fa-5x"></i>
						<h4>
							누적고객 2만명이 인정한<br />최고의 카페
						</h4>
					</div>
					<div class="col-sm-3 col-xs-6">
						<i class="fa fa-check-square-o fa-5x"></i>
						<h4>최신 인테리어의 9개 테마</h4>
					</div>
					<div class="col-sm-3 col-xs-6">
						<i class="fa fa-trophy fa-5x"></i>
						<h4>방탈출 어워드 최다 수상 카페</h4>
					</div>
					<div class="col-sm-3 col-xs-6">
						<i class="fa fa-map-marker fa-5x"></i>
						<h4>
							수도권 4개 지점 운영<br />(가산, 종로, 강남, 여의도)
						</h4>
					</div>
				</div>
			</div>
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
				<a class="fa fa-facebook social-icon"
					href="https://www.ikosmo.co.kr/"></a> <a
					class="fa fa-twitter social-icon" href="https://www.ikosmo.co.kr/"></a>
				<a class="fa fa-linkedin social-icon"
					href="https://www.ikosmo.co.kr/"></a> <a
					class="fa fa-google-plus social-icon"
					href="https://www.ikosmo.co.kr/"></a>
			</div>
			<div class="copy">
				<p>
					Copyright &copy; 2022 KOSMO ESCAPE CAFE. Design by <a
						href="https://www.ikosmo.co.kr/" rel="nofollow">KOSMO</a>
				</p>
			</div>
		</div>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.flexslider.js"></script>
</body>
</html>
