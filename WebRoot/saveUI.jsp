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
    
    <title>添加页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
		div{border:1px dashed #F00;padding:2px;width:40%;}
		.btn{border:1px dashed #FFF;background:#39F;color:#FFF;padding:5px;width:100%;}
		.btn:hover{color:yellow;}
	</style>
  </head>
  
  <body>
  <h2>添加课表</h2>
 <s:form action="detail_save" method="post" theme="simple">

	<table border='0' cellpadding="0"  cellspacing="10">
		<tr>
			<td>课程：</td>
			<td><input name="courseName"/></td>
		</tr>
		<tr>
			<td>班级：</td>
			<td><s:select name="mcalss.classId" list="ac" listKey="classId" listValue="className" headerKey="%{model.mcalss.classId}" headerValue="--请选择--"/></td>
		</tr>
		<tr>
			<td>开始周：</td>
			<td><input name="weekBegin"/></td>
		</tr>
		<tr>
			<td>结束周：</td>
			<td><input name="weekEnd"/></td>
		</tr>
		<tr>
			<td>节&nbsp;&nbsp;次：</td>
			<td><input name="section"/></td>
		</tr>
		<tr>
			<td>教师名：</td>
			<td><input name="teacherName"/></td>
		</tr>
		<tr>
			<td>地&nbsp;&nbsp;方：</td>
			<td><input name="location"/></td>
		</tr>
		<tr>
			<td>x&nbsp;&nbsp;轴：</td>
			<td><input name="xa"/></td>
		</tr>
		<tr>
			<td>y&nbsp;&nbsp;轴：</td>
			<td><input name="ya"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="添加" class="btn"/></td>
		</tr>
	</table>
</s:form>
	<div>
		 <p style="color: red" >注意：x轴表示第几节课（第1~2/3~4/5~8/9~11节：1,2,3,4）<br>
     	 y轴表示星期几(星期一：1,只允许至星期五)</p>
	</div>
  </body>
</html>
