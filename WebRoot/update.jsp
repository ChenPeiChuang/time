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
    
    <title>修改页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
		.btn{border:1px dashed #FFF;background:#39F;color:#FFF;padding:5px;width:100%;}
		.btn:hover{color:yellow;}
	</style>
  </head>
  
  <body>
  <h2>修改课程</h2>
 <s:form action="detail_update" method="post" theme="simple">
	<s:hidden name="id" value="%{model.id}"/>
	<s:hidden name="mcalss.classId" value="%{model.mcalss.classId}"/>
	<table border='0' cellpadding="0"  cellspacing="10">
		<tr>
			<td>课程：</td>
			<td><input name="courseName" value="<s:property value="%{model.courseName}"/>" /></td>
		</tr>
		<tr>
			<td>开始周：</td>
			<td><input name="weekBegin" value="<s:property value="%{model.weekBegin}"/>" /></td>
		</tr>
		<tr>
			<td>结束周：</td>
			<td><input name="weekEnd" value="<s:property value="%{model.weekEnd}"/>" /></td>
		</tr>
		<tr>
			<td>节&nbsp;&nbsp;次：</td>
			<td><input name="section" value="<s:property value="%{model.section}"/>" /></td>
		</tr>
		<tr>
			<td>教师名：</td>
			<td><input name="teacherName" value="<s:property value="%{model.teacherName}"/>" /></td>
		</tr>
		<tr>
			<td>地&nbsp;&nbsp;方：</td>
			<td><input name="location" value="<s:property value="%{model.location}"/>" /></td>
		</tr>
		<tr>
			<td>x&nbsp;&nbsp;轴：</td>
			<td><input name="xa" value="<s:property value="%{model.xa}"/>" /></td>
		</tr>
		<tr>
			<td>y&nbsp;&nbsp;轴：</td>
			<td><input name="ya" value="<s:property value="%{model.ya}"/>" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="修改" class="btn"/></td>
		</tr>
	</table>
</s:form>
  </body>
</html>
