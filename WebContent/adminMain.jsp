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
<title>管理系統主頁</title>
</head>
  <body role="document">
  <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
         
          <a class="navbar-brand" href="#">管理系統</a>
        </div>
        <div class="navbar-collapse collapse">
        
          <form class="navbar-form navbar-right" role="form">
          <a class="btn btn-primary btn-lg" role="button" href="<s:url action="logOut"/>">登出系統</a>
          </form>
          
        </div><!--/.navbar-collapse -->
      </div>
    </div>
	 <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h3> <s:property value="%{#session['loginId']}"/> 您好<a class="btn btn-primary btn-lg" role="button">預約</a></h3>
		
      
       <div class="panel panel-default">
        <div class="panel-heading">預約清單</div>
  			<div class="panel-body">
    			<p>說明: 預約時間是 24hr，預約如果有問題，請洽:  admin@drsun.com</p>
  			</div>
      	
      	 <!-- Table responsive begin -->	
          <div class="table-responsive" >
          	<ul class="pagination">
			  	<li><a href="#">&laquo;</a></li>
 			 	<li><a href="#">1</a></li>
  				<li><a href="#">2</a></li>
  				<li><a href="#">3</a></li>
  				<li><a href="#">4</a></li>
  				<li><a href="#">5</a></li>
  				<li><a href="#">&raquo;</a></li>
			</ul>
          <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th>編號</th>
                  <th>姓名</th>
                  <th>電子郵件</th>
                  <th>手機號碼</th>
                  <th>建立時間</th>
                  <th>修改時間</th>
                </tr>
              </thead>
              <tbody>
               	<s:iterator value="userList" >
				<tr>
					<td><s:property value="userid" /></td>
					<td><s:property value="name" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="mobile" /></td>
					<td><s:property value="createtime" /></td>
					<td><s:property value="modifytime" /></td>
				</tr>
				</s:iterator>
              </tbody>
            </table>
          </div> <!-- table responsive end -->
          </div> <!-- panel end -->
      </div>
       
    </div>
   

 		
</body>
</html>