<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html>
<html xmlns:wb="http://open.weibo.com/wb"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><!-- 避免IE使用兼容模式 -->
    <title>御蝶坊</title>
    <link href="<%=path %>/css/animate.css" rel="stylesheet" rev="stylesheet" type="text/css">
    <link href="<%=path %>/css/font-awesome.min.css" rel="stylesheet" rev="stylesheet" type="text/css">
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=path %>/css/fonts.css" rel="stylesheet" rev="stylesheet" type="text/css">
    <link href="<%=path %>/css/style2.css" rel="stylesheet" rev="stylesheet" type="text/css">
    <link href="<%=path %>/css/style2016.css" rel="stylesheet">
    <link href="<%=path %>/css/style2017.css" rel="stylesheet" rev="stylesheet" type="text/css">
    <script src="<%=path %>/js/hm.js.下载"></script><script src="<%=path %>/js/hm.js(1).下载"></script><script src="<%=path %>/js/jquery-1.11.1.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery-ui.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/bootstrap.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/holder.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery.easing.1.3.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery.bxslider.min.js.下载" type="text/javascript"></script>    
    <script src="<%=path %>/js/region.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/product.js.下载"></script>
    <script>
        $(function () {
            //导航置顶
            $(window).scroll(function () {
                if ($(window).scrollTop() >= 554) {
                    $(".xq_dh").addClass("xq_dh_zd");
                    $(".btn_buy_dh").show();
                    // $(".xq_side").addClass("xq_side_zd");
                } else {
                    $(".xq_dh").removeClass("xq_dh_zd");
                    $(".btn_buy_dh").hide();
                    //$(".xq_side").removeClass("xq_side_zd");
                }
            });  
    </script>
<style>
    .sj_header {
        display: none;
    }
    #aa{                                   
		font-size:30px;           
	}
</style>
<link href="<%=path %>/css/layer.css" type="text/css" rel="styleSheet" id="layermcss"></head>
<body class="bg3">
    <header class="web_header">
        <div class="container colxs">
        	<div class="pull-left logo"><a href=""><img src="<%=path %>/images/alogo7_03.png" width="181" height="39"></a></div>
                <ul class="menu"> 
                    <li class=""> <a href="javascript:void(0);" id="aa">御蝶坊后台管理系统</a></li>
                </ul>
                <div class=" pull-right menu_right">
                    <span class="co_g3 menu_nav" style="font-size:20px;">${manager.name }</span>
                </div>
         </div>
    </header>
<div class="wd">
    <div class="container">
<link href="<%=path %>/css/font-awesome.min.css" rel="stylesheet" rev="stylesheet" type="text/css">
<link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<%=path %>/css/fonts.css" rel="stylesheet" rev="stylesheet" type="text/css">
<link href="<%=path %>/css/style2.css" rel="stylesheet" rev="stylesheet" type="text/css">
<link href="<%=path %>/css/style2017.css" rel="stylesheet" rev="stylesheet" type="text/css">
<script src="<%=path %>/js/product.js.下载"></script>

<link href="<%=path %>/css/sign.css" rel="stylesheet">
<script src="<%=path %>/js/calendar.js.下载"></script>
<script src="<%=path %>/js/layer.js.下载"></script>
<div class="pull-left me_side">
    <div class="me_style">
    <div class="clearfix"></div>
    	<h2 class="order_title">商品查询</h2>
    	<br>
    		<form action="<%=path %>/product/find" method="get"> 
            	<input type="text" name="name" style="width:125px;" />
            	<input type="submit"  value="查询"/><br>
          	</form>
          	<form action="<%=path %>/product/backtype">
          		<select name="id">
          			<option value="0">全部产品</option>
          			<c:forEach items="${lpt }" var="lpt">
          				<option value="${lpt.id }">${lpt.type }</option>
          			</c:forEach>
          		</select>
          		<input type="submit"  value="查询"/>
          	</form>
        <h2 class="order_title">用户管理</h2>
        <ul class="mes_list">
            <li class="cur"><a href="<%=path %>/user/all" onclick="unpaid()">用户管理</a></li>
       </ul>
        <h2 class="order_title">订单管理</h2>
        <ul class="mes_list">
            <li><a href="<%=path %>/order/all" >订单管理</a></li>
        </ul>
        <h2 class="order_title">商品管理</h2>
        <ul class="mes_list">
        	<li><a href="<%=path %>/product/all" >所有商品</a></li>
            <li><a href="<%=path %>/product/backProductManager" >商品管理</a></li>
        </ul>
    </div>
</div>
	<div>
		<div class="pull-right me_cont"  id="unpaid" >
            <h2 style="font-size:20px; font-weight:500; margin-top:0; border-bottom:#ddd solid 1px; line-height:40px;">
            	所有商品
            </h2>
            <table class="me_tabl_list" width="0" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                	<th width="75px" align="center" scope="col">产品号</th>
                    <th width="150px" align="center" scope="col">产品名</th>
                    <th width="275px" align="center" scope="col">描述</th>
                    <th width="150px"  align="center" scope="col">尺寸</th>
                    <th width="75px" align="center" scope="col">类别</th>
                    <th width="75px" align="center" scope="col">热门</th>
                    <th align="center" scope="col">时间</th>
                    <th align="center" scope="col">删除产品</th>
                </tr>
            </tbody>
            <c:forEach items="${pl }" var="u" >
        		<tr indexpid="11" id="li1-11" >
        			<td class="xj" valign="middle" align="center">${u.id}</td>
                    <td class="xj" valign="middle" align="center">${u.name}</td>
                    <td class="xj" valign="middle" align="center">${u.description}</td>
                    <td class="xj" valign="middle" align="center"> 
                    	<c:forEach items="${u.size }" var="s">${s.size}&nbsp&nbsp&nbsp</c:forEach>
                    </td>
                    <td class="xj" valign="middle" align="center">${u.typeName}</td>
                    <td class="xj" valign="middle" align="center">${u.hot}</td>
                    <td class="xj" valign="middle" align="center">${u.date}</td>
                    <td class="xj" valign="middle" align="center"><a href="<%=path %>/product/deleteProduct?id=${u.id}">删除</a></td>
                </tr>
        	</c:forEach>
            </table>
        </div>
        <div class="spacer"></div>
	</div>
<footer class="web_footer">
	<div class="footer_bot">御蝶坊后台管理系统</div>
</footer>
</body></html>