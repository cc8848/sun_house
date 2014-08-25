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
 <sj:head jqueryui="true"/>
<title>預約系統</title>
</head>
  <body >
  <div class="navbar navbar-inverse navbar-fixed-top" >
      <div class="container">
        <div class="navbar-header">
         
          <a class="navbar-brand" href="#">預約系統</a>
        </div>
        <div class="navbar-collapse collapse">
        
          <form class="navbar-form navbar-right" >
          <a class="btn btn-primary btn-lg"  href="<s:url action="logOut"/>">登出系統</a>
          </form>
          
        </div><!--/.navbar-collapse -->
      </div>
    </div>
	 <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      
      	<sj:dialog id="neworder" title="預約" autoOpen="false"  modal="true">
      		<!-- form of new order -->
      		<s:form id="createOrderUserForm" action="CreateOrderUserAction" namespace="/order" theme="bootstrap" cssClass="form-signin" >
      			<s:textfield id="nid" name="nid" label="身分證號碼" value=""  cssClass="form-control"  required="true"/>
      			<sj:submit  value="預約" />
    		</s:form>
		</sj:dialog>
		
        <h3> <s:property value="%{#session['loginId']}"/> 您好<sj:a cssClass="btn btn-primary btn-lg"  openDialog="neworder">預約</sj:a></h3>
		
      
       <div class="panel panel-default">
        <div class="panel-heading">預約清單</div>
  			<div class="panel-body">
    			<p>說明: 預約時間是 24hr，預約如果有問題，請洽:  admin@drsun.com</p>
  			</div>
      	
      	 <!-- Table responsive begin -->	
          <div class="table-responsive" >
        
             <display:table   name="orderList"   pagesize="3" requestURI="" class="table table-striped table-hover ">
             	<display:column property="orderid" title="預約編號"/>
             	<display:column property="userid" title="使用者編號"/>
             	<display:column property="number" title="預約號碼"/>
				<display:column property="status" title="預約狀態"/>
				<display:column property="ordertime" title="預約時間"/>
				<display:column property="createtime" title="建立時間"/>
				<display:column property="modifytime" title="修改時間"/>
             </display:table>
           
          </div> <!-- table responsive end -->
          </div> <!-- panel end -->
      </div>
       
    </div>
   

 		
</body>
</html>