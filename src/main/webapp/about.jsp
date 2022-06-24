<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
					<li class="<%=request.getContextPath()%>/current"><a
						href="about.jsp">KOSMO ESCAPE</a></li>
					<li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
					<li><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
					<li><a href="<%=request.getContextPath()%>/mvcboard/listT.do">Q&A</a></li>
					<li><a href="<%=request.getContextPath()%>/member/Login.jsp">Login</a></li>
					<a class="banner_btn"
						href="<%=request.getContextPath()%>//member/Register.jsp">회원가입</a>
					<div class="clear"></div>
				</ul>
				<script type="text/javascript" src="js/responsive-nav.js"></script>
			</div>
		</div>
	</div>
	<div class="about">
		<div class="container">
			<section class="title-section">
				<h1 class="title-header">ABOUT KOSMO ESCAPE</h1>
				<p>
					<strong>경험해보고 싶었던 "새로운 세상"</strong><br /> " 사실감
					넘치는 인테리어와 신기하고 신선한 문제와 트릭 장치 그리고 전문작가의 흥미진진한 스토리까지! "
				</p>
			</section>
		</div>
	</div>
	<div class="about2">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<p>방탈출 소개 넣기1</p>
					<br>
					<p>방탈출 소개 넣기2</p>
				</div>
			</div>
		</div>
	</div>



	<div class="about_content">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<img src="images/a2.jpg" class="img-responsive" alt="" />
					<p>Consectetuer adipiscing elit, sed diam nonummy nibh euismod
						tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi
						enim ad minim veniam, quis nostrud exerci tation ullamcorper
						suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis
						autem vel eum iriure dolor in hendrerit in vulputate velit esse
						molestie consequat, vel illum dolore eu feugiat nulla facilisis at
						vero.</p>
					<br>
					<p>Sed diam nonummy nibh euismod tincidunt ut laoreet dolore
						magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis
						nostrud exerci tation ullamcorper suscipit lobortis nisl ut
						aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed
						diam nonummy nibh euismod tincidunt ut laoreet dolore magna
						aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud
						exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea
						commodo consequat. Duis autem vel eum iriure dolor in hendrerit in
						vulputate velit esse molestie consequat, vel illum dolore eu
						feugiat nulla facilisis at vero.</p>
				</div>
				<div class="col-md-4">
					<div class="block-heading-two">
						<h3>
							<span>Our Advantages</span>
						</h3>
					</div>
					<div class="panel-group" id="accordion-alt3">
						<div class="panel">
							<img class="picture" src="../images/boss.png" alt=""/>
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
							<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
								aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud
								exerci tation."</p>
							<p>
								<strong>- John Doe -</strong>
							</p>
						</div>
						<div class="item">
							<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
								aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud
								exerci tation."</p>
							<p>
								<strong>- Jane Doe -</strong>
							</p>
						</div>
						<div class="item">
							<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
								aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud
								exerci tation."</p>
							<p>
								<strong>- John Smith -</strong>
							</p>
						</div>
						<div class="item">
							<p>"Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
								aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud
								exerci tation."</p>
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
