<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/JavaScript" src=../js/jquery/jquery-1.11.1.js"></script> 
<script type="text/JavaScript" src="../bootstrap-3.2.0-dist/js/bootstrap.js"></script> 
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap.css  rel="stylesheet" type="text/css">
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap-responsive.css  rel="stylesheet" type="text/css">  
<script type="text/JavaScript" src="../js/ie/ie10-viewport-bug-workaround.js"></script>  
<script type="text/JavaScript" src="../js/ie/ie-emulation-modes-warning.js"></script> 
 <link href="../css/signin.css" rel="stylesheet">
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
        <h3> <s:property value="%{#session['loginId']}"/> 您好<a class="btn btn-primary btn-lg" role="button">管理</a></h3>
		
      
       <div class="panel panel-default">
        <div class="panel-heading">使用者清單</div>
        <!--  
  			<div class="panel-body">
    			<p>說明: 如果有問題，請洽:  admin@drsun.com</p>
  			</div>
      	-->
      	 <!-- Table responsive begin -->	
          <div class="table-responsive" >
        
             <display:table   name="userList"  uid="row" pagesize="3" requestURI="" class="table table-striped table-hover ">
             	<display:column property="userid" title="編號"/>
				<display:column property="name" title="姓名"/>
				<display:column property="email" title="電子郵件"/>
				<display:column property="mobile" title="手機號碼"/>
				<display:column property="createtime" title="建立時間"/>
				<display:column property="modifytime" title="修改時間"/>
				<display:column title="編輯">
   					 	<s:url id="modifyUrl" action="ModifyAdminUserAction"  >
    						<s:param name="paramid" value="%{#attr.row.userid}" />
    					</s:url>
    				<s:a href="%{modifyUrl}">刪除</s:a>
				</display:column>
				<display:column title="刪除" >
   					 	<s:url id="deleteUrl" action="DeleteAdminUserAction"  >
    						<s:param name="paramid" value="%{#attr.row.userid}" />
    					</s:url>
    				<s:a href="%{deleteUrl}">刪除</s:a>
				</display:column>
				
             </display:table>
           
          </div> <!-- table responsive end -->
          </div> <!-- panel end -->
      </div>
       
    </div>
   

 		
</body>
</html>