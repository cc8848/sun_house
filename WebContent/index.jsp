<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html 5>
<html>
<head>
<meta charset="utf-8">
    <title>sun's house</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">

<script type="text/JavaScript" src="js/jquery/jquery-1.11.1.js"></script> 
<script type="text/JavaScript" src="bootstrap-3.2.0-dist/js/bootstrap.js"></script> 
<LINK href=bootstrap-3.2.0-dist/css/bootstrap.css  rel="stylesheet" type="text/css">
<LINK href=bootstrap-3.2.0-dist/css/bootstrap-responsive.css  rel="stylesheet" type="text/css">  
<script type="text/JavaScript" src="js/ie/ie10-viewport-bug-workaround.js"></script>  
<script type="text/JavaScript" src="js/ie/ie-emulation-modes-warning.js"></script> 
  <link rel="icon" href="../../favicon.ico">
<!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
    

</head>
  <body role="document">

 <!-- Main jumbotron for a primary marketing message or call to action -->
     
  <div class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">孫醫生的家</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">首頁</a></li>
              <li><a href="#about">關於</a></li>
              <li><a href="#contact">連繫</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">服務項目 <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
              <li><a href="login.jsp">與醫生預約</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
<div class="container theme-showcase" role="main">

   
   <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img src="img/c1.gif" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>孫醫生的故事</h1>
              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img  src="img/c1.gif" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>精神疾病的治療</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img  src="img/c1.gif" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>熱忱的服務</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->


	

       <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="img/product1.png" alt="Generic placeholder image">
        </div>
      </div>

   <hr class="featurette-divider">
  <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">回到首頁</a></p>
        <p>&copy; 2014 孫醫生的家. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
</div>
</body>
</html>