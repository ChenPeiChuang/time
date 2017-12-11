<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校园风貌</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/campus.css">


  </head>
  
  <body>
<div class="head"><h2 align="center">校园风貌</h2></div>
<div class="main"><br/>
  <div id="demo" style="overflow:hidden;height:350px; width:700px; margin:0 auto;">	
   <div id="demo1">
   	<table cellspacing=1 cellpadding=0 width="80%" border=0>
       <tbody>
         <tr><td style="height:160px;"><img src="img/a.jpg" width="700" height="500" /></td></tr>
         <tr><td style="height:160px;"><img src="img/b.jpg" width="700" height="500" /></td></tr>
         <tr><td style="height:160px;"><img src="img/c.jpg" width="700" height="500" /></td></tr>
         <tr><td style="height:160px;"><img src="img/d.jpg" width="700" height="500" /></td></tr>
         <tr><td style="height:160px;"><img src="img/e.jpg" width="700" height="500" /></td></tr> 
      </tbody>
    </table>  
   </div>
   <div id="demo2"></div>
  </div>
</div>
<div class="main"><br/>
  <div class="jj">
  	<div style="color:green;"><strong>校园一角</strong></div><hr/><br/>
    <figure class="test">
        <img src="img/library.jpg"/>
        <figcaption>
            <h2>广科图书馆</h2>
            <p>广科图书馆是专科最大的图书馆</p>
        </figcaption>
  	</figure>
    <figure class="test">
        <img src="img/tree.jpg"/>
        <figcaption>
            <h2>樱花树</h2>
            <p>每年的3、4月份这里都开满鲜花哦</p>
        </figcaption>
  	</figure>
 </div>
</div>
 <div class="footer">
 	------------------------------<em style="color:green;">END</em>------------------------------
 </div>
<script>
var speed=30;
	demo2.innerHTML=demo1.innerHTML;
	function Marquee(){
		if(demo2.offsetTop-demo.scrollTop<=0)
			demo.scrollTop-=demo1.offsetHeight;
		else{
			demo.scrollTop++;
	}
	}
	var MyMar=setInterval(Marquee,speed);
	demo.onmouseover=function(){
		clearInterval(MyMar);
	};
	demo.onmouseout=function(){
		MyMar=setInterval(Marquee,speed);
	};
</script>
</body>
</html>
