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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
  	<form action="detail_findByKey" method="post">
  		<label>请选择班级:</label>
	    <select name="mcalss.classId">
	    	<option value="0">--请选择--</option>
		    <s:iterator value="ac" var="e">
		    	<option value="<s:property value="#e.classId"/>"><s:property value="#e.className"/></option>
		    </s:iterator>
	    </select>&nbsp;
    	<input type="submit" value="查询" class="btn"/>
    	
    </form>
  	
  	<h3>课程表(<a href="detail_insertUI">添加</a>)</h3>
    <table class="tab1">
    	<tr style="color:#FFF;">
    		<th>编号</th><th>课程</th>
    		<th>班级</th><th>开始周</th>
    		<th>结束周</th><th>节次</th>
  			<th>教师名</th><th>地方</th>
    		<th>x轴</th><th>y轴</th>
    		<th colspan="2">操作</th>
    	</tr>
    	<s:iterator value="list" var="e">
    		<tr>
    			<td><s:property value="id"/></td>
    			<td><s:property value="courseName"/></td>
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
    <br/>
   
    <table border="0" cellspacing="0" cellpadding="0"  width="900px">
	<tr>
	<td align="left">
   	   <span>第<s:property value="currPage"/>/<s:property value="totalPage"/>页</span>&nbsp;&nbsp;
   	   <span>总记录数:<s:property value="totalCount"/>&nbsp;&nbsp;每页显示：<s:property value="pageSize"/>条</span>&nbsp;&nbsp;
	   <s:if test="currPage!=1">
	       <a href="${pageContext.request.contextPath}/detail_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
	       <a href="${pageContext.request.contextPath}/detail_findAll.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
	   </s:if>
	   <s:if test="currPage!=totalPage">
	       <a href="${pageContext.request.contextPath}/detail_findAll.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp;
	       <a href="${pageContext.request.contextPath}/detail_findAll.action?currPage=<s:property value="totalPage"/>">[尾页]</a>&nbsp;&nbsp;
	   </s:if>
    </td>
	</tr>
	</table>
  </body>
</html>
