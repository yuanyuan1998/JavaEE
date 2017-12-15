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
<script type="text/javascript">
	function add(){
		$("#addProduct").toggle();
	};
	function deleteProduct(){
		$("#deleteProduct").toggle();
	};
	function revice(){
		$("#reviceProduct").toggle();
	};
	function addType(){
		$("#type").toggle();
	};
	function addProduct(){
		var name = $("input[name='name']").val(); 
		var description = $("input[name='description']").val();
		var date = $("input[name='date']").val();
		var hot = $("input[name='hot']").val();
		var price = $("input[name='price']").val();
		var options=$("#typeId option:selected");  //获取选中的项
	    var typeId = options.val();
	    $.ajax({
	    	type : "post",
	    	datatype:"json",
			url : "<%=path %>/product/backAddProduct?name="+name,
	   		data:{description:description,date:date,hot:hot,typeId:typeId,price:price},
	   	 	success : function(){
	   	 		location.reload();
	        }
	 	});
	};
	function reviceProduct(){
		var name1 = $("input[name='name1']").val(); 
		var description1 = $("input[name='description1']").val();
		var date1 = $("input[name='date1']").val();
		var hot1 = $("input[name='hot1']").val();
		var options = $("#productId option:selected");  //获取选中的项
	    var productId = options.val();
	    var options1 = $("#sizeId option:selected");  //获取选中的项
	    var sizeId1 = options1.val();
	    var typeId1 = $('#typeId1 option:selected') .val();
	    $.ajax({
	    	type : "post",
	    	datatype:"json",
			url : "<%=path %>/product/backReviceProduct?name="+name1,
	   		data:{description:description1,date:date1,hot:hot1,id:productId,size:sizeId1,type:typeId1},
	   	 	success : function(){
	   	 		location.reload();
	        }
	 	});
	};
</script>
<div class="pull-left me_side">
    <div class="me_style">
    <div class="clearfix"></div>
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
            <a class="icon_area_add" href="javascript:void(0);" onclick="add()">添加商品</a><br>
            <div class="fanke" style="display:none" id="addProduct">
            <form action="<%=path %>/product/backAddProduct" method="post" >
           		产品名：<input type="text" name="name" /><br>
           		<p></p>
           		描述：<input type="text" name="description"/><br>
           		<p></p>
           		日期：<input type="text" name="date"  /><br>
           		<p></p>
           		是否热门：<input type="text" name="hot" /><br>
           		价格：<input type="text" name="price"><br>
           		<p></p>
           		类型：
           		<select id="typeId">
           			<c:forEach items="${tpl }" var="ptl">
           				<option value="${ptl.id }">${ptl.type }</option>
           			</c:forEach>
           		</select>
           		<br>
           		<a href="javascript:void(0);" onclick="addProduct()">添加</a>
           </form>
           </div>
           <a class="icon_area_add" href="javascript:void(0);" onclick="deleteProduct()">删除尺寸</a><br>
            <div class="fanke" style="display:none" id="deleteProduct">
            <table class="me_tabl_list" width="0" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                	<th width="75px" align="center" scope="col">产品号</th>
                    <th width="150px" align="center" scope="col">产品名</th>
                    <th width="275px" align="center" scope="col">描述</th>
                    <th align="center" scope="col">尺寸</th>
                    <th width="75px" align="center" scope="col">类别</th>
                    <th width="75px" align="center" scope="col">热门</th>
                    <th align="center" scope="col">时间</th>
                    <th align="center" scope="col">操作</th>
                </tr>
            </tbody>
            <c:forEach items="${pl }" var="u" >
            	<c:forEach items="${u.size }" var="s">
	        		<tr indexpid="11" id="li1-11" >
	        			<td class="xj" valign="middle" align="center">${u.id}</td>
	                    <td class="xj" valign="middle" align="center">${u.name}</td>
	                    <td class="xj" valign="middle" align="center">${u.description}</td>
	                    <td class="xj" valign="middle" align="center">${s.size}</td>
	                    <td class="xj" valign="middle" align="center">${u.typeName}</td>
	                    <td class="xj" valign="middle" align="center">${u.hot}</td>
	                    <td class="xj" valign="middle" align="center">${u.date}</td>
	                    <td class="xj" valign="middle" align="center"><a href="<%=path %>/product/backDeleteProduct?productId=${u.id}&sizeId=${s.id}">删除</a></td>
	                </tr>
                </c:forEach>
        	</c:forEach>
            </table>
            </div>
           <a class="icon_area_add" href="javascript:void(0);" onclick="revice()">修改商品</a><br>
            <div class="fanke" style="display:none" id="reviceProduct">
            <p></p>
            <form action="<%=path %>/product/backReviceProduct" method="post" >
            	<select id="productId">
           			<c:forEach items="${pl }" var="u" >
           					<option value="${u.id }">${u.name }</option>
           			</c:forEach>
           		</select><br><p></p>
           		产品名：<input type="text" name="name1" /><br>
           		<p></p>
           		描述：<input type="text" name="description1"/><br>
           		<p></p>
           		日期：<input type="text" name="date1"  /><br>
           		<p></p>
           		是否热门：<input type="text" name="hot1" /><br>
           		<p></p>
           		尺寸：<select id="sizeId">
           			<option value=""></option>
           			<c:forEach items="${sl }"  var="sl">
           				<option value="${sl.id }">${sl.size } ${sl.price }</option>
           			</c:forEach>
           		</select>
           		<p></p>
           		类型：<select id="typeId1">
           			<c:forEach items="${tpl }" var="tpl">
           				<option value="${tpl.id }">${tpl.type }</option>
           			</c:forEach>
           		</select>
           		<p></p>
           		<a href="javascript:void(0);" onclick="reviceProduct()">确认修改</a>
           </form>
           </div>
           <a class="icon_area_add" href="javascript:void(0);" onclick="addType()">添加类别</a><br>
            <div class="fanke" style="display:none" id="type">
            <p></p>
            <table class="me_tabl_list" width="0" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                	<th width="75px" align="center" scope="col">类别号</th>
                    <th width="150px" align="center" scope="col">类别名</th>
                </tr>
            </tbody>
            	<c:forEach items="${tpl }" var="tpl" >
	        		<tr indexpid="11" id="li1-11" >
	        			<td class="xj" valign="middle" align="center">${tpl.id}</td>
	                    <td class="xj" valign="middle" align="center">${tpl.type}</td>
	                </tr>
        		</c:forEach>
            </table>
            <form action="<%=path %>/product/backAddType" method="post" >
           		类别名：<input type="text" name="type">
           		<input type="submit" value="确认添加">
           </form>
           </div>
           </div>
        </div>
        <div class="spacer"></div>
	</div>
<footer class="web_footer">
	<div class="footer_bot">御蝶坊后台管理系统</div>
</footer>
</body></html>