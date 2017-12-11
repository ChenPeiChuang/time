<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
	h1 span{float:left;position:relative;}
	h1 span:nth-child(1){
		-webkit-animation:jump 1s linear 0s infinite alternate;
	}
	h1 span:nth-child(2){
		-webkit-animation:jump 1s linear 0.2s infinite alternate;
	}
	h1 span:nth-child(3){
		-webkit-animation:jump 1s linear 0.4s infinite alternate;
	}
	h1 span:nth-child(4){
		-webkit-animation:jump 1s linear 0.6s infinite alternate;
	}
	h1 span:nth-child(5){
		-webkit-animation:jump 1s linear 0.8s infinite alternate;
	}
	@-webkit-keyframes jump{
		0%{top:0px; color:red;}
		50%{top:-10px; color:green;}
		100%{top:10px; color:blue;}
	}
	div{margin:0 auto;width:35%;margin-top:20%;}
	</style>
  </head>
  
  <body>
  <script type="text/javascript" src="js/canvas-nest.js"></script>
  <div>
   	<h1 align="center">
		<span>Welcome</span>&nbsp;
		<span>to</span>&nbsp;
		<span>my</span>&nbsp;
		<span>web</span>&nbsp;
		<span>!</span>
	</h1>
 </div>
  </body>
</html>
