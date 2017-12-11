<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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

	<script>
	    window.onload=function () {
	        <!--获取时间-->
	        var oDate = new Date();
	        year = oDate.getFullYear();
	        month = oDate.getMonth()+1;
	        date = oDate.getDate();
	        day = oDate.getDay();
	        div = document.getElementById("time");
	        div.innerText = year+'年'+month+'月'+date+'日'+'星期'+day;
	   };
	</script>
	<style>
        #time{font-size: 25px;}td{text-align:center;}body{background:#ffe4c4;}a{text-decoration:none;}a:hover{color:red;}
        table{border-radius:5px;box-shadow:1px 1px 3px #CCC;}
    </style>
  </head>
  
  <body>
  <a href="javascript:history.back(-1)">返回上一页</a>
  <script type="text/javascript" src="js/canvas-nest.js"></script>
  <div align="center">
  <div id="time" align="center" ></div><br/>
 <table style="border-color: dimgrey"
        width="1000"
        height="500"
        cellspacing="0"
        cellpadding="1"
        border="1"
        align="center">
  <tr>
    <th width="55" height="23" scope="col" bgcolor="#ffe4c4">时段</th>
    <th colspan="2" scope="col" bgcolor="#add8e6">8:10-19:50</th>
    <th colspan="2" scope="col" bgcolor="#add8e6">10：10-11:50</th>
    <th colspan="4" scope="col" bgcolor="#add8e6">14:00-17:40</th>
    <th colspan="3" scope="col" bgcolor="#add8e6">18:10-21:40</th>
  </tr>
  <tr>
    <th height="25" scope="row" bgcolor="#ffe4c4">节次</th>
    <td width="45" bgcolor="#add8e6"><div align="center">1</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">2</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">3</div></td>
    <td width="55" bgcolor="#add8e6"><div align="center">4</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">5</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">6</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">7</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">8</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">9</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">10</div></td>
    <td width="45" bgcolor="#add8e6"><div align="center">11</div></td>
  </tr>
  <tr>
    <th scope="row" bgcolor="#f0f8ff">星期一</th>
    <td colspan="2">
	    <s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 1  && #e.ya == 1'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
    </td>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 1  && #e.ya == 2'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="4">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 1  && #e.ya == 3'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="3">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 1  && #e.ya == 4'>
	    		<s:property value="#e.courseName"/><br/><hr/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
  </tr>
  <tr>
    <th scope="row" bgcolor="#f0f8ff">星期二</th>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 2  && #e.ya == 1'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 2  && #e.ya == 2'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="4">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 2  && #e.ya == 3'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="3">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 2  && #e.ya == 4'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
  </tr>
  <tr>
    <th scope="row" bgcolor="#f0f8ff">星期三</th>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 3  && #e.ya == 1'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 3  && #e.ya == 2'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="4">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 3  && #e.ya == 3'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="3">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 3  && #e.ya == 4'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
  </tr>
  <tr>
    <th scope="row" bgcolor="#f0f8ff">星期四</th>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 4  && #e.ya == 1'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 4  && #e.ya == 2'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="4">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 4  && #e.ya == 3'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="3">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 4  && #e.ya == 4'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
  </tr>
  <tr>
    <th scope="row" bgcolor="#f0f8ff">星期五</th>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 5  && #e.ya == 1'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="2">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 5  && #e.ya == 2'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="4">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 5  && #e.ya == 3'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
    <td colspan="3">
    	<s:iterator value="det" var="e">
	    	<s:if test='#e.xa == 5  && #e.ya == 4'>
	    		<s:property value="#e.courseName"/><br/>
	    		(<s:property value="#e.weekBegin"/>,
	    		<s:property value="#e.weekEnd"/>)&nbsp;
	    		<s:property value="#e.section"/>节<br/>
	    		<s:property value="#e.teacherName"/><br/>
	    		<s:property value="#e.location"/>
	    	</s:if>
	    </s:iterator>
	</td>
  </tr>
</table>
</div>
	<div class="tab-content">
        <object class="tab-pane fade in active pic" id="home" data="tx.png"></object>
        <object class="tab-pane fade size" id="timetable" data="timetable.html"></object>
        <object class="tab-pane fade size" id="q" data="query.html"></object>
        <object class="tab-pane fade size" id="add" data="add.html"></object>
        <object class="tab-pane fade size" id="r" data="revise.html"></object>
        <object class="tab-pane fade size" id="re" data="register.html"></object>
        <object class="tab-pane fade size" id="l" data="login.html"></object>
    </div>
 </body>
</html>
