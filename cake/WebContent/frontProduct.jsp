<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>
<!-- saved from url=(0043)http://www.dingdangao.net.cn/Product/Show/9 -->
<html xmlns:wb="http://open.weibo.com/wb">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
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
    <script src="<%=path %>/js/hm.js.下载"></script><script src="<%=path %>/js/hm.js(1).下载"></script>
    <script src="<%=path %>/js/jquery-1.11.1.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery-ui.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/bootstrap.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/holder.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery.easing.1.3.min.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/jquery.bxslider.min.js.下载" type="text/javascript"></script>    
    <script src="<%=path %>/js/region.js.下载" type="text/javascript"></script>
    <script src="<%=path %>/js/product.js.下载"></script>
    <script>
        (function (a, b) { 
        	if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))) if (window.location.href.indexOf("Booking/Index") == -1) { window.location = b } })(navigator.userAgent || navigator.vendor || window.opera, 'http://wap.dingdangao.net.cn');
        	var _hmt = _hmt || [];
        	(function () {
            	var hm = document.createElement("script");
            	hm.src = "//hm.baidu.com/hm.js?94b71fd50a886f061d81010764effbd0";
            	var s = document.getElementsByTagName("script")[0];
            	s.parentNode.insertBefore(hm, s);
        })();
    </script>
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
        var UserId = "";
        var DomainPlaceId = "233";
    </script>
    <script type="text/javascript">
	    $(function () {
	    	if('${user.name }' != "" ){
	    		$("a").remove("#b");
	    		var html = "<a href=' "+'<%=path %>/order/unpaid'+" '>"+'${user.name}'+"</a>";
	    		document.getElementById('a').innerHTML = html;
	    	}
	    });
    </script>
	<style>
	    .sj_header {
	        display: none;
	    }
	</style>
	<link href="<%=path %>/css/layer.css" type="text/css" rel="styleSheet" id="layermcss"></head>
	<body class="bg3">
    <header class="web_header">
        <div class="container colxs">
            <div class="pull-left logo">
            	<a href="<%=path %>/index.jsp">
            		<img src="<%=path %>/images/alogo7_03.png" width="181" height="39">
            	</a>
            </div>
			<form action="" id="list_form_type" method="post">                
				<input type="hidden" name="typeid" id="typeid">
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
	                <a href="<%=path %>/cart/productCart?userId=${user.id}"  id="countNum" class="co_g3 menu_nav">我的购物车</a>
	                <a href="<%=path %>/frontLogin.jsp" onclick="loginMember()" id="a"><i class="co_g3"></i>登录</a>
	                <a href="<%=path%>/frontRegist.jsp" id="b">注册</a>
	            </div>
			</form>        
		</div>
    </header>
    <script src="<%=path %>/js/Detail.js.下载"></script>   
    <script src="<%=path %>/js/product.js.下载"></script>
    <script src="<%=path %>/js/Test.js.下载"></script>
    <script src="<%=path %>/js/layer.js.下载"></script>
    <script>
        $(function () {
            //下拉菜单
            $(".menu li").hover(
                function () {
                    $(this).addClass("cur").siblings().removeClass("cur");
                    $(this).find("dl").removeClass("hide_a").addClass("show_a");
                    $(this).siblings().find("dl").removeClass("show_a").addClass("hide_a");
                },
                function () {
                    $(this).find("dl").removeClass("show_a").addClass("hide_a");
                })
    </script>
    <script type="text/javascript">
        $(function () {
            //窗口改变时，购物车弹窗定位
            window.onresize = function () {
                var divCover = document.getElementById("addcar");
                if (divCover != undefined) {
                    $("#addcar").css("left", $(".cont_word").eq(0).offset().left - 30);
                }
            };
        })
     	function clickAttr(el, sell, show) {
		    $(el).addClass("cur").siblings().removeClass("cur");
		    $("#sellPrice").text(setNumPoint(sell));
		    $("#sellPrice").attr("name",show);
		}
    </script>
    <script type="text/javascript">
    function addCar(){
    	var id = ${p.id};
    	var count = $('#count').val();
    	var size =$('#sellPrice').attr("name");
		$.ajax({
			async:false,
            type : "post",
            datatype:"json",
            url : "<%=path %>/cart/addProduct?id="+id,
            data:{count:count,size:size},
            success : function(date) {
            	if (date == 1) {
            		 var context = "您暂未登陆，是否登陆？";
	       		     var divCover = document.createElement("div");
	       		     divCover.setAttribute("id", "divCover");
	       		     divCover.setAttribute("class", "popup_box p_box4");
	       		     divCover.setAttribute("style", "z-index: 2002");
	       		     divCover.innerHTML = '<div class="pop_cont"><div class="p_box2_tips" style="height:65px;margin-top:35px;"><i class="pop_cg"></i>' + context + '</div></div><div class="pop_btn"><div style="margin-top: 10px;"><a class="back_home" href="javascript:" onclick="closeLoginPanel()"><i></i>否</a><a class="submit_order" href="<%=path%>/frontLogin.jsp"><i></i>是</a></div></div>';
	       		     $("body").append($(divCover));
	       		     popup($(".p_box4"));
     	        }else{
     	        	location.reload();
     	        }
            }
        });
    };
    function buy(){
    	var id = ${p.id};
    	var count = $('#count').val();
    	var size =$('#sellPrice').attr("name");
		$.ajax({
			async:false,
            type : "post",
            url : "<%=path %>/cart/buyProduct?id="+id,
            data:{count:count,size:size},
            success : function(date) {
            	if (date == 1) {
            		 var context = "您暂未登陆，是否登陆？";
	       		     var divCover = document.createElement("div");
	       		     divCover.setAttribute("id", "divCover");
	       		     divCover.setAttribute("class", "popup_box p_box4");
	       		     divCover.setAttribute("style", "z-index: 2002");
	       		     divCover.innerHTML = '<div class="pop_cont"><div class="p_box2_tips" style="height:65px;margin-top:35px;"><i class="pop_cg"></i>' + context + '</div></div><div class="pop_btn"><div style="margin-top: 10px;"><a class="back_home" href="javascript:" onclick="closeLoginPanel()"><i></i>否</a><a class="submit_order" href="<%=path%>/frontLogin.jsp"><i></i>是</a></div></div>';
	       		     $("body").append($(divCover));
	       		     popup($(".p_box4"));
     	        }else if(date == 2){
     	        	window.location.href="<%=path %>/cart/productCart";
     	        }
            }
        });
    };
    </script>
<div class="container">
    <div class="pull-left slider_box">
        <div class="bx-wrapper" style="max-width: 100%;">
        	<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 454px;">
        		<ul class="bxslider" style="width: 645%; position: relative; left: -658.276px;">
        			<li style="float: left; list-style: none; position: relative; width: 637px;" class="bx-clone"><img src="${p.img1 }"></li>
                	<li style="float: left; list-style: none; position: relative; width: 637px;"><img src="${p.img2 }"></li>
                	<li style="float: left; list-style: none; position: relative; width: 637px;"><img src="${p.img3 }""></li>
                	<li style="float: left; list-style: none; position: relative; width: 637px;"><img src="${p.img1 }""></li>
        			<li style="float: left; list-style: none; position: relative; width: 637px;" class="bx-clone"><img src="${p.img2 }""></li>
        		</ul>
        	</div>
        	<div class="bx-controls bx-has-pager">
        		<div class="bx-pager bx-default-pager">
        			<div class="bx-pager-item">
        				<a href="<%=path %>/product/Product?id=${p.id }" data-slide-index="0" class="bx-pager-link">1</a>
        			</div>
        			<div class="bx-pager-item">
        				<a href="<%=path %>/product/Product?id=${p.id }" data-slide-index="1" class="bx-pager-link active">2</a>
        			</div>
        			<div class="bx-pager-item">
        				<a href="<%=path %>/product/Product?id=${p.id }" data-slide-index="2" class="bx-pager-link">3</a>
        			</div>
        		</div>
        	</div>
        </div>
        <div id="bx-pager">
                    <a data-slide-index="0" href="<%=path %>/product/Product?id=${p.id }"><img src="${p.img1 }"></a>
                    <a data-slide-index="0" href="<%=path %>/product/Product?id=${p.id }"><img src="${p.img2 }"></a>
                    <a data-slide-index="0" href="<%=path %>/product/Product?id=${p.id }"><img src="${p.img3 }"></a>
        </div>
    </div>
    <div class="pull-right slider_you cont_word">
        <h1 class="tt co_g2">
            <small class="co_g2">${p.name }</small>
		</h1>
        <p class="desc">${p.description }</p>
        <span class="pricea price_yuan"><i>￥</i> <b id="sellPrice" name="2">${p.price }.00</b><i class="icon_cu"><img src="<%=path %>/images/tag_new_38.png" width="39" height="16"></i></span>
        <div class="gga">
            <div class="gga_tt guige_list">
            	<c:forEach items="${p.size }" var="sl">
            		<span name="size" class="cur" style="cursor:pointer" data-name="" pid="2003" data-mids="9" onclick="clickAttr(this,'${sl.price}','${sl.size }');">${sl.size }磅</span>
            	</c:forEach>
                <div class="gga_more" id="ProductAttrMark"></div>
            </div>
        </div>
        <div class="gwa ">
            <dl class="xq_guige">
                <dt class="pull-left">数量：</dt>
                <dd class="pull-left pro_ji_num "><a class="add" href="javascript:">-</a><input id="count"name="count" type="text" value="1"><a class="jian" href="javascript:">+</a></dd>
                <div class="spacer"></div>
            </dl>
            <div class="btn_boxa_0 ">
                <a href="javascript:" onclick="addCar()">加入购物车</a>
                <a href="javascript:" onclick="buy()">立即购买</a>
            </div>
        </div>  
    </div>
</div>
<div class="container">
    <div class="bda" style="margin-top:30px;">
        <p></p>
        <p><img src="${p.img4 }" style="float:none;" title="无限魅力2_01.jpg"></p>
        <p><img src="${p.img5 }" style="float:none;" title="无限魅力2_02.jpg"></p>
        <p><img src="${p.img6 }" style="float:none;" title="无限魅力2_03.jpg"></p>
        <p><img src="<%=path %>/images/pe_1710241703196417294.jpg" style="float:none;" title="无限魅力2_04.jpg"></p>
        <p><img src="<%=path %>/images/pe_1710241703197540384.jpg" style="float:none;" title="无限魅力2_05.jpg"></p>
        <p><img src="<%=path %>/images/pe_1710241703198770900.jpg" style="float:none;" title="无限魅力2_06.jpg"></p>
        <p><img src="<%=path %>/images/pe_1710241703199649840.jpg" style="float:none;" title="无限魅力2_07.jpg"></p><p><br></p><p></p>
        <div class="tipsa_detail">
            <h4 class="co_g3">爱心提示</h4>
            <p>
                </p><ol class=" list-paddingleft-2" style="width: 1086.81px; white-space: normal;"><li><p><span style="font-size: 19px; font-family: 宋体;">可免费提供写祝福语（内容限八个字）</span></p></li><li><p><span style="font-size: 19px; font-family: 宋体;">宝安区、南山区门店</span><span style="font-size: 19px;">5K M</span><span style="font-size: 19px; font-family: 宋体;">范围内可免费配送上门（石岩店除外）；</span></p></li><li><p><span style="font-size: 19px; font-family: 宋体;">支持线下所有专卖店到店自提</span></p></li><li><p><span style="font-size: 19px; font-family: 宋体;">配送或自提时间：正常下单后顺延</span><span style="font-size: 19px;">5</span><span style="font-size: 19px; font-family: 宋体;">个小时配送或专卖店提货</span></p></li><li><p><span style="font-size: 19px; font-family: 宋体;"></span><span style="font-size: 19px; font-family: 宋体;">客服工作时间：</span><span style="font-size: 19px;">9:00-18:00</span><span style="font-size: 19px; font-family: 宋体;">，当天</span><span style="font-size: 19px;">18</span><span style="font-size: 19px; font-family: 宋体;">：</span><span style="font-size: 19px;">00</span><span style="font-size: 19px; font-family: 宋体;">后下单，次日配送。次日最早自提</span><span style="font-size: 19px;">\</span><span style="font-size: 19px; font-family: 宋体;">配送时间为</span><span style="font-size: 19px;">12:30</span></p></li></ol><p style="white-space: normal;"><span style="font-size: 19px;">&nbsp; &nbsp;</span><span style="font-size: 19px; font-family: 宋体;">咨询电话：</span><span style="font-size: 19px;">4006-340-500&nbsp;&nbsp;0755-26973030</span></p><p style="white-space: normal;"><span style="font-size: 19px;">6.&nbsp;</span><span style="font-size: 19px; font-family: 宋体;">食用时间与收货时间，最好放置冷藏间隔</span><span style="font-size: 19px;">30</span><span style="font-size: 19px; font-family: 宋体;">分钟后食用</span></p><p><span style="font-size: 19px; font-family: 宋体;"><br></span></p><p><br></p>
                
            <p></p>
        </div>
        <div>
            <hr>
            <h4 class="co_g3">产品推荐</h4>
            <div class="row">
                    <a class="col-lg-3" href="http://www.dingdangao.net.cn/Product/Show/9">
                        <div class="list_tui">
                            <div class="tui_tt">
                                <h5>无限魅力</h5>
                                <span>￥128.00</span>
                            </div>
                            <div class="cover"></div>
                            <img src="<%=path %>/images/ps_1709261426373757779.jpg" width="282" height="201">
                        </div>
                    </a>
                    <a class="col-lg-3" href="http://www.dingdangao.net.cn/Product/Show/13">
                        <div class="list_tui">
                            <div class="tui_tt">
                                <h5>榴莲相思</h5>
                                <span>￥138.00</span>
                            </div>
                            <div class="cover"></div>
                            <img src="<%=path %>/images/ps_1709261437182368528.jpg" width="282" height="201">
                        </div>
                    </a>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
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


</body></html>