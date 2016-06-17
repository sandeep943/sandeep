<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SPORTSGEAR</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="https://www.google.co.in/">HOME</a></li>
      <li><a href="login.html">LOGIN</a></li>
      <li><a href="signup.html">SIGNUP</a></li>
      <li><a href="prdct.html">PRODUCTS</a></li>
    </ul>
  </div>
</nav>
<body>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="African.jpg" width="460" height="400">
      </div>

      <div class="item">
        <img src="Barcelona.jpg" width="460" height="400">
      </div>
    
      <div class="item">
        <img src="yonexkit.jpg" width="460" height="400">
      </div>
      
      <div class="item">
         <img src="ball.jpg" width="460" height="400">
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

<div class="container">
  
  <div class="row">
    <div class="col-md-4">
      <a href="cric bat.jpg" class="thumbnail">
        <img src="cric bat.jpg" style="width:250px;height:350px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="federer.jpg" class="thumbnail">
        <img src="federer.jpg" style="width:250px;height:350px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="tennis racket.jpg" class="thumbnail">
        <img src="tennis racket.jpg" style="width:250px;height:350px">
      </a>
    </div>
  </div>
</div> 

</html>