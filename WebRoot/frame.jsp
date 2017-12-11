<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<title>课表管理系统</title>
<style>
</style>
</head>
<frameset rows="90,*" bordercolor="#F9F">
	<frame name="top" src="${pageContext.request.contextPath}/top.jsp">
	<frameset cols="150,*" bordercolor="#F9F" id="main" >
		<frame src="${pageContext.request.contextPath}/admin.jsp">
		<frame name="right" src="${pageContext.request.contextPath}/welcome.jsp">
	</frameset>
</frameset>
</html>