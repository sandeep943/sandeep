

	<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

	<script type="text/javascript"
		src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
<!-- 	<nav class="navbar navbar-inverse"> -->
<!-- 		<div class="container-fluid"> -->
<!-- 			<div class="navbar-header"> -->
<!-- 				<a class="navbar-brand" href="#">Xplore!</a> -->
<!-- 			</div> -->
<!-- 			<ul class="nav navbar-nav"> -->
<!-- 				<li class="active"><a href="#">Home</a></li> -->
<%-- 				<li><a href="<c:url value='/ViewBlog'/>">View Blogs</a></li> --%>
<%-- 				<li><a href="<c:url value='/cs'/>">Contact Us</a></li> --%>
<!-- 				<li><a href="#">About Us</a></li> -->
<!-- 			</ul> -->
<!-- 			 <ul class="nav navbar-nav navbar-right"> -->
<%--       <li><a href="<c:url value='/register'/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> --%>
<%--       <li><a href="<c:url value='/login'/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> --%>
<!--     </ul> -->
<!--   </div> -->
		
<!-- 	</nav> -->
<%@include file="/WEB-INF/views/header.jsp"%>

	<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>

		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="resource/02.jpg" alt="Chania">
				<div class="carousel-caption">
					
					
				</div>
			</div>

			<div class="item">
				<img src="resource/03.jpg" alt="Chania">
				<div class="carousel-caption">
					
					
				</div>
			</div>


	 <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    
		</div>
	</div>
	<div class="p-y-3 section text-xs-center" draggable="true">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <i class="fa fa-5x fa-fw fa-star m-y-1 m-y-lg text-primary"></i>
          <h1><a href="<c:url value='/start'/>"> chat</a></h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua&nbsp;Ut enim ad minim veniam, quis nostrud</p>
        </div>
        <div class="col-md-4">
          <i class="fa fa-5x fa-fw fa-heart m-y-1 m-y-lg text-primary"></i>
          <h1><a href="<c:url value='/blogadd'/>">Blogs</a></h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua&nbsp;Ut enim ad minim veniam, quis nostrud</p>
        </div>
        <div class="col-md-4">
          <i class="fa fa-5x fa-cloud fa-fw m-y-1 m-y-lg text-primary"></i>
          <h1>Forum</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua&nbsp;Ut enim ad minim veniam, quis nostrud</p>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
	
  

	




</body>

</html>