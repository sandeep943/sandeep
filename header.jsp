<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>Bootstrap Theme The Band</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
/* body { */
/* 	font: 400 15px/1.8 Lato, sans-serif; */
/* 	color: #777; */
/* } */

/* h3, h4 { */
/* 	margin: 10px 0 30px 0; */
/* 	letter-spacing: 10px; */
/* 	font-size: 20px; */
/* 	color: #111; */
/* } */

/* .container { */
/* 	padding: 80px 120px; */
/* } */

/* .person { */
/* 	border: 10px solid transparent; */
/* 	margin-bottom: 25px; */
/* 	width: 80%; */
/* 	height: 80%; */
/* 	opacity: 0.7; */
/* } */

/* .person:hover { */
/* 	border-color: #f1f1f1; */
/* } */

/* .carousel-inner img { */
/* 	-webkit-filter: grayscale(90%); */
/* 	filter: grayscale(90%); /* make all photos black and white */ */
/* 	width: 100%; /* Set width to 100% */ */
/* 	margin: auto; */
/* } */

/* .carousel-caption h3 { */
/* 	color: #fff !important; */
/* } */

/* @media ( max-width : 600px) { */
/* 	.carousel-caption { */
/* 		display: none; */
/* 		/* Hide the carousel text when the screen is less than 600 pixels wide */ */
/* 	} */
/* } */

/* .bg-1 { */
/* 	background: #2d2d30; */
/* 	color: #bdbdbd; */
/* } */

/* .bg-1 h3 { */
/* 	color: #fff; */
/* } */

/* .bg-1 p { */
/* 	font-style: italic; */
/* } */

/* .list-group-item:first-child { */
/* 	border-top-right-radius: 0; */
/* 	border-top-left-radius: 0; */
/* } */

/* .list-group-item:last-child { */
/* 	border-bottom-right-radius: 0; */
/* 	border-bottom-left-radius: 0; */
/* } */

/* .thumbnail { */
/* 	padding: 0 0 15px 0; */
/* 	border: none; */
/* 	border-radius: 0; */
/* } */

/* .thumbnail p { */
/* 	margin-top: 15px; */
/* 	color: #555; */
/* } */

/* .btn { */
/* 	padding: 10px 20px; */
/* 	background-color: #333; */
/* 	color: #f1f1f1; */
/* 	border-radius: 0; */
/* 	transition: .2s; */
/* } */

/* .btn:hover, .btn:focus { */
/* 	border: 1px solid #333; */
/* 	background-color: #fff; */
/* 	color: #000; */
/* } */

/* .modal-header, h4, .close { */
/* 	background-color: #333; */
/* 	color: #fff !important; */
/* 	text-align: center; */
/* 	font-size: 30px; */
/* } */

/* .modal-header, .modal-body { */
/* 	padding: 40px 50px; */
/* } */

/* .nav-tabs li a { */
/* 	color: #777; */
/* } */

/* #googleMap { */
/* 	width: 100%; */
/* 	height: 400px; */
/* 	-webkit-filter: grayscale(100%); */
/* 	filter: grayscale(100%); */
/* } */

/* .navbar { */
/* 	font-family: Montserrat, sans-serif; */
/* 	margin-bottom: 0; */
/* 	background-color: #2d2d30; */
/* 	border: 0; */
/* 	font-size: 11px !important; */
/* 	letter-spacing: 4px; */
/* 	opacity: 0.9; */
/* } */

/* .navbar li a, .navbar .navbar-brand { */
/* 	color: #d5d5d5 !important; */
/* } */

/* .navbar-nav li a:hover { */
/* 	color: #fff !important; */
/* } */

/* .navbar-nav li.active a { */
/* 	color: #fff !important; */
/* 	background-color: #29292c !important; */
/* } */

/* .navbar-default .navbar-toggle { */
/* 	border-color: transparent; */
/* } */

/* .open .dropdown-toggle { */
/* 	color: #fff; */
/* 	background-color: #555 !important; */
/* } */

/* .dropdown-menu li a { */
/* 	color: #000 !important; */
/* } */

/* .dropdown-menu li a:hover { */
/* 	background-color: red !important; */
/* } */

