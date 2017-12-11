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
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		a{text-decoration:none;}a:hover{color:red;}body{background:#9FF;background:url(img/topb.jpg);
		background-repeat:no-repeat;}
	</style>
  </head>
  
  <body>
    <h3 style="color:#000;font-shadow:1px 1px 4px #FF0;"><em>欢迎来到课表后台</em></h3>
    <div align="right">
    	你好！<strong><s:property value="#session.existUser.userName"/></strong>
    	&nbsp;<a href="user_logout" target="_parent">注销登录</a><br/>
    </div>
    
  </body>
</html>
