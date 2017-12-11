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
    
    <title>登录界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/login.css"/>
  </head>
  
  <body style="text-align: center">
  <script type="text/javascript" src="js/canvas-nest.js"></script>
  <div class="form_div">
	  <form action="user_login" target="_parent" method="post" class="login_form">
	    <h2 style="color: #F00;" ><em>欢迎登录课表</em></h2>
	    <div align="center">
	    	<span>用户名:</span>
	    	<input type="text" name="userName" class="select"/>
	    </div>
	    <p></p>
	    <div align="center">
	    	<span>密&nbsp;&nbsp;码:</span>
	    	<input type="password" name="userPassword" class="select"/>
	    </div>
	    <p></p>
	    <div align="center">
	    	<span>类&nbsp;&nbsp;型:</span>
	        <select name="power" class="select">
			  	<option value="2">普通用户</option>
			  	<option value="1">管理员</option>
  			</select><br/>
	    </div><br/>
	    <div align="center">
	        <input type="submit" value="登录" class="login"/>&nbsp;&nbsp;
	        <input type="reset" value="重置" class="reset"/>
	    </div>
	    <p><s:actionerror/></p>
	    <div align="center">
			<s:property value="#session.registerSuccess"/><!-- 注册账号成功后显示信息 -->
 			 没有账号？<a href="user_registerUI">注册</a>
	    </div>
	</form>
  </div>
  </body>
</html>
