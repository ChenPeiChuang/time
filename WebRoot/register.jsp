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
    
    <title>欢迎注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		.register_form{margin-top:10%;width:40%;background:url(200,200,200,0.1);padding:2px;border-radius:50%;box-shadow:2px 2px 2px #0F0;border:1px dashed disque;}
		.btn{border:1px dashed #ffe4c4; background:#FFF;color:#F00;}input{border-radius:2px;}.btn:hover{color:#0F0;}body{background-color:#ffe4c4;color:#F00;}
		input{border-radius:10px;}
    </style>
	<script type="text/javascript" src="js/register.js"></script>
  </head>
  
  <body>
<script type="text/javascript" src="js/canvas-nest.js"></script>
<div class="c" align="center">
    <form action="user_register" method="post" class="register_form">
    <h3 align="center"><em>注册账号</em></h3>
    <s:actionerror/>
        <table align="center">
            <tr >
                <td>用户名：</td><td><input type="text" id="name" onblur="checkname()" name="userName"/></td>
                <td><span id="mes" class="" ></span></td>
            </tr>

            <tr>
                <td>密码：</td>
                <td align="center"><input type="text" id="pwd"  name="userPassword" onblur="checkpwd()" ></td>
                <td><span id="mes4" class=""></span></td>
            </tr>

            <tr>
                <td>确认密码：</td>
                <td align="center"><input type="text" id="repwd" name="email" onblur="checkrepwd()" ></td>
                <td><span id="mes5" class=""></span></td>
           </tr>

            <tr>
                <td>电子邮箱：</td>
                <td align="center"><input type="text" id="email"  value=""  onblur="checkemail()" ></td>
                <td><span id="mes6" class=""></span></td>
            </tr>
			<s:hidden name="power" value="2"/>
			<s:hidden name="status" value="1"/>
            <tr>
                <td></td>
                <td>
                    <table>
                        <tr>
                            <td align="center">
                                <input type="submit" value="注册" class="btn" onclick="return check()"/>
                            </td>
                            <td align="left"><input type="reset" value="重置" class="btn"/></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</div>

   

</body>
</html>
