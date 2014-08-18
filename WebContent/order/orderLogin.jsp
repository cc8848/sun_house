<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/JavaScript" src="../js/jquery/jquery-1.11.1.js"></script> 
<script type="text/JavaScript" src="../bootstrap-3.2.0-dist/js/bootstrap.js"></script> 
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap.css  rel="stylesheet" type="text/css">
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap-responsive.css  rel="stylesheet" type="text/css"> 
<script type="text/JavaScript" src="../js/ie/ie10-viewport-bug-workaround.js"></script>  
<script type="text/JavaScript" src="../js/ie/ie-emulation-modes-warning.js"></script> 
<link rel="icon" href="../../favicon.ico">

 <link href="../css/signin.css" rel="stylesheet">
 
<title>預約登入</title>
</head>
<body>
<p class="navbar-text navbar-right"><button type="button" class="btn btn-default navbar-btn"><a href="http://localhost:8080/doctor-sun/" class="navbar-link">回首頁</a></button></p>

<s:actionerror theme="bootstrap"/>
<s:actionmessage theme="bootstrap"/>
<s:fielderror theme="bootstrap"/>

	<s:form id="orderidLoginForm" action="OrderloginUser" namespace="/order" theme="bootstrap"  cssClass="form-signin" >
		<s:textfield name="nid" placeholder="身分證號碼 "  label="身分證號碼" cssClass="form-control" required="true"/>
		<s:submit  cssClass="btn btn-primary btn-block" value="登入" />
	</s:form>
</body>
</html>