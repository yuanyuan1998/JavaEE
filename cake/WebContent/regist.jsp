<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>
<!-- saved from url=(0043)http://www.dingdangao.net.cn/Login/Register -->
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

            ////个人中心弹出菜单
            $(".menu_nav").hover(
                function () {
                    $(this).find("ul").show();
                },
                function () {
                    $(this).find("ul").hide();
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
            //边栏
            $(".aside").hover(
                function () {
                    $(this).find(".kf_box").show();
                },
                function () {
                    $(this).find(".kf_box").hide();
                })
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
            //城市选择
            $(".city_box .city").click(function () {
                $(".city_choice").toggle();

            })
            //城市cur
            $(".city_choice a").removeClass("cur");
            $(".city_choice a").each(function () {
                if ($(this).text() == $(".city").text()) {
                    $(this).addClass("cur");
                }
            })

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
	    		var html = "<a href=' "+'<%=path %>/index.jsp'+" '>"+'${user.name}'+"</a>";
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

    <header class="sj_header">
        <div class="row">
            <div class="col-xs-3"><span class="logo_sj"><a href="http://www.dingdangao.net.cn/Login/Register#"><img src="<%=path %>/images/alogo7_03.png"></a></span></div>
            <div class="col-xs-9 text-right">
                <a class="yuyue_sj pull-right" href="http://www.dingdangao.net.cn/Login/Register#">在线预约</a>
            </div>

        </div>

    </header>

    <header class="web_header">
        <div class="container colxs">


            <div class="pull-left logo"><a href="<%=path %>/index.jsp"><img src="<%=path %>/images/alogo7_03.png" width="181" height="39"></a></div>
<form action="http://www.dingdangao.net.cn/Product/List1" id="list_form_type" method="post">                <input type="hidden" name="typeid" id="typeid">
               <ul class="menu"> 
                    <li class=""> <a href="<%=path %>/index.jsp">首页</a></li>
                    <li class=""> <a href="<%=path %>/product/allProduct">所有产品</a></li>
                    <li class=""> <a href="http://www.dingdangao.net.cn/Product/List">热门产品</a></li>
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
                  	<a href="<%=path %>/cart.jsp" class="co_g3 menu_nav">${countNum } 件</a>
                    <a href="javascript:void(0)" onclick="loginMember()" id="a"><i class="co_g3"></i>登录</a>
                    <a href="<%=path%>/regist.jsp" id="b">注册</a>
                </div>
</form>        </div>
    </header>   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户注册-御蝶坊商城</title>   
    <link href="<%=path %>/images/login.css" rel="stylesheet" rev="stylesheet" type="text/css">
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
                    $(this).addClass("cur").siblings().removeClass("cur");
                    $(this).find("dl").removeClass("hide_a").addClass("show_a");
                    $(this).siblings().find("dl").removeClass("show_a").addClass("hide_a");
                },
                function () {
                    $(this).find("dl").removeClass("show_a").addClass("hide_a");
                })
            ////个人中心弹出菜单
            $(".menu_nav").hover(
                function () {
                    $(this).find("ul").show();
                },
                function () {
                    $(this).find("ul").hide();
                })
        });
    </script>
    <script type="text/javascript">
        $(function () {
            //案例幻灯片
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
            //右侧导航栏hover事件
            $(document).on("mouseover", ".btncb-1_on", function (event) {
                $(this).children("div.mouseover1121-box1").css("display", "block");
            });
            $(document).on("mouseover", ".btncb-2_on", function (event) {
                $(this).children("div").css("display", "block");
                $(this).children("div").animate({ right: "30px" }, 200);
            });
            $(document).on("mouseover", ".btncb-3_on", function (event) {
                $(this).children("div").css("display", "block");
                $(this).children("div").animate({ right: "30px" }, 200);
            });
            $(document).on("mouseover", ".btncb-4_on", function (event) {
                $(this).children("div").css("display", "block");
                $(this).children("div").animate({ right: "30px" }, 200);
            });
            $(document).on("mouseover", ".btncb-5_on", function (event) {
                $(this).children("div").css("display", "block");
                $(this).children("div").animate({ right: "30px" }, 200);
            });
            $(document).on("mouseover", ".btncb-6_on", function (event) {
                $(this).children("div").css("display", "block");
                $(this).children("div").animate({ right: "30px" }, 200);
            });

            $(document).on("mouseover", ".btncb-7_on", function (event) {
                $(this).children("div").css("display", "block");
                $(this).children("div").animate({ right: "30px" }, 200);

            });
            $(document).on("mouseover", ".btncb-8_on", function (event) {
                $(this).children("div").css("display", "block");

            });

            $(document).on("mouseout", ".btncb-1_off", function (event) {
                $(this).children("div.mouseover1121-box1").css("display", "none");
            });
            $(document).on("mouseout", ".btncb-2_off", function (event) {
                $(this).children("div").css("display", "none");
                $(this).children("div").css("right", "60px");
                $(this).children("div").stop();
            });
            $(document).on("mouseout", ".btncb-3_off", function (event) {
                $(this).children("div").css("display", "none");
                $(this).children("div").css("right", "60px");
                $(this).children("div").stop();
            });
            $(document).on("mouseout", ".btncb-4_off", function (event) {
                $(this).children("div").css("display", "none");
                $(this).children("div").css("right", "60px");
                $(this).children("div").stop();
            });
            $(document).on("mouseout", ".btncb-5_off", function (event) {
                $(this).children("div").css("display", "none");
                $(this).children("div").css("right", "60px");
                $(this).children("div").stop();
            });
            $(document).on("mouseout", ".btncb-6_off", function (event) {
                $(this).children("div").css("display", "none");
                $(this).children("div").css("right", "60px");
                $(this).children("div").stop();
            });
            $(document).on("mouseout", ".btncb-7_off", function (event) {
                $(this).children("div").css("display", "none");
                $(this).children("div").css("right", "60px");
                $(this).children("div").stop();
            });
            $(document).on("mouseout", ".btncb-8_off", function (event) {
                $(this).children("div").css("display", "none");
            });
            //返回顶部
            $("#backtofun").click(function () {
                $('body,html').animate({ scrollTop: 0 }, 1000);
                return false;
            });
            //头部下拉
            $(".la_box").hover(
                function () {
                    $(this).find(".title").addClass("cur").find("i").removeClass("fa-angle-down").addClass("fa-angle-up");
                    $(this).find(".la_box_tc").show();
                },
                function () {
                    $(this).find(".title").removeClass("cur").find("i").removeClass("fa-angle-up").addClass("fa-angle-down");
                    $(this).find(".la_box_tc").hide();
                }
                )
        })
        $(function () {
            $('.btn_login0').on('click', function () {
                var pageii = $.layer({
                    type: 1,
                    title: false,
                    area: ['auto', 'auto'],
                    border: [0], //去掉默认边框
                    shade: [0], //去掉遮罩
                    closeBtn: [0, false], //去掉默认关闭按钮
                    fadeIn: 300, //从左动画弹出
                    page: {
                        html: '<div class="popup_box p_box1"><h2 class="bt4">提示</h2><div class="pop_cont"><div class="center"><i class="pop_cg"></i>会员注册成功！请<a class="zi_red login_re" href="javascript:">重新登录</a></div></div><div class="pop_btn"><a class="login_btn_succese" href="javascript:">确定</a></div></div>'
                    }
                });

                //自设关闭
                $('.login_btn_succese').on('click', function () {
                    layer.close(pageii);
                });

            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            changeAuthCode();
            document.onkeydown = function (e) {
                var ev = document.all ? window.event : e;
                if (ev.keyCode == 13) {
                    var target = ev.target || ev.srcElement; // 获得事件源
                    if (target.tagName == "INPUT" && target.getAttribute("id") == "Captcha") {
                        register();
                    } else {
                        $(target).attr('id') != 'Captcha' ? $(target).parent().next().children("input").focus() : $(target).blur();
                    }
                }
            }
        });
        function changeAuthCode() {
            var num = new Date().getTime();
            var rand = Math.round(Math.random() * 10000);
            num = num + rand;
            if ($("#vdimgck")[0]) {
                $("#vdimgck")[0].src = "GetImgVerifyChars?tag=" + num;
            }
            return false;
        }
        var buy2Submit = 0;
        function register() {

            if (!sub_check())
                return false;
            //防止重复提交
            if (buy2Submit == 1) {
                return;
            }
            buy2Submit = 1;
            $(".btn_login0").text("提交注册信息...");

            var parim = new Object();
            var name = $("#U_Name").val().replace(/^\s+|\s+$/g, ""); //去首尾空格
            var pwd = $("#U_Password").val().replace(/^\s+|\s+$/g, ""); //去首尾空格
            var pwd2 = $("#C_Password").val().replace(/^\s+|\s+$/g, ""); //去首尾空格
            var phone = $("#Phone").val().replace(/^\s+|\s+$/g, ""); //去首尾空格
            var captcha = $("#Captcha").val().replace(/^\s+|\s+$/g, ""); //去首尾空格

            parim["Name"] = name;
            parim["PassWord"] = pwd;
            parim["PassWord2"] = pwd2;
            parim["Phone"] = phone;
            parim["Captcha"] = captcha;

            $.ajax({
                type: "POST",
                url: "regist.jsp",
                data: parim,
                dataType: "json",
                success: function (data) {
                    if (data.isOK) {
                        //location.href = "/Login";
                        AddPopupLogin("/");
                        $(".p_box2_tips").text("注册成功,是否登陆");
                        $('.back_home').live('click', function () {
                            location.href = location.href;
                        });
                        $('.back_home i').remove();
                        $(".submit_order i").remove()
                    } else {
                        AddPopupLogin("/");
                        $(".p_box2_tips").text("注册失败,是否重新注册");
                        $('.back_home').text("匿名浏览");
                        $('.back_home').live('click', function () {
                            location.href = "/";
                        });
                        $('.back_home i').remove();
                        $(".submit_order i").remove();
                        $(".submit_order").attr("href", "/Login/Register");
                        buy2Submit = 0;
                        $(".btn_login").text("提交注册信息");
                    }
                },
                error: function (err) { }
            });
        };
        function isPhone(temp, flag) {
            var myreg = /^(((1[0-9][0-9]{1})|159|153)+\d{8})$/;
            if (!myreg.test(temp)) {
                if (flag)
                    alert('请输入有效的手机号码！');
                return false;
            }
            return true;
        }
        function AuthEmail(el) {
            var id = el.attr("id");
            var toolTip = el.attr("placeholder");
            var par = el.next();
            var e = $("#" + id).val();
            e = e.replace(/^\s+|\s+$/g, ""); //去首尾空格
            if (!isEmail(e)) {
                layer.tips('邮箱格式不正确', el, { guide: 0, time: layerTime });
                return false;
            } else {
                var model = {
                    Value: e,
                    Type: "U_Email",
                    MethodCommand: "CheckEmail"
                };

                $.post("/reg.aspx", model, function (bak) {
                    if (bak == 1) {
                        layer.tips(toolTip + "已存在", el, { guide: 0, time: layerTime });
                        $("#checkAuthEmail").val(1);
                        return false;
                    } else {
                        layer.closeTips();
                        $("#checkAuthEmail").val(0);
                        return true;
                    }
                })
            }
        }
        function AuthPhone(el) {
            var id = el.attr("id");
            var toolTip = el.attr("placeholder");
            var par = el.next();
            var e = $("#" + id).val();
            e = e.replace(/^\s+|\s+$/g, ""); //去首尾空格
            if (!isPhone(e)) {
                layer.tips('手机格式不正确', el, { guide: 0, time: layerTime });
                return false;
            } else {
                $.post("GetPhone", { Phone: e }, function (data) {
                    var bak = eval("(" + data + ")");
                    if (bak.isOK == true) {
                        layer.closeTips();
                        $("#checkAuthPhone").val(0);
                    } else {
                        layer.tips(toolTip + "已被使用", el, { guide: 0, time: layerTime });
                        $("#checkAuthPhone").val(1);
                    }
                })
            }
        }
        function isPwdSame(uPwd, cPwd, flag) {
            if (uPwd != cPwd) {
                if (flag) {
                    alert('提示\n两次密码不一样！');
                }
                return false;
            }
            return true;
        }
        function isSecurity(v) {
            if (v.length < 6) { iss.less(); return; }
            var lv = -1;
            if (v.match(/[a-z]/ig)) { lv++; }
            if (v.match(/[0-9]/ig)) { lv++; }
            if (v.match(/(.[^a-z0-9])/ig)) { lv++; }
            if (v.length < 6 && lv > 0) { lv--; }
            iss.reset();
            switch (lv) {
                case 0:
                    iss.level0();
                    break;
                case 1:
                    iss.level1();
                    break;
                case 2:
                    iss.level2();
                    break;
                default:
                    iss.reset();
            }
        }
        function gohome() {
            window.location.href = "/";
        }
        //验证用户名是否存在
	    function checkUser() {
	        var name = $('#name').val();
	        var s = 0;
	        $.ajax({
	            type : "post",
	            url : "<%=path %>/user/checkUser.action",
	            data : "name=" + name,
	            success : function(date) {
	            	if (date == 1) {
	     	            document.getElementById("checkUN").innerHTML = "<b style='color: red'>用户名已存在</b>";
	     	        } else if (date == 2) {
	     	            document.getElementById("checkUN").innerHTML = "<b style='color:red'>用户名不能为空</b>";
	     	        } else if(date == 3){
	     	        	document.getElementById("checkUN").innerHTML = "<b style='color:red'>√该用户名可以使用</b>";
	     	        }
	            }
	        });
    	}
	    $(document).ready(function() {
	        $("#name").blur(function() {
	            checkUser();
	        });
	    })
	    //验证密码长度
	    function AuthPwd() {
            var e = $('#password').val();
            if(e == ""){
            	document.getElementById("checkPassword").innerHTML = "<b style='color:red'>密码不能为空</b>";
            }else{
            	if (e.length < 6) {
                	document.getElementById("checkPassword").innerHTML = "<b style='color:red'>长度至少6位</b>";
                } else {
                	document.getElementById("checkPassword").innerHTML = "<b style='color:red'>√密码格式正确</b>";
                }
            }
        }
	    //确认密码是否正确
        function AuthPwdAgain(el) {
        	var e = $('#password').val();
        	var e1 = $('#cPassword').val();
            if (e1 == ""){
            	document.getElementById("confirmPassword").innerHTML = "<b style='color:red'>密码不能为空</b>";
            }else if(e1.length < 6){
            	document.getElementById("confirmPassword").innerHTML = "<b style='color:red'>长度至少6位</b>";
            }else if(e1 != e){
            	document.getElementById("confirmPassword").innerHTML = "<b style='color:red'>两次输入密码不一致</b>";
            }else{
            	document.getElementById("confirmPassword").innerHTML = "<b style='color:red'>√确认密码正确</b>";
            }
        }
    </script>
    <div class="container login_mid">
        <div class="pull-left" center 10px no-repeat; width:50%;"><img src="<%=path %>/images/icon_login.png"/></div>
        <div class="pull-right" style="width:50%;">
            <div class="login_box" style="height:240px;">
                <h3 >免费注册&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="http://www.dingdangao.net.cn/Login/Index">登陆</a></h3>
                <div style="margin-top:40px;">
                	<form action="<%=path %>/user/regist" method="post">
                		用  户 名：<input id="name" type="text"  name="name"><span id="checkUN"></span><br><br>
                		密&nbsp&nbsp&nbsp&nbsp码：<input name="password" id="password" type="password" onblur="AuthPwd()"><span id="checkPassword"></span><br><br>
                		确认密码：<input id="cPassword" name="cPassword"  type="password" onblur="AuthPwdAgain()"><span id = "confirmPassword"></span><br><br>
                		手机号码：<input id="phoneNum"  name="phoneNum" type="text" onblur="AuthPhone($(this))"><span class="inptag"></span><br><br>
                		邮&nbsp&nbsp&nbsp&nbsp箱：<input id="email" name="email" type="text" onblur="AuthPhone($(this))"><span class="inptag"></span><br><br>
                		<input type="submit"  value="提交注册信息"/>
                	</form>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <input type="hidden" value="0" id="checkAuthName">
    <input type="hidden" value="0" id="checkAuthNickName">
    <input type="hidden" value="0" id="checkAuthEmail">
    <input type="hidden" value="0" id="checkAuthPhone">
    
    





<!--侧边栏-->
<footer class="web_footer">
    <div class="container">
        <div class="ewm">
            <img src="<%=path %>/images/erweima_09.png" width="80" height="80">
            <img src="<%=path %>/images/erweima_11.png" width="80" height="80">
        </div>
        <div class="footer_menu">
            <a href="http://www.dingdangao.net.cn/Content/Details/1002">联系我们</a>|<a href="http://www.dingdangao.net.cn/BlocBuy/savor">集团购买</a>|<a href="http://www.dingdangao.net.cn/Content/Details/9">企业合作</a>|<a href="http://www.dingdangao.net.cn/Content/Details/6">经营资质</a>

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