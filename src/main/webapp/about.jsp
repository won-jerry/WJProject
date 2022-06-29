<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One | KOSMO WORLD</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<style>
html{height: 100%;}
body{position: relative;width: 100%;height: 100%;}
.logo_box{
position: absolute;top: 50%;left: 50%;margin:-150px 0 0 -150px
}
.grid-image {
    display:block;
    flex-wrap:wrap;
    align-items:flex-start;
    margin : auto;
}
.grid-image img {
    width:calc(33.333% - 10px);
    margin:0 15px 15px 0;
}
.grid-image img:nth-of-type(3n),
.grid-image img:last-child {
    margin-right:0;
}
@media screen and (max-width:640px){
  .grid-image img {
    width:calc(50% - 15px);
  }
}
@media screen and (max-width:480px){
  .grid-image img:nth-of-type(2n) {
    margin auto;
  }
  .grid-image img:nth-of-type(3n) {
    margin-right:15px;
  }
}
.body{
	text-align: center;
}
.grid-image {
    display: block;
    flex-wrap: wrap;
    align-items: flex-start;
    margin: auto;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.about3 li {
    width: 33.3333%;
    padding: 2.604vw 0 0 2.604vw;
}
.about3 img {
    display: block;
    width: 100%;
}
.about3 {
    margin: 7.292vw 0;
}
.about2 img {
    float: center;
    width: 20.156vw;
    margin-left: 11.458vw;
}
.about2 .about-text {
    margin-left: 36.458vw;
    padding-top: 0.26vw;
}
.about2 .about-text p {
    font-size: .885vw;
    line-height: 1.8;
}
.body{
	text-align: center;
}
</style>
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="header">
		<div class="container">
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/index.jsp"><img
				src="./images/logo.png" style="width: 150px" /></a>
			<div class="menu">
				<a class="toggleMenu" href="#"><img
					src="<%=request.getContextPath()%>/images/nav_icon.png" alt="" />
				</a>
				<ul class="nav" id="nav">
					<c:choose>
						<c:when test="${empty USERID}">
							<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
							<li class="current"><a href="<%=request.getContextPath()%>/about.jsp">KOSMO ESCAPE</a></li>
							<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
							<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
							<li><a href="<%=request.getContextPath()%>/isLoggedIn.jsp">후기게시판</a></li>
							<li><a href="<%=request.getContextPath()%>/member/login.do">Login</a></li>
							<a class="banner_btn"
								href="<%=request.getContextPath()%>/member/regist.jsp">회원가입</a>
							<div class="clear"></div>
						</c:when>
						<c:when test="${USERID eq 'admin'}">
							<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
							<li class="current"><a href="<%=request.getContextPath()%>/about.jsp">KOSMO
									ESCAPE</a></li>
							<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
							<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
							<li><a href="<%=request.getContextPath()%>/mvcboard/listT.do">후기게시판</a></li>
							<li><a href="<%=request.getContextPath()%>/member/logout.do">Logout</a></li>
							<a class="banner_btn" href="<%=request.getContextPath()%>/admin/index.jsp">관리자 페이지</a>
							<div class="clear"></div>
						</c:when>
						<c:otherwise>
							<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
							<li class="current"><a href="<%=request.getContextPath()%>/about.jsp">KOSMO ESCAPE</a></li>
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
	<div class="about">
		<div class="container">
			<section class="title-section">
				<h1 class="title-header">ABOUT KOSMO ESCAPE</h1>
			</section>
		</div>
	</div>
    <div class="container" align="center">
        <img src="<%=request.getContextPath()%>/images/logo.png" alt="로고" style="width:300px">
    </div>
    <br />
    <div class="body">
		<p class="grid-image">
		  <img class="container" src="<%=request.getContextPath()%>/images/aboutimg1.jpg" style="width:350px;" >
		  <img class="container" src="<%=request.getContextPath()%>/images/aboutimg2.jpg" style="width:350px;" >
		  <img class="container" src="<%=request.getContextPath()%>/images/aboutimg3.jpg" style="width:350px;" >
		</p>
    </div>
    <br />
	<hr class="hr1">
	<br />
   	<div class="body">
   		<br />
   		<h2>요금 안내</h2>
   		<br />
		<div class="container" id="accordion-alt3">
			<img src="<%=request.getContextPath()%>/images/요금표.png" style="align:center" width="100%">
		</div>
	</div>
   	<div class="body">
		<div class="container" id="accordion-alt3">
			<img src="<%=request.getContextPath()%>/images/요금표2.png" style="align:center" width="100%">
		</div>
	</div>
	<hr class="hr1">
   	<div class="body">
   		<br />
   		<h2>대표님 인사</h2>
   		<br />
		<div class="container" id="accordion-alt3">
			<img src="<%=request.getContextPath()%>/images/about.png" style="align:center" width="110%">
		</div>
	</div>
	<div class="container" align="center">
		<h2><br /></h2>
		<h2><br /></h2>
		<h2>가산본점 Location</h2>
		<div id="map" style="width:100%;height:500px;"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35e77046a3cf263c67aba7432d1af2f2"></script>
			<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.478767, 126.878734), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			var markerPosition  = new kakao.maps.LatLng(37.478767, 126.878734); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);    
			</script>
	</div>
	<div class="contact">
		<div class="container">
			<div class="row contact_top">
				<div class="col-md-4 contact_details">
					<h5>Mailing address:</h5>
					<div class="contact_address">서울특별시 금천구 가산디지털2로 123</div>
				</div>
				<div class="col-md-4 contact_details">
					<h5>Call us:</h5>
					<div class="contact_address">
						02-2025-8523<br>
					</div>
				</div>
				<div class="col-md-4 contact_details">
					<h5>Email us:</h5>
					<div class="contact_mail">swkosmo@daum.net</div>
				</div>
			</div>
		</div>
		<div class="container" align="center">
			<a class="banner_btn" style="align:right;" href="<%=request.getContextPath()%>/reservation.jsp">예약하기</a>
		</div>
		<br />
	</div>
	<div class="highlight-info">
			<div class="overlay spacer">
				<div class="container">
					<div class="row text-center">
						<div class="col-sm-3 col-xs-6">
							<i class="fa fa-smile-o fa-5x"></i>
							<h4>누적고객 2만명이 인정한<br />최고의 카페</h4>
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
							<h4>수도권 4개 지점 운영<br />(가산, 종로, 강남, 여의도)</h4>
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
								<p>"[테마: 링, 포레스트, 콜러] 이제서야 리뷰를 쓰게 되었네요. 포레스트 첫타임하고 온 사람입니다.
								제로월드갈 때는 항상 기분이 좋아요ㅎ<br /> 직원분들도 너무 잘 대해주시고!!! 매니저님께서도 갈 때마다 항상 기억해주셔서 감사하더라구요!<br />
								오늘도 다른 알바생분께서 기억햐주시고 너무 감사합니다 ㅜㅜㅜ 항상 재밌게 놀구 기분좋게 떠납니다♥♥♥"</p>
								<p>
									<strong>- 소크라택수 -</strong>
								</p>
							</div>
							<div class="item">
								<p>"[테마: 링] 여태 한 공태중에 최고.... 방 구성 이쁘고 진짜 일본에 간느낌.<br />
								일본 공포영화 특유의 느낌도 잘 살아있어서 좋아요. 기어다니는 바람에 직원분들 바닥청소 안하셔도 될듯..."</p>
								<p>
									<strong>- 호빵맨 -</strong>
								</p>
							</div>
							<div class="item">
								<p>"[테마: 나비효과]서비스 , 테마퀄 , 연출 , 스토리 등 뭘로 흠을 잡을까..?<br />
								최고의 방탈출카페."</p>
								<p>
									<strong>- 방세포 -</strong>
								</p>
							</div>
							<div class="item">
								<p>"[테마: DONE]인테리어+스토리 진행 맛집. <br />
								서브는 20분 이상 남겨야 진행할 수 있다던데 대체 어디의 방탈신들이신 거예요... <br />
								엔딩은 아쉬웠지만 처음부터 끝까지 진짜 신나서 했어요. 활동성 좀 있으니 바지 추천드립니다."</p>
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