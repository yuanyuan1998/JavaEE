<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html>
<!-- saved from url=(0041)http://www.dingdangao.net.cn/Product/Buy2 -->
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
    <script src="<%=path %>/js/hm.js.下载"></script>
    <script src="<%=path %>/js/hm.js(1).下载"></script>
    <script src="<%=path %>/js/jquery-1.11.1.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery-ui.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/bootstrap.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/holder.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery.easing.1.3.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery.bxslider.min.js.下载" type="text/javascript"></script>   
    <script src="<%=path %>/js/region.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/product.js.下载"></script>
    <script>
        $(function () {
            //案例幻灯片
            $(".banner_box ul").bxSlider({
                auto: true,
                pager: false,
                speed: 800,
                easing: 'easeInSine',
                useCSS: false,
                pagerType: 'short',
                prevText: '<i class="icon-jtla"></i>',
                nextText: '<i class="icon-jtra"></i>',
                onSliderLoad: function (currentIndex, Index) {
                    $(".page_cur").text("0" + (currentIndex + 1));
                },
                onSlideNext: function ($slideElement, oldIndex, newIndex) {
                    $(".page_cur").text("0" + (newIndex + 1));
                }
            });
            //下拉菜单
            $(".menu li").hover(
                function () {
                    //$(this).addClass("cur").siblings().removeClass("cur");
                    $(this).find("dl").removeClass("hide_a").addClass("show_a");
                    $(this).siblings().find("dl").removeClass("show_a").addClass("hide_a");
                },
                function () {
                    $(this).find("dl").removeClass("show_a").addClass("hide_a");
                })
        });
    </script>
    <script>
        $(function () {
            //案例幻灯片
            $(".slider_box ul").bxSlider({
                auto: true,
                controls: false,
                pager: true,
                speed: 800,
                easing: 'easeInSine',
                useCSS: false
            });
            $("#tabs").tabs({
                event: "mouseover",
                activate: function (event, ui) {
                    $(".mu_tips h2").text($('.ui-tabs-active i').text());
                    //var typeid = $('.ui-tabs-active i').attr("typeid")
                    //var index = $('.ui-tabs-active').index()+1;
                    //abc(typeid,index);
                }
            });
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
        });
    </script>
    <script language="javascript">
        $(function () {
            if (window.PIE) {
                $('.mail em,.t_buy em,.login_box_right,.change_pop a:hover,.js_series span a:hover,btn_login,.pop_btn,.lbox, .lbox:hover,a.login_btn_succese,.buy,.buy_disabled,.buy_see,.joy_buy,.btn_fen_pl,.tm-m-photos-thumb .tm-current,a.back_home,a.submit_order,.of_input,.of_heka,.btn_sure,.me_style img,.mes_list li a i,a.mes_btn,.of_btn_yan,.btn_yuyue,a.btn_usual,.btn_tk_no,.btn_tk_yes,.meinfo_img img,.add_tou a,input.info_sure,a.mes_btn_disable,.dh_m a:hover,.time_over span,.t1,.fo_side dd.cur a,.news_list dt,.map_zi .map_zi_pp,.map_zi .map_zi_pp i,.gwc_goods .gwc_payo .avilable_yue a,.pin_tab li a,a.btn_known,b.bg_red').each(function () {
                    PIE.attach(this);
                });
            }
        });
        var UserId = "37740";
        var DomainPlaceId = "233";
    </script>
    <script language="javascript">
        $(function () {//显示用户名
        	if('${user.name }' != "" ){
        		$("a").remove("#b");
        		var html = "<a href=' "+'<%=path %>/order/unpaid'+" '>"+'${user.name}'+"</a>";
        		document.getElementById('a').innerHTML = html;
        	}
        });
    </script>
    <script type="text/javascript">
    </script>
<style>
    .sj_header {
        display: none;
    }</style>
<link href="<%=path %>/css/WdatePicker.css" rel="stylesheet" type="text/css"></head>
<body class="bg3">
    <header class="web_header">
        <div class="container colxs">
            <div class="pull-left logo"><a href=" "><img src="<%=path %>/images/alogo7_03.png" width="181" height="39"></a></div>
<form action=" " id="list_form_type" method="post">                <input type="hidden" name="typeid" id="typeid">
                <ul class="menu"> 
                    <li class=""> <a href="<%=path %>/frontIndex.jsp">首页</a></li>
                    <li class=""> <a href="<%=path %>/product/allProduct">所有产品</a></li>
                    <li class=""> <a href="<%=path %>/product/hot?hot=1">热门产品</a></li>
                    <li class="">
                        <a href="<%=path %>/product/type?typeid=1">蛋糕</a>
                        <dl class="hide_a">
                                <dd><a href="<%=path %>/product/type?typeid=1">蛋糕</a></dd>
                                <dd><a href="<%=path %>/product/LastedProduct">新品蛋糕</a></dd>
                        </dl>
                    </li>
                    <li class=""><a href="<%=path %>/product/type?typeid=2">下午茶</a></li>
                    <li class=""><a href="<%=path %>/product/type?typeid=3">伴手礼</a></li>
                </ul>
                <div class=" pull-right menu_right">
                    <span class="co_g3 menu_nav">电话：400-6340-500</span>
                    <a href="<%=path %>/cart/productCart?userId=${user.id}" class="co_g3 menu_nav">我的购物车</a>
                    <a href="<%=path %>/frontLogin.jsp" onclick="loginMember()" id="a"><i class="co_g3"></i>登录</a>
                    <a href="<%=path%>/frontLegist.jsp"  id="b">注册</a>
                </div>
</form>        </div>
    </header>
