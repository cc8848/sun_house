<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjc" uri="/struts-jquery-chart-tags"%>
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
  
<title>管理系統</title>
</head>
  <body >
  <div class="navbar navbar-inverse navbar-fixed-top" >
      <div class="container">
        <div class="navbar-header">
         
          <a class="navbar-brand" href="#">管理系統</a>
        </div>
        <div class="navbar-collapse collapse">
        
          <form class="navbar-form navbar-right"  >
          <a class="btn btn-primary btn-lg"  href="<s:url action="logOut"/>">登出系統</a>
          </form>
          
        </div><!--/.navbar-collapse -->
      </div>
    </div>
	 <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
      	<sj:dialog id="createnew" title="新增" autoOpen="false"  modal="true">
      		<!-- form of new user -->
      		<s:form id="createUserForm" action="CreateAdminUserAction" namespace="/admin" theme="bootstrap" cssClass="form-signin" >
      			<s:textfield id="username" name="name" label="使用者名稱" value="" cssClass="form-control"  required="true"/>
      			<s:textfield id="nid" name="nid" label="身分證號碼" value=""  cssClass="form-control"  required="true"/>
      			<s:textfield id="useremail" name="email" label="電子郵件" value="" cssClass="form-control" required="true" />
      			<s:textfield id="usermobile" name="mobile" label="手機號碼" value="" cssClass="form-control" />			
      			<sj:submit  value="新增" />
    		</s:form>
			
      	</sj:dialog>
        <h3> <s:property value="%{#session['adminloginId']}"/> 您好<sj:a cssClass="btn btn-primary btn-lg"  openDialog="createnew">新增</sj:a></h3>
		
      
       <div class="panel panel-default">
        <div class="panel-heading">使用者清單</div>
        <!--  
  			<div class="panel-body">
    			<p>說明: 如果有問題，請洽:  admin@drsun.com</p>
  			</div>
      	-->
      	

      	 <!-- Table responsive begin -->	
          <div class="table-responsive" >
        
           <display:table   name="userList"  uid="userrow" sort="list" pagesize="3" requestURI="" defaultsort="1" defaultorder="descending"  class="table table-striped table-hover ">
             	<display:column property="userid" title="編號" sortable="true" headerClass="sortable"/>
				<display:column property="nid" title="身分證號碼"/>
				<display:column property="name" title="姓名"/>
				<display:column property="email" title="電子郵件"/>
				<display:column property="mobile" title="手機號碼"/>
				<display:column property="createtime" title="建立時間"/>
				<display:column property="modifytime" title="修改時間"/>
				<display:column title="更新"><sj:a  openDialog="modifydialog">修改</sj:a>
				
   				<sj:dialog id="modifydialog" title="修改" autoOpen="false"  modal="true">
      				<s:form id="modifyUserForm" action="ModifyAdminUserAction" namespace="/admin" theme="bootstrap" cssClass="form-signin" >
      					<s:hidden id="paramid" name="paramid" label="編號" value="%{#attr.userrow.userid}" cssClass="form-control"  required="true"/>
      					<s:textfield id="nid" name="nid" label="身分證號碼" value="%{#attr.userrow.nid}"  cssClass="form-control"  required="true"/>
      					<s:textfield id="username" name="name" label="使用者名稱" value="%{#attr.userrow.name}"  cssClass="form-control"  required="true"/>
      					<s:textfield id="useremail" name="email" label="電子郵件" value="%{#attr.userrow.email}" cssClass="form-control" required="true" />
      					<s:textfield id="usermobile" name="mobile" label="手機號碼" value="%{#attr.userrow.mobile}"  cssClass="form-control" />			
      					<sj:submit  value="修改" />
    				</s:form>
      			</sj:dialog>
      			
    			</display:column>		
    			
    			
				<display:column title="刪除" >
   					 	<s:url id="deleteUrl" action="DeleteAdminUserAction"  >
    						<s:param name="paramid" value="%{#attr.userrow.userid}" />
    					</s:url>
    				<s:a href="%{deleteUrl}">刪除</s:a>
				</display:column>
				
				
             </display:table>
             
          
           
          </div> <!-- table responsive end -->
       <!-- Chart  -->   
          <sjc:chart
        id="chartPie"
        cssStyle="width: 600px; height: 400px;"
        pie="true"
        pieLabel="true"
        autoResize="true"
        draggable="true"
    >
        <sjc:chartData
                id="pieSerie1"
                label="科技業"
                data="40"
        />
        <sjc:chartData
                id="pieSerie2"
                label="服務業"
                data="3"
        />
        <sjc:chartData
                id="pieSerie3"
                label="軍公教"
                data="17"
        />
        <sjc:chartData
                id="pieSerie4"
                label="其他"
                data="27"
        />
    </sjc:chart><!-- chart end -->
          
          
          </div> <!-- panel end -->
      </div>
       
    </div>
   

 		
</body>
</html>