/* footer { */
/* 	background-color: #2d2d30; */
/* 	color: #f5f5f5; */
/* 	padding: 32px; */
/* } */

/* footer a { */
/* 	color: #f5f5f5; */
/* } */

/* footer a:hover { */
/* 	color: #777; */
/* 	text-decoration: none; */
/* } */

/* .form-control { */
/* 	border-radius: 0; */
/* } */

/* textarea { */
/* 	resize: none; */
/* } */
</style> 
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage">Xpro!</a>
			</div>

			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">
					<c:if test="${pageContext.request.userPrincipal.name != null}">					
						<c:if
							test="${pageContext.request.userPrincipal.name != 'admin'}">
							<li><a href="<c:url value='/index'/>">PROFILE</a></li>
							<li><a href="<c:url value='/start'/>">CHAT</a></li>
							<li><a href="<c:url value='/Forum'/>">FORUM</a></li>
							  <li><a href="<c:url value='/ViewBlog'/>">View Blog</a></li>
							    <li><a href="<c:url value='/blogadd'/>">Blog add</a></li>
		
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">BULLETINE <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/BulletineView'/>">VIEW ALL
											BULLETINE</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">JOB OPPORTUNITY <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/JobView'/>">VIEW ALL
											JOB OPPORTUNITY</a></li>
								</ul></li>
														<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">WHAT'S NEW <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/WhatNewView'/>">VIEW ALL
											WHAT'S NEW</a></li>
								</ul></li>
							

						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
							<li><a href="<c:url value='/'/>">PROFILE</a></li>
							<li><a href="<c:url value='/start'/>">CHAT</a></li>
							<li><a href="<c:url value='/Forum'/>">FORUM</a></li>
						
									<li><a href="<c:url value='/blogadd'/>">ADD NEW BLOG</a></li>
									<li><a href="<c:url value='/ViewBlog'/>">VIEW ALL BLOG</a></li>
									<li><a href="<c:url value='/admin/blogViewApprove'/>">APPROVE BLOG</a></li>
							
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">BULLETINE <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/BulletineAdd'/>">ADD NEW BULLETINE</a></li>
									<li><a href="<c:url value='/BulletineView'/>">VIEW ALL BULLETINE</a></li>
								</ul>
							</li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">JOB OPPORTUNITIES <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/JobAdd'/>">ADD NEW JOB OPPORTUNITIES </a></li>
									<li><a href="<c:url value='/JobView'/>">VIEW ALL JOB OPPORTUNITIES </a></li>
								</ul>
							</li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">WHAT'S NEW <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/WhatNewAdd'/>">ADD NEW WHAT'S NEW</a></li>
									<li><a href="<c:url value='/WhatNewView'/>">VIEW ALL WHAT'S NEW</a></li>
								</ul>
							</li>
						</c:if>
					</c:if>
					
				</ul>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
				<ul class="nav navbar-nav navbar-right">
					
						<li class="dropdown">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#"> 
<%-- 									<span class="profile-ava"><img alt="" src="${pageContext.request.userPrincipal.name"></span>  --%>
									<span class="username">${pageContext.request.userPrincipal.name}</span>
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu extended logout">
									<div class="log-arrow-up"></div>

									<li class="eborder-top"><a href="<c:url value='/index'/>">
										<i class="icon_profile"></i> My Profile</a>
									</li>
									<li class="divider"></li>	
									<li><a href="<c:url value='/JobView'/>"><i
											class="icon_chat_alt"></i> Job Opportunities</a></li>
									<li><a href="<c:url value='/WhatNewView'/>"><i
											class="icon_key_alt"></i> What's New</a></li>
									<li><a href="<c:url value='/BulletineView'/>"><i
											class="icon_key_alt"></i> Bulletins</a></li>
									<li class="divider"></li>
									<li><a href="<c:url value='/Logout'/>"><i
											class="icon_key_alt"></i> Logout</a></li>
								</ul>
							</li>
					
				</ul>
				</c:if>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${pageContext.request.userPrincipal.name  == null}">

						<li><a href="<c:url value='/Login'/>">LOGIN</a></li>
						<%--   		<li><a href="<c:url value='/personadd'/>">REGISTER</a></li> --%>



					</c:if>
				</ul>
			</div>
		</div>
	</nav>
