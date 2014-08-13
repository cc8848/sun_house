<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/JavaScript" src="../js/jquery/jquery-1.11.1.js"></script> 
<script type="text/JavaScript" src="../bootstrap-3.2.0-dist/js/bootstrap.js"></script> 
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap.css  rel="stylesheet" type="text/css">
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap-responsive.css  rel="stylesheet" type="text/css">  
<script type="text/JavaScript" src="../js/ie/ie10-viewport-bug-workaround.js"></script>  
<script type="text/JavaScript" src="../js/ie/ie-emulation-modes-warning.js"></script> 
 <link href="../css/signin.css" rel="stylesheet"> 
  
  <sj:head jqueryui="true" useJqGridPlugin=true jquerytheme="start" locale="zh-TW"/>
  
<title>管理系統</title>

</head>
  <body role="document">
  <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
         
          <a class="navbar-brand" href="#">管理系統</a>
        </div>
        <div class="navbar-collapse collapse">
        
          <form class="navbar-form navbar-right" role="form" >
          <a class="btn btn-primary btn-lg" role="button" href="<s:url action="logOut"/>">登出系統</a>
          </form>
          
        </div><!--/.navbar-collapse -->
      </div>
    </div>
	 <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      	
        <h3> <s:property value="%{#session['adminloginId']}"/> 您好<sj:a cssClass="btn btn-primary btn-lg"  openDialog="createnew">新增</sj:a></h3>
		
      
       <div class="panel panel-default">
        <div class="panel-heading">使用者清單</div>
       
      	 <!-- Table responsive begin -->
      	 <div class="table-responsive" >
      		teeete
          
           
          </div> <!-- table responsive end -->
          </div> <!-- panel end -->
      </div>
       
    </div>

 		
</body>

</html>