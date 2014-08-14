<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/JavaScript" src="../js/jquery/jquery-1.11.1.js"></script> 
<script type="text/JavaScript" src="../js/jquery/jquery-ui.js"></script> 
<script type="text/JavaScript" src="../js/jquery/grid.locale-tw.js"></script>
<script type="text/JavaScript" src="../js/jquery/jquery.jqGrid.min.js"></script>
<script type="text/JavaScript" src="../bootstrap-3.2.0-dist/js/bootstrap.js"></script> 
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap.css  rel="stylesheet" type="text/css">
<LINK href=../bootstrap-3.2.0-dist/css/bootstrap-responsive.css  rel="stylesheet" type="text/css">  
<LINK href=../css/jquery-ui.css  rel="stylesheet" type="text/css">
<LINK href=../css/ui.jqgrid.css  rel="stylesheet" type="text/css">
<script type="text/JavaScript" src="../js/ie/ie10-viewport-bug-workaround.js"></script>  
<script type="text/JavaScript" src="../js/ie/ie-emulation-modes-warning.js"></script> 
 <link href="../css/signin.css" rel="stylesheet"> 
  
  <sj:head jqueryui="true"  locale="zh-TW"/>
 
  
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
	
      	<s:url var="remoteurl" action="AdminUserTableAction" />
    	<sjg:grid cssClass="panel-heading table-responsive panel panel-default"
        id="gridtable"
        caption="使用者清單"
        dataType="json"
        href="%{remoteurl}"
        pager="true"
        gridModel="gridModel"
        rowList="10,15,20"
        rowNum="15"
        rownumbers="true"
        navigator="true"
        viewrecords="true"
  		>
        
        <sjg:gridColumn name="userid" index="userid" title="使用者編號" formatter="integer" sortable="false"/>
        <sjg:gridColumn name="name" index="name" title="姓名" sortable="true" editable="true" />
        <sjg:gridColumn name="email" index="email" title="電子郵件" sortable="false" editable="true" />
        <sjg:gridColumn name="mobile" index="mobile" title="手機號碼" sortable="false" editable="true" />
        <sjg:gridColumn name="createtime" index="createtime" title="建立時間" sortable="false" editable="true" />
        <sjg:gridColumn name="modifytime" index="modifytime" title="修改時間" sortable="false" editable="true" />
    </sjg:grid>
          
           
         
      
      </div>
       
    </div>

 		
</body>

</html>