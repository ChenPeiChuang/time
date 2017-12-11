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
    
    <title>课程表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/top.css"/>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
  </head>
  
  <body>
  <script type="text/javascript" src="js/canvas-nest.js"></script>
    你好！<strong><s:property value="#session.existUser.userName"/></strong>
    &nbsp;<a href="user_logout" class="logout">注销登录</a><br/>
    
    
    <div>
    <div id="nav" class="nav">

        <ul id="myTable" class="nav nav-tabs">
            <li class="active"><a href="#home" data-toggle="tab"> 首 页</a></li>
            <li>
                <a href="#consult" data-toggle="tab">学校咨询</a>
            </li>

            <li class="dropdown">
                <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">校园风貌</a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                    <li><a href="#campus" tabindex="-1" data-toggle="tab">campus</a></li>
                    <!-- <li><a href="#add"  tabindex="-1" data-toggle="tab">增加课程</a></li>
                    <li><a href="#r" tabindex="-1" data-toggle="tab">修改课程</a></li> -->

                </ul>
            </li>

            <li class="dropdown"><a href="#" id="myTabDrop2" class="dropdown-toggle" data-toggle="dropdown">班级活动</a>
                <!-- <ul  class="dropdown-menu" role="menu" aria-labelledby="myTabDrop2">
                    <li><a href="#re" tabindex="-1" data-toggle="tab">注册</a></li>
                    <li><a href="#l" tabindex="-1" data-toggle="tab">登录</a></li>
                </ul> -->
            </li>

            <li><a href="consult.html">关于我们</a></li>
          </ul>
       </div>

    </div>

    <div class="tab-content">
        <object class="tab-pane fade in active pic" id="home" data="tx.png"></object>
        <object class="tab-pane fade size" id="campus" data="campus.jsp"></object>
       <!--  <object class="tab-pane fade size" id="q" data="query.html"></object>
   			<object class="tab-pane fade size" id="q" data="query.html"></object>
        <object class="tab-pane fade size" id="add" data="add.html"></object>
        <object class="tab-pane fade size" id="r" data="revise.html"></object>
        <object class="tab-pane fade size" id="re" data="register.html"></object>
        <object class="tab-pane fade size" id="l" data="login.html"></object> -->
    </div>
    
    
    
 <div align="center">
 	<h4 >当前位置----课表查询</h4>
    <form action="detail_findDetail" method="post">
    <label>请选择班级:</label>
	    <select name="mcalss.classId">
		    <s:iterator value="allClass" var="e">
		    	<option value="<s:property value="#e.classId"/>"><s:property value="#e.className"/></option>
		    </s:iterator>
	    </select>&nbsp;
    	<input type="submit" value="查询" class="btn_search"/><br/><br/>
    	<img src="img/tx.png"/>
    </form>
 </div>
  </body>
</html>
