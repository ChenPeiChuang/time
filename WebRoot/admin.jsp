<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#hade").slideDown(1000);
		});
	</script>
	<style>
		a{text-decoration:none;color:#06F;border:1px solid #F9F;border-radius:5px;padding:5px;}
		a:hover{color:#F9F;border:1px solid #FFF;background-color:#F9F;color:#FFF;}
	</style>
  </head>
  
  <body>
  <br/>
  	   <div id="hade"style="display:none;">
    	<a href="detail_findAll" target="right">查询所有课程表</a>
       </div>
  		
  </body>
</html>
