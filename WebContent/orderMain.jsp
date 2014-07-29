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
	<div theme="bootstrap">
		Hello <s:property value="%{#session['loginId']}"/><br>
        <a href="<s:url action="logOut"/>">LogOut</a>
	</div>
 		
</body>
</html>