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
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript">
		function check(){
			return confirm("确定要删除该课程？");
		}
		$(function(){
			$(".tab1 tr:eq(0)").css("background","#0F0");
			$(".tab1 tr:gt(0)").hover(function(){
				$(this).css("background","#ffe773");
			},function(){
				$(this).css("background","#FFF");
			});
		});
	</script>
	<style>
		a:hover{color:red;}a{text-decoration:none;}.tab1 td{padding:1px;border-radius:1px;}
		.tab1{border:1px solid #0F0;border-radius:5px;}.btn{border:1px dashed #FFF;background:#39F;color:#FFF;padding:5px;}
		.btn:hover{color:yellow;}
	</style>
  </head>
  
  <body>
  	<a href="detail_findAll">返回首页</a>
  	<h2>课程表</h2>
    <table class="tab1">
    	<tr style="color:#FFF;">
    		<th>编号</th><th>课程</th>
    		<th>班级</th><th>开始周</th>
    		<th>结束周</th><th>节次</th>
  			<th>教师名</th><th>地方</th>
    		<th>x轴</th><th>y轴</th>
    		<th colspan="2">操作</th>
    	</tr>
    	<s:iterator value="det" var="e">
    		<tr>
    			<td><s:property value="#e.id"/></td>
    			<td><s:property value="#e.courseName"/></td>
    			<td><s:property value="mcalss.classId"/></td>
    			<td><s:property value="weekBegin"/></td>
    			<td><s:property value="weekEnd"/></td>
    			<td><s:property value="section"/></td>
    			<td><s:property value="teacherName"/></td>
    			<td><s:property value="location"/></td>
    			<td><s:property value="xa"/></td>
    			<td><s:property value="ya"/></td>
    			<td><a href="detail_updateUI?id=<s:property value="id"/>">修改</a></td>
    			<td><a href="detail_delete?id=<s:property value="id"/>" onclick="return check()">删除</a></td>
    		</tr>
    	</s:iterator>
    </table>
  </body>
</html>
