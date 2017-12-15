<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>
<!-- saved from url=(0089)http://www.dingdangao.net.cn/Login/Index?link=http://www.dingdangao.net.cn/Login/Register -->
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
        (function (a, b) { if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))) if (window.location.href.indexOf("Booking/Index") == -1) { window.location = b } })(navigator.userAgent || navigator.vendor || window.opera, 'http://wap.dingdangao.net.cn');

        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?94b71fd50a886f061d81010764effbd0";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <script type="text/javascript">
        var UserId = "";
        var UserName = "";
        var UserPhone = "";
        var curDateHour = "9";
        var curDateStr = "2017-11-23";
        var curDateAdd = "2017-11-24";
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
        var DomainPlaceId = "";
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
    }</style>
</head>
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
                    <a href="<%=path%>/frontRegist.jsp" id="b">注册</a>
                </div>
</form>        </div>
    </header>    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户登录</title>   
    <link href="<%=path %>/css/login.css" rel="stylesheet" rev="stylesheet" type="text/css">
    <script>
        $(function () {
            //案例幻灯片
            $("#name").focus().select();
            $(".slider_box ul").bxSlider({
                auto: true,
                controls: false,
                pager: true,
                easing: 'easeOutSine',
                useCSS: false
            });
            //弹出层
            $(".box").dialog({
                modal: true,
                width: function () {
                    $(".ui-dialog").width();
                },
                autoOpen: false,
                show: {
                    effect: "clip",
                    duration: 500
                },
                hide: {
                    effect: "clip",
                    duration: 500
                },
                position: {
                    my: "left top+20",
                    of: "header",
                    collision: "fit"
                }
            });
            $(".city").click(function () {
                if ($(this).hasClass("off")) {
                    $(".box").dialog("close");
                    $(this).removeClass("off");

                } else {
                    $(".box").dialog("open");
                    $(this).addClass("off");
                    $("header").css("zIndex", "999");
                };
            });
        });
    </script>
    <div class="container login_mid">
        <input type="hidden" id="link" value="http://www.dingdangao.net.cn/Login/Register">
        <div class="pull-left" style="background: url(<%=path %>/images/banner1_03.jpg) center center no-repeat; background-size: 100%; width: 50%;"></div>
        <div class="pull-right" style="width:50%;">
            <div class="login_box" >             
                <h1>登录</h1>
                <div style="margin-top:20px;">
                    <form action="<%=path %>/user/login" method="post">
                    	用户名：<input class="text" name="name" id="name" type="text">
                        <%
								Object errorinfo = request.getAttribute("errorinfo1");
								if(errorinfo != null){
									out.print("<font color='red'>"+errorinfo+"</font>");
								}
						%><br>
                        密&nbsp&nbsp码：<input class="text" name="password" id="password" type="password">
                        <%
								Object errorinfo1 = request.getAttribute("errorinfo2");
								if(errorinfo1 != null){
									out.print("<font color='red'>"+errorinfo1+"</font>");
								}
						%>
                    <label class="tips_z" id="msg"></label>
                    <div>
                        <div class="pull-left"><label><input name="" type="checkbox" value="两周内自动登录" id="saveCookie">记住密码</label></div>
                        <div class="clearfix"></div>
                    </div>
                    <input type="submit"  value="登录"/>
                   </form> 
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
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