<script type="text/javascript" src="<%=path %>/js/WdatePicker.js.下载"></script>
<script type="text/javascript" src="<%=path %>/js/Utility.js.下载"></script>
<script type="text/javascript" src="<%=path %>/js/product.js(1).下载"></script>
<link href="<%=path %>/css/style2017.css" rel="stylesheet">
<!-- Buy1  -->
<div class="wd" id="buy1">
    <div class="step_box">
        <p>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;购物车</span>
        </p>
    </div>
    <div class="bt"><h2>确认商品信息</h2></div>
    <table class="tabl_list" width="0" border="0" cellspacing="0" cellpadding="0" id="tableBuy1">
        <tbody><tr>
        	<th><input type="checkbox" value="" id="box"  />全选</th>
            <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;商品</th>
            <th scope="col">单价</th>
            <th scope="col">数量</th>
            <th scope="col">小计</th>
            <th width="40" scope="col">操作</th>
        </tr>
        	<c:forEach items="${cartlist }" var="c" >
        		<tr indexpid="11" id="li1-11">
        			<td><input name="checkbox" type="checkbox" value="${c.productId },${c.size },${c.count }" /></td>
                    <td valign="middle"><a href="javascript:void(0);"><img width="48" height="48" src="${c.productImg }" class="d_pic"></a><span class="d_title">${c.productName }<br> <i>约${c.size }磅</i></span></td>
                    <td valign="middle" iscookie="0" show="188.00" mid="11" pid="1004">
                        ￥<span>${c.productPrice }.00</span>
                    </td>
                    <td valign="middle">
                    	<span class="dd_num2" style="display:none;">${c.count }</span>
                    	<span class="dd_num">
                    		<a href="<%=path %>/cart/jianCount?id=${c.productId}&size=${c.size}&count=${c.count}">-</a>
                    		<input name="" type="text" value="${c.count }">
                    		<a href="<%=path %>/cart/addCount?id=${c.productId}&size=${c.size}&count=1">+</a>
                    	</span>
                    </td>
                    <td class="xj" valign="middle">${c.productPrice*c.count}</td>
                    <td mid="11"><a href="<%=path %>/cart/deleteProduct?id=${c.productId}&size=${c.size}&count=${c.count}"  class="pro_del">删除</a></td>
                </tr>
        	</c:forEach>
    </tbody></table>
    <div class="pj_box">
        <div class="row">
        </div>
    </div>  
    <script type="text/javascript">
	    $(function (){  
	        //给总计赋值  
	        var sum = 0.0;  
	       $(".xj").each(function(){  
	            sum = sum + parseInt($(this).text());  
	        });   
	        //给总计赋值  
	        $("#total").text(sum);  
	    }); 
	    onload = function ()
	    {
		    var obox = document.getElementById ("box");
		    var ach = document.getElementsByName ("checkbox");	
		    //设置全选按钮选中的时候，遍历选中所有子复选框
		    obox.onclick = function ()
		    {
		    	for ( var i = 0; i < ach.length; i++)
			    {
			    	ach[i].checked = this.checked;
			    }
		    }
		    //子复选框有一个未选中时，去掉全选按钮的选中状态
		    for ( var i = 0; i < ach.length; i++)
		    {
			    ach[i].onclick = function ()
			    {
				    if ( !this.checked )
				    {
				    	obox.checked = false;
				    }
			    };
		    }
	    }
    	function deletes(){
    		var groupCheckbox=$("input[name='checkbox']");
    	    for(i=0;i<groupCheckbox.length;i++){
    	        if(groupCheckbox[i].checked){
    	            var val =groupCheckbox[i].value;
    	            var val1 = val.split(",");
    	    	    var id = val1[0];
    	    	    var size = val1[1];
    	    	    var count = val1[2];
    	    	    $.ajax({
    	                type : "post",
    	                url : "<%=path %>/cart/deleteProduct?id="+id,
    	                data:{size:size,count:count}
    	    		});
    	    	    location.reload();
    	        }
    	    }
    	};
    </script>
    <div class="d_dan_result" >
        <h2><span>共${countNum }件&nbsp&nbsp&nbsp</span>您需为订单支付：￥<span id="total"></span></h2>
        <div class="d_dan_order_btn" id="confirm">
        	<a class="back_home" href="javascript:void(0);" onclick="deletes()"><i></i>批量删除</a>
        	<a class="back_home" href="<%=path %>/frontIndex.jsp"><i></i>再逛逛</a>
        	<a class="submit_order" href="<%=path %>/address/order">确认</a></div>
    </div>
</div>
<script type="text/javascript">
</script>
<!--侧边栏-->
<footer class="web_footer">
    <div class="container">
        <div class="ewm">
            <img src="<%=path %>/images/erweima_09.png" width="80" height="80">
            <img src="<%=path %>/images/erweima_11.png" width="80" height="80">
        </div>
        <div class="btn_boxa">
            <span><i class="app_size">APP</i></span>
        </div>
        <div class="footer_bot">
            全国服务热线：400-6340-500 &nbsp;&nbsp;&nbsp;&nbsp;      工作时间：08:30---18:00 &nbsp;&nbsp;&nbsp;&nbsp;            官方微博：http://weibo.com/yudiefang  &nbsp;&nbsp;&nbsp;&nbsp;           网址：http://www.dingdangao.net.cn    &nbsp;&nbsp;&nbsp;&nbsp;         地址：深圳市光明新区新羌社区新陂头村工业区6栋;<br>
            御蝶坊现已成为专业生产中西式糕点食品的大型企业。公司位于深圳市光明新区，拥有50000平方米全封闭的无尘生产车间。公司坚持质量乃企业生命线，生产出具有特色的高质量食品……
        </div>
    </div>
</footer>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?cec9b663abdae6c4f1a65c48de60d22a";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
<div style="position: absolute; z-index: 19700; top: -1970px; left: -1970px; display: none;"><iframe style="width: 186px; height: 198px;" src="<%=path %>/images/My97DatePicker.html" frameborder="0" border="0" scrolling="no"></iframe></div></body></html>