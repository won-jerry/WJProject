<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>One | KOSMO ESCAPE</title>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/flexslider.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }</script>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="header">
  <div class="container"> <a class="navbar-brand" href="index.jsp"><img src="./images/logo.png" style="width: 150px" /></a>
    <div class="menu"> <a class="toggleMenu" href="#"><img src="images/nav_icon.png" alt="" /> </a>
      <ul class="nav" id="nav">
        <li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
        <li><a href="<%=request.getContextPath()%>/about.jsp">KOSMO ESCAPE</a></li>
        <li><a href="<%=request.getContextPath()%>/theme.jsp">테마</a></li>
        <li class="current"><a href="<%=request.getContextPath()%>/reservation.jsp">예약</a></li>
        <li><a href="<%=request.getContextPath()%>/mvcboard/listT.do">Q&A</a></li>
        <li><a href="<%=request.getContextPath()%>/member/Login.jsp">Login</a></li>
		<a class="banner_btn" href="<%=request.getContextPath()%>//member/Register.jsp">회원가입</a>
        <div class="clear"></div>
      </ul>
      <script type="text/javascript" src="js/responsive-nav.js"></script> 
    </div>
  </div>
</div>
<div class="about">
  <div class="container">
    <section class="title-section">
      <h1 class="title-header">Our  Services</h1>
    </section>
  </div>
</div>

<div class="container">
  
</div>
<div class="main">
<div class="footer">
  <div class="footer_bottom">
    <div class="follow-us"> <a class="fa fa-facebook social-icon" href="#"></a> <a class="fa fa-twitter social-icon" href="#"></a> <a class="fa fa-linkedin social-icon" href="#"></a> <a class="fa fa-google-plus social-icon" href="#"></a> </div>
    <div class="copy">
      <p>Copyright &copy; 2015 Company Name. Design by <a href="http://www.templategarden.com" rel="nofollow">TemplateGarden</a></p>
    </div>
  </div>
</div>
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flexslider.js"></script>
</body>
</html>
