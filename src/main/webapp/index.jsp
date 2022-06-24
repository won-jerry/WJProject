<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="header">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"><img src="<%=request.getContextPath()%>//images/logo.png" style="width: 150px" /></a>
			<div class="menu">
				<a class="toggleMenu" href="#"><img src="<%=request.getContextPath()%>/images/nav_icon.png"
					alt="" /> </a>
				<ul class="nav" id="nav">
					<li class="current"><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO ESCAPE</a></li>
					<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
					<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
					<li><a href="<%=request.getContextPath()%>/mvcboard/listT.do">Q&A</a></li>
					<li><a href="<%=request.getContextPath()%>/member/login.jsp">Login</a></li>
					<a class="banner_btn" href="<%=request.getContextPath()%>/member/regist.jsp">회원가입</a>
					<div class="clear"></div>
				</ul>
				<script type="text/javascript" src="js/responsive-nav.js"></script>
			</div>
		</div>
	</div>
	<div class="banner text-center">
		<div class="container">
			<div class="banner-info">
				<h1>당신을 위해 준비한 드라마틱한 방탈출 카페</h1>
				<p>
					“사실감 넘치는 인테리어와 신기한 장치 신선한 문제<br /> 그리고 전문작가의 흥미진진한 스토리로 가득찬 코스모
					방탈출을 지금 경험해 보세요.”
				</p>
				<a class="banner_btn" href="about.jsp">Read More</a>
			</div>
		</div>
	</div>
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
							유형 및 기밀들의 발설을 금지합니다. 입장 전 핸드폰을 포함한 모든 짐은 사물함에 보관해주시기를 바랍니다. 이를 어길 시 법적(민사)처벌을 받을 수 있습니다</p>
					</div>
					<div class="col-md-3 col-xs-3 feature_grid2">
						<i class=""></i>
						<h3 class="m_1">
							<img src="images/icon4.png" width="100px"><br /> <a
								href="reservation.jsp"><br />입장제한</a>
						</h3>
						<p class="m_2">임산부나 노약자, 음주자, 폐쇄공포증이 있으신 분은 입장에 제한이 있을 수 있습니다.
							※ 무서운 걸 싫어하시는 분들은 테마 선택시 공포 테마는 피해주세요.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="about-info">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="block-heading-two">
							<h2>
								<span>About Our Company</span>
							</h2>
						</div>
						<p>Consectetuer adipiscing elit, sed diam nonummy nibh euismod
							tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
							enim ad minim veniam, quis nostrud exerci tation ullamcorper
							suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis
							autem vel eum iriure dolor in hendrerit in vulputate velit esse
							molestie consequat, vel illum dolore eu feugiat nulla facilisis
							at vero.</p>
						<br>
						<p>Sed diam nonummy nibh euismod tincidunt ut laoreet dolore
							magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis
							nostrud exerci tation ullamcorper suscipit lobortis nisl ut
							aliquip ex ea commodo consequat.</p>
						<a class="banner_btn" href="about.jsp">Read More</a>
					</div>
					<div class="col-md-4">
						<div class="block-heading-two">
							<h3>
								<span>Our Advantages</span>
							</h3>
						</div>
						<div class="panel-group" id="accordion-alt3">
							<div class="panel">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion-alt3"
											href="#collapseOne-alt3"> <i class="fa fa-angle-right"></i>
											Quisque cursus metus vitae pharetra auctor
										</a>
									</h4>
								</div>
								<div id="collapseOne-alt3" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Consectetuer adipiscing elit, sed diam nonummy nibh
											euismod tincidunt ut laoreet dolore magna aliquam erat
											volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
											tation ullamcorper suscipit.</p>
									</div>
								</div>
							</div>
							<div class="panel">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion-alt3"
											href="#collapseTwo-alt3"> <i class="fa fa-angle-right"></i>
											Duis autem vel eum iriure dolor in hendrerit
										</a>
									</h4>
								</div>
								<div id="collapseTwo-alt3" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Consectetuer adipiscing elit, sed diam nonummy nibh
											euismod tincidunt ut laoreet dolore magna aliquam erat
											volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
											tation ullamcorper suscipit.</p>
									</div>
								</div>
							</div>
							<div class="panel">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion-alt3"
											href="#collapseThree-alt3"> <i class="fa fa-angle-right"></i>
											Quisque cursus metus vitae pharetra auctor
										</a>
									</h4>
								</div>
								<div id="collapseThree-alt3" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Consectetuer adipiscing elit, sed diam nonummy nibh
											euismod tincidunt ut laoreet dolore magna aliquam erat
											volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
											tation ullamcorper suscipit.</p>
									</div>
								</div>
							</div>
							<div class="panel">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion-alt3"
											href="#collapseFour-alt3"> <i class="fa fa-angle-right"></i>
											Duis autem vel eum iriure dolor in hendrerit
										</a> </a>
									</h4>
								</div>
								<div id="collapseFour-alt3" class="panel-collapse collapse">
									<div class="panel-body">
										<p>Consectetuer adipiscing elit, sed diam nonummy nibh
											euismod tincidunt ut laoreet dolore magna aliquam erat
											volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
											tation ullamcorper suscipit.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="highlight-info">
			<div class="overlay spacer">
				<div class="container">
					<div class="row text-center">
						<div class="col-sm-3 col-xs-6">
							<i class="fa fa-smile-o fa-5x"></i>
							<h4>120+ Happy Clients</h4>
						</div>
						<div class="col-sm-3 col-xs-6">
							<i class="fa fa-check-square-o fa-5x"></i>
							<h4>600+ Projects Completed</h4>
						</div>
						<div class="col-sm-3 col-xs-6">
							<i class="fa fa-trophy fa-5x"></i>
							<h4>25 Awards Won</h4>
						</div>
						<div class="col-sm-3 col-xs-6">
							<i class="fa fa-map-marker fa-5x"></i>
							<h4>3 Offices</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="testimonial-area">
			<div class="testimonial-solid">
				<div class="container">
					<h2>Client Testimonials</h2>
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
								<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore
									magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis
									nostrud exerci tation."</p>
								<p>
									<strong>- John Doe -</strong>
								</p>
							</div>
							<div class="item">
								<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore
									magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis
									nostrud exerci tation."</p>
								<p>
									<strong>- Jane Doe -</strong>
								</p>
							</div>
							<div class="item">
								<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore
									magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis
									nostrud exerci tation."</p>
								<p>
									<strong>- John Smith -</strong>
								</p>
							</div>
							<div class="item">
								<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing
									elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore
									magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis
									nostrud exerci tation."</p>
								<p>
									<strong>- Linda Smith -</strong>
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
