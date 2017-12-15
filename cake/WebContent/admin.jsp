<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>后台管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/reset.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/common.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/thems.css"/>
</head>
<body>
<!--登录-->
<div class="login">
	<div class="bg_img"><img src="<%=path %>/images/login_bg.jpg"/></div>
	<div class="logo">
    	御蝶坊后台管理系统
    </div>
    <div class="login_m">
    	<form action="<%=path %>/user/all" method="post">
	    	<ul>
	        	<li class="wz">用户名</li>
	            <li><input name="name" type="text"></li>
	            <li class="wz">密码</li>
	            <li><input name="password" type="password"></li>
	            <li class="l_btn">
	            	<input type="submit" style="background:#84C1FF" value="登录"/>
	            </li>
	        </ul>
        </form>
    </div>
</div>
<!--登录-->
</body>
</html>
