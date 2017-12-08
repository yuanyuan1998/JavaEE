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
    <header class="sj_header">
        <div class="row">
            <div class="col-xs-3"><span class="logo_sj"><a href="http://www.dingdangao.net.cn/Product/Buy2#"><img src="<%=path %>/images/alogo7_03.png"></a></span></div>
            <div class="col-xs-9 text-right">
                <a class="yuyue_sj pull-right" href="http://www.dingdangao.net.cn/Product/Buy2#">在线预约</a>
            </div>
        </div>
    </header>
    <header class="web_header">
        <div class="container colxs">
            <div class="pull-left logo"><a href="http://www.dingdangao.net.cn/Index/Index"><img src="<%=path %>/images/alogo7_03.png" width="181" height="39"></a></div>
<form action="http://www.dingdangao.net.cn/Product/List1" id="list_form_type" method="post">                <input type="hidden" name="typeid" id="typeid">
                <ul class="menu"> 
                    <li class=""> <a href="<%=path %>/index.jsp">首页</a></li>
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
                    <a href="<%=path %>/login.jsp" onclick="loginMember()" id="a"><i class="co_g3"></i>登录</a>
                    <a href="<%=path%>/regist.jsp"  id="b">注册</a>
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
        	<th><input type="checkbox" name="checkboxs"  value="" id="box"  />全选</th>
            <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;商品</th>
            <th scope="col">单价</th>
            <th scope="col">数量</th>
            <th scope="col">小计</th>
        </tr>
        	<c:forEach items="${cartlist }" var="c" >
        		<tr indexpid="11" id="li1-11">
        			<td><input name="checkbox" type="checkbox" value="${c.productId },${c.size },${c.count },${c.productPrice}" /></td>
                    <td valign="middle"><a href="javascript:void(0);"><img width="48" height="48" src="${c.productImg }" class="d_pic"></a><span class="d_title">${c.productName }<br> <i>约${c.size }磅</i></span></td>
                    <td valign="middle" iscookie="0" show="188.00" mid="11" pid="1004">
                        ￥<span>${c.productPrice }.00</span>
                    </td>
                    <td valign="middle">
                    	<span class="dd_num2" style="display:none;">${c.count }</span>
                    	<span class="dd_num">
                    		<input name="" type="text" value="${c.count }">
                    	</span>
                    </td>
                    <td class="xj" valign="middle">${c.productPrice*c.count}</td>
                </tr>
        	</c:forEach>
    </tbody></table>
    <div class="pj_box">
        <div class="row">
        </div>
    </div>  
    <script type="text/javascript">
    $("input[name='checkbox']").click(function () {  
	    	//给总计赋值  
	        var sumprice = 0.0;
	    	var sumcount = 0;
	    	var price = 0.0;
	    	var count = 0;
	    	var groupCheckbox=$("input[name='checkbox']");
		    for(i=0;i<groupCheckbox.length;i++){
		        if(groupCheckbox[i].checked){
		            var val =groupCheckbox[i].value;
		            var val1 = val.split(",");
		            var count = val1[2];
		    	    var price = val1[3];
		    	    sumprice = sumprice + count*price;
		    	    sumcount = parseInt(sumcount) + parseInt(count);
		        }
		    } 
	        $("#total").text(sumprice);  
	        $("#countnum").text(sumcount); 
	    }); 
    onload = function ()
    {
	    var obox = document.getElementById ("box");
	    var ach = document.getElementsByName ("checkbox");	
	    //设置全选按钮选中的时候，遍历选中所有子复选框
	    obox.onclick = function ()
	    {
	    	if(this.checked == true){
	    		var sumprice = 0.0;
		    	var sumcount = 0;
		    	var price = 0.0;
		    	var count = 0;
		    	for ( var i = 0; i < ach.length; i++)
			    {
			    	ach[i].checked = this.checked;
			    	var val =ach[i].value;
		            var val1 = val.split(",");
		            var count = val1[2];
		    	    var price = val1[3];
		    	    sumprice = sumprice + count*price;
		    	    sumcount = parseInt(sumcount) + parseInt(count);
			    }
		    	 $("#total").text(sumprice);  
		         $("#countnum").text(sumcount);
	    	}else{
	    		for ( var i = 0; i < ach.length; i++)
			    {
			    	ach[i].checked = this.checked;
			    }
		    	 $("#total").text(0);  
		         $("#countnum").text(0);
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
	    function addAddress(){
			$("#Address").toggle();
		};
    </script>
    <div class="d_dan_result" >
        <h2>共<span id="countnum">0</span>件&nbsp&nbsp&nbsp您需为订单支付：￥<span id="total">0</span></h2>
</div>
<script type="text/javascript">
</script>
<div class="wd" id="buy2">
    <div id="DeliveryDiv">
        <div class="bt" ><h2>收货地址</h2></div>
        <div>
        	<p></p>
	        	请选择收货地址：
	        	<select id="dizhi">
	        		<c:forEach items="${la }" var="a">
	        			<option value="${a.id }"> ${a.name } ${a.phoneNum } ${a.address}</option>
	        		</c:forEach>
	        	</select>
        </div>
        <div class="shsm" >
            <div style="margin-top: 20px;" id="userAddress"><div class="spacer"></div></div>
            <div>
                <a class="icon_area_add" href="javascript:void(0);" onclick="addAddress()">+新增地址</a>
                <input type="hidden" id="addIsDefault" value="0">
                <div class="join_cont" >
                    <div class="fanke" style="display:none" id="Address">
                    	<form action="<%=path %>/address/orderAdd" method="post">
                    		<p></p>
                    		下单人姓名：<input type="text" name="name" ><br>
                    		<p></p>
	                        下单人手机：<input type="text" name="phoneNum" ><br>
	                        <p></p>
	                        地&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp址：<input type="text" name="address" ><br>
	                        <input type="submit" value="确定" /> 
                    	</form>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </div>
    <br>
    <div id="deliveryTime">
               <div class="bt"><h2>温馨提示</h2></div>
               <br>
	                提前2小时订购<br>
	                当天19:00前订购，可当天送货，送货时间顺延2小时当天19:00-21:00订购，最早送货时间为第二天10:00<br>
	                21:00之后订购，最早送货时间为第二天11:00<br>
	                重大节日（如情人节）需要至少提前一天订购
    			</div>
    			<br>
    	<div>
        	<div class="bt"><h2>支付方式</h2></div>
        	<div class="of_time_select">
            <dl class="of_zhifu">
                <dd>
                    <label><input class="raduo" name="r3" type="radio" value="" checked="checked"><span class="of_zi">支付宝</span></label>
                    <label><input class="raduo" name="r3" type="radio" value=""><span class="of_zi">微信支付</span></label>
                </dd>
            </dl>
        </div>
    </div>
    <div class="bt"><h2>备注</h2></div>
    <div class="of_time_select">
        <textarea placeholder="请输入备注信息" name="" cols="" rows="" id="RemarkSys"></textarea>
    </div>
    <div class="btn_box">
        <a class="submit_order" id="submit_order" onclick="buy2()" href="javascript:">提交订单</a>
    </div>
</div>
<script type="text/javascript">
	function buy2(){
		var groupCheckbox=$("input[name='checkbox']");
		var a1 = new Array();
		var b1 = new Array();
		var c1 = new Array();
		var a2 = new Array();
		var b2 = new Array();
		var c2 = new Array();
	    for(i=0;i<groupCheckbox.length;i++){
	        if(groupCheckbox[i].checked){
	            var val =groupCheckbox[i].value;
	            var val1 = val.split(",");
	    	    var id = val1[0];
	    	    var size = val1[1];
	    	    var count = val1[2];
	    	    a1[i] = id;
	    	    b1[i] = size;
	    	    c1[i] = count;
	        }
	    }
	    for(i=0;i<groupCheckbox.length;i++){
	    	if(!groupCheckbox[i].checked){
	        	var val =groupCheckbox[i].value;
	            var val1 = val.split(",");
	    	    var id = val1[0];
	    	    var size = val1[1];
	    	    var count = val1[2];
	    	    a2[i] = id;
	    	    b2[i] = size;
	    	    c2[i] = count;
	        }
	    }
	    var productId1 = a1.join("-");
	    var size1 = b1.join("-");
	    var count1 = c1.join("-");
	    var productId2 = a2.join("-");
	    var size2 = b2.join("-");
	    var count2 = c2.join("-");
	    var options=$("#dizhi option:selected");  //获取选中的项
	    var addressId = options.val();
	    $.ajax({
	    	async:false,
            type : "post",
            datatype:"json",
            url : "<%=path %>/order/save?productId1="+productId1,
            data:{productId2:productId2,count1:count1,size1:size1,count2:count2,size2:size2,addressId:addressId},
            success : function() {
            		 var context = "购买成功";
	       		     var divCover = document.createElement("div");
	       		     divCover.setAttribute("id", "divCover");
	       		     divCover.setAttribute("class", "popup_box p_box4");
	       		     divCover.setAttribute("style", "z-index: 2002");
	       		     divCover.innerHTML = '<div class="pop_cont"><div class="p_box2_tips" style="height:65px;margin-top:35px;"><i class="pop_cg"></i>' + context + '</div></div><div class="pop_btn"><div style="margin-top: 10px;"><a class="back_home" href="<%=path%>/index.jsp" onclick="closeLoginPanel()"><i></i>关闭</a></div></div>';
	       		     $("body").append($(divCover));
	       		     popup($(".p_box4"));
     	        }
        });
	};
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