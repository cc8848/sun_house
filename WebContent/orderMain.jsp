<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/JavaScript" src="js/jquery/jquery-1.11.1.js"></script> 
<script type="text/JavaScript" src="bootstrap-3.2.0-dist/js/bootstrap.js"></script> 
<LINK href=bootstrap-3.2.0-dist/css/bootstrap.css  rel="stylesheet" type="text/css">
<LINK href=bootstrap-3.2.0-dist/css/bootstrap-responsive.css  rel="stylesheet" type="text/css">  
<script type="text/JavaScript" src="js/ie/ie10-viewport-bug-workaround.js"></script>  
<script type="text/JavaScript" src="js/ie/ie-emulation-modes-warning.js"></script> 
 <link href="css/signin.css" rel="stylesheet">
<title>預約系統主頁</title>
</head>
  <body role="document">
  <div >
          	
          	</div>
  <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
         
          <a class="navbar-brand" href="#">預約系統</a>
        </div>
        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" role="form">
          	
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </div>
	 <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h3>親愛的預約者 <s:property value="%{#session['loginId']}"/> 您好:</h3>
        <p>這是預約主頁</p>
        <p><a class="btn btn-primary btn-lg" role="button">Learn more &raquo;</a></p>
        <p><a href="<s:url action="logOut"/>">登出系統</a></p>
      </div>
    </div>

 		
</body>
</html>