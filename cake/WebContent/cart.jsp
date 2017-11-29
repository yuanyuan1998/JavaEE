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
        var UserId = "37740";
        var UserName = "哦哦";
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
        var UserId = "37740";
        var DomainPlaceId = "233";
    </script>
    <script language="javascript">
        $(function () {
        	if('${user.name }' != "" ){
        		$("a").remove("#b");
        		var html = "<a href=' "+'<%=path %>/index.jsp'+" '>"+'${user.name}'+"</a>";
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
                    <a href="http://www.dingdangao.net.cn/Product/Buy2" class="co_g3 menu_nav">${countNum }  件</a>
                    <a href="<%=path %>/login.jsp" onclick="loginMember()" id="a"><i class="co_g3"></i>登录</a>
                    <a href="<%=path%>/regist.jsp"  id="b">注册</a>
                </div>
</form>        </div>
    </header>
    

<style type="text/css">
    .popup_box {
        width: 518px;
        background: #fff;
        box-shadow: 0px 2px 2px #999;
        display: none;
        position: absolute;
        z-index: 13;
    }

    .pop_btn {
        background: #f0eeee;
        height: 60px;
        border-top: #dcdbdb solid 1px;
        text-align: center;
    }

        .pop_btn a.login_btn_succese {
            width: 136px;
            height: 40px;
            line-height: 40px;
            font-size: 14px;
            font-weight: bold;
            color: #fff;
            border-radius: 2px;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            display: inline-block;
            margin: 0 auto;
            background: #c53f4b;
            text-align: center;
            margin-top: 10px;
        }

            .pop_btn a.login_btn_succese:hover {
                background: #da646f;
            }

    .p_box2 {
        width: 770px;
        height: 394px;
        background: #fff;
        border: #e3e3e3 solid 1px;
        box-shadow: 0px 2px 2px #e3e3e3;
        z-index: 2000;
    }

    .d_closed {
        width: 35px;
        height: 35px;
        position: absolute;
        right: 0;
        top: 0;
        background: #eee;
        display: block;
        text-align: center;
        line-height: 35px;
        font-size: 14px;
        font-family: "宋体";
    }

        .d_closed a {
            color: #000;
        }

    .d_bt {
        margin: 20px 0 0 20px;
    }

        .d_bt span {
            font-size: 14px;
        }

    .d_pro_info {
        width: 410px;
        margin-right: 20px;
        margin-top: 20px;
        float: right;
    }

        .d_pro_info dl.pro_ji_list dd {
            width: 320px;
        }

        .d_pro_info .pro_price {
            border-bottom: #f0f0f0 solid 1px;
        }

    .d_pro_pic {
        margin: 20px 0 0 20px;
    }

    .pro_price .price {
        color: #c53f4b;
        font-size: 24px;
        font-family: "微软雅黑";
        height: 50px;
    }

        .pro_price .price b {
            font-size: 38px;
            font-weight: normal;
        }

    .guige_list a {
        padding: 4px 10px;
        border: #f0f0f0 solid 1px;
        margin-bottom: 5px;
        display: inline-block;
    }

        .guige_list a.cur {
            padding: 3px 9px;
            border: #be0106 solid 2px;
            background: url(/Content/ImagesWeb/guige_02.png) right bottom no-repeat;
        }

    .pro_ji_num a {
        width: 16px;
        height: 34px;
        border: #dadada solid 1px;
        text-align: center;
        line-height: 34px;
        display: inline-block;
        font-size: 16px;
        vertical-align: middle;
    }

        .pro_ji_num a.add {
            border-right: none;
        }

        .pro_ji_num a.jian {
            border-left: none;
        }

    .pro_ji_num input {
        width: 60px;
        height: 34px;
        line-height: 34px;
        text-align: center;
        border: #c4c4c4 solid 1px;
        display: inline-block;
        vertical-align: middle;
    }
</style>
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
        	<th>选择</th>
            <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;商品</th>
            <th scope="col">单价</th>
            <th scope="col">数量</th>
            <th scope="col">小计</th>
            <th width="40" scope="col">&nbsp;</th>
        </tr>
        	<c:forEach items="${cartlist }" var="c">
        		<tr indexpid="11" id="li1-11">
        			<td><input name="checkbox" type="checkbox" value="" /></td>
                    <td valign="middle"><a href="javascript:void(0);"><img width="48" height="48" src="${c.product.img1 }" class="d_pic"></a><span class="d_title">${c.product.name }<br> <i>约${c.size }磅</i></span></td>
                    <td valign="middle" iscookie="0" show="188.00" mid="11" pid="1004">
                        ￥<span>${c.product.price }.00</span>
                    </td>
                    <td valign="middle"><span class="dd_num2" style="display:none;">${c.count }</span><span class="dd_num"><a class="add" href="javascript:">-</a><input name="" type="text" value="${c.count }"><a class="jian" href="javascript:">+</a></span></td>
                    <td class="co_cheng" valign="middle"><b>￥</b><span>138.00</span></td>
                    <td mid="11"><a href="javascript:" onclick="delCar(this)" class="pro_del"></a></td>
                </tr>
        	</c:forEach>
                
    </tbody></table>
    <div class="pj_box">
        <div class="row">
        </div>
    </div>
    <!--积分代金券-->
    <!--合计-->
    <script type="text/javascript">
        $(function () {
            //总价格
            sumPriceActual();
            var count = 0;
            var price = parseFloat($("#pracecount").html());
            //alert(price);
            if (parseInt(price) > prices) {
                $("#delivery").html($("#youhui").data("stock"));
                $("#delivery2").html($("#youhui").data("stock"));
                $("#PriceActual").html(setMoneyFormat(price - parseFloat($("#youhui").data("stock"))));
                $("#jianprice").html(setMoneyFormat(price - parseFloat($("#youhui").data("stock"))));
            } else {
                $("#delivery").html("0");
                $("#delivery1").html("0");
                $("#delivery2").html("0");
                $("#PriceActual").text(setMoneyFormat(price));
                $("#jianprice").text(setMoneyFormat(price));
            }
        });
    </script>
    <div class="d_dan_result">
        <h2>您需为订单支付：￥<span class="zi_red" id="pracecount" data-prict="138.0000">138.00</span></h2>
        <div class="d_dan_order_btn"><a class="back_home" href="http://www.dingdangao.net.cn/Product/List"><i></i>再逛逛</a><a class="submit_order" href="javascript:void(0);" onclick="buy1()">确认</a></div>
    </div>
</div>
<!-- 选择产品附件数量弹窗 -->

<!-- Buy2  -->
<div class="wd" id="buy2" style="display:none">
    <div class="step_box">
        <i class="step02"></i>
        <p>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;购物车</span>
            <span>提交订单</span>
            <span>购买成功</span>
        </p>
    </div>
    <div class="bt"><h2>确认商品信息</h2></div>
    <table class="tabl_list" width="0" border="0" cellspacing="0" cellpadding="0" id="tableBuy2">
        <tbody><tr>
            <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;项目</th>
            <th scope="col">巧克力牌（免费）</th>
            <th scope="col" style="display:none;">祝福贺卡（免费）  </th>
            <th scope="col">单价</th>
            <th scope="col">数量</th>
            <th scope="col">小计</th>
        </tr>
    </tbody></table>
    <!--合计-->
    <div class="d_dan_result">
        <h2>您需为订单支付：￥<span class="zi_red" id="pracecount" data-prict="138.0000"><b>138.00</b></span></h2>
    </div>
    <!--收货方式-->
    <div id="DeliveryDiv">
        <div class="bt"><h2>收货方式</h2></div>
        <div class="shsm" style="display: none;">
            <div style="margin-top: 20px;" id="userAddress"><div class="spacer"></div></div>
            <div>
                <a class="icon_area_add" href="javascript:void(0);">+新增地址</a>
                <input type="hidden" id="addIsDefault" value="0">
                <div class="join_cont">
                    <div class="fanke" style="display:none;">
                        <dl class="of_new_address_list">
                            <dt style="width:100px;">下单人姓名：</dt>
                            <dd><input type="text" name="" class="of_text"><i>*必填</i></dd>
                            <div class="spacer"></div>
                        </dl>
                        <dl class="of_new_address_list">
                            <dt style="width:100px;">下单人手机：</dt>
                            <dd><input type="text" name="" class="of_text"><i>*必填</i></dd>
                            <div class="spacer"></div>
                        </dl>
                    </div>
                    <div class="newdizhi" id="addAddress" style="display: none;">
                        <dl class="of_new_address_list">
                            <dt style="width:100px;">取货人姓名：</dt>
                            <dd><input type="text" name="" class="of_text"><i>*必填</i></dd>
                            <div class="spacer"></div>
                        </dl>
                        <dl class="of_new_address_list">
                            <dt style="width:100px;">取货人手机：</dt>
                            <dd><input type="text" name="" class="of_text"><i>*必填</i></dd>
                            <div class="spacer"></div>
                        </dl>
                        <dl class="of_new_address_list">
                            <dt style="width:100px;">地区：</dt>
                            <dd>
                                <select class="of_area provinceSelect" id="provinceSelect2" name="ProvinceId">
                                    <option selected="selected" value="-1">请选择</option>
                                        <option value="19" selected="selected">广东省                                               </option>
                                </select>
                                <select class="of_area citySelect" id="citySelect2" name="CityId"><option value="-1">请选择</option><option value="233" selected="selected">深圳市                                               </option></select>
                                <select class="of_area countySelect" id="countySelect2" name="AreaId"><option value="-1" selected="selected">请选择</option><option value="2142">罗湖区                                               </option><option value="2143">福田区                                               </option><option value="2144">南山区                                               </option><option value="2145">宝安区                                               </option><option value="2146">龙岗区                                               </option><option value="3352">龙华新区                                              </option><option value="3353">光明新区                                              </option></select>
                            </dd>
                            <div class="spacer"></div>
                        </dl>
                        <dl class="of_new_address_list">
                            <dt style="width:100px;">详细地址：</dt>
                            <dd><input type="text" name="" class="of_text"><i>*必填</i></dd>
                            <div class="spacer"></div>
                        </dl>
                        <dl class="of_new_address_list">
                            <dt style="width:100px;">地标：</dt>
                            <dd><input type="text" name="" class="of_text"></dd>
                            <div class="spacer"></div>
                        </dl>
                        <dl class="of_new_address_list">
                            <dd style="margin:10px 0 20px 6em">
                                <a href="javascript:" onclick="addAddress(0)" class="btn_sure" id="addSubmit">确定</a> 
                            </dd>
                            <div class="spacer"></div>
                        </dl>
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
<div class="wd" id="buy3" style="display:none;">
    <div class="step_box">
        <i class="step03"></i>
        <p>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;购物车</span>
            <span>提交订单</span>
            <span>购买成功</span>
        </p>
    </div>
    <div class="zhi_user">
        <h2>尊敬的用户：</h2>

        <p>您已购买成功，感谢您对御蝶坊的支持！</p>
    </div>
    <div class="btn_box">
        <a class="btn_closed" href="http://www.dingdangao.net.cn/Product/Buy2#">关闭</a>
    </div>
</div>
<script>
    var selects = $('.selectToDiv');//获取select
    $(function () {
        //数量增减
        $(".numjiajian a").each(function () {
            $(this).click(function () {
                var value = parseInt($(this).siblings(":text").val());
                if (isNaN(value))
                    value = 1;

                if ($(this).attr("class") != "jian") {
                    if (value > 1)
                        value--;
                    $(this).siblings(":text").val(value);
                } else {
                    if (value >= 20)
                        value = 20;
                    else {
                        value++;
                    }

                    $(this).siblings(":text").val(value);
                }
                var id = $(this).closest('.popup_box').attr("data-id");             //当前div 的Id
                var p = $(this).closest("dl").prev().find("a.cur").attr("price");   //单价
                var pa = setNumPoint(eval(value * p));                              //总价
                $(this).closest(".d_pro_info").find("b").text(setNumPoint(pa));
            });
            $(this).siblings(":text").keyup(function () {
                var value = $(this).val();
                if (isNaN(value) || value < 1) {
                    $(this).val(1);
                    value = 1;
                }
                else if (value > 20) {
                    $(this).val(20)
                    value = 20;
                }
                var id = $(this).closest('.popup_box').attr("data-id");             //当前div 的Id
                var p = $(this).closest("dl").prev().find("a.cur").attr("price");   //单价
                var pa = setNumPoint(eval(value * p));                              //数量
                $(this).closest(".d_pro_info").find("b").text(setNumPoint(pa));
            });
        });
        //动态改变select 为div
        for (var i = 0; i < selects.length; i++) {
            createSelect(selects[i], i);
        }
    });
</script>
<script type="text/javascript">
    var UserId = "37740";
    var UserName = "哦哦";
    var UserPhone = "";
    var curDateHour = "9";
    var curDateStr = "2017-11-23";
    var curDateAdd = "2017-11-24";
    var arrHour = new Array();
    var f = "";
    $(function () {
        $(".mdzt").hide();
        $(".icon_area_add").click(function () {
            $(".join_cont").show();
            $(".newdizhi").toggle();
        });
        $(".of_tabbox1 label").has("input[name='r4']").each(function (index) {
            $(this).click(function () {
                if ($(".of_tabbox1 input[name='r4']:checked").parent().text() == "机打") {
                    $(".of_huibox:last>dl").show();
                } else {
                    $(".of_huibox:last>dl").hide();
                }
            })
        });
    })
    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    }
    $(function () {
        sumPriceActual();
        //数量增减
        $('.tabl_list').on('click', '.dd_num a', function () {
            var value = parseInt($(this).siblings(":text").val());
            if (isNaN(value))
                value = 1;

            if ($(this).attr("class") != "jian") {
                if (value > 1)
                    value--;
                $(this).siblings(":text").val(value);
            } else {
                if (value >= 20)
                    value = 20;
                else {
                    value++;
                }
                $(this).siblings(":text").val(value);
            }
            var p = $(this).closest('td').prev().find("span").text();
            var pa = setNumPoint(eval(value * p));
            $(this).closest('td').next().find("span").text(pa);
            sumPriceActual();
        });
        $('.tabl_list').on('keyup', '.dd_num :text', function () {
            var value = $(this).val();
            if (isNaN(value) || value < 1) {
                $(this).val(1);
                value = 1;
            }
            else if (value > 20) {
                $(this).val(20)
                value = 20;
            }
            var p = $(this).closest('td').prev().find("span").text();
            var pa = setNumPoint(eval(value * p));
            $(this).closest('td').next().find("span").text(pa);
            sumPriceActual();
        });
        //默认时间
        var d = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = d.getMonth() + 1;
        var hournow = d.getHours();
        var strDate = d.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var str = d.getFullYear() + "-" + month + "-" + strDate;
        $("#DeliveryTimeDay").val(str);
        //改变日期事件
        $("#DeliveryTimeDay").blur(function () {
            setdeliverydate(0);
            $("#DeliveryTimeHour option:first").prop("selected", 'selected');
        });
    })
    //选择生日牌
    function choseBrithCard(obj) {
        var brithCard = $(obj).prev().find("input").val();
        if (brithCard == undefined) {
            brithCard = $(obj).prev().find("textarea").val()
        }
        $(".brith_card_list").hide();
        $(obj).parent().parent().parent('.brith_card_list').prev().html(brithCard + '<em class="select-ico"></em>');
    }
    //计算总金额
    function sumPriceActual(flag) {
        var xj = 0;
        $("#tableBuy1 tbody tr:gt(0)").each(function (index, value) {
            var temp1 = parseFloat($(value).find("td").eq(1).find("span").text()) * parseFloat($(value).find("td").eq(2).find("input").val());
            $(value).find("td").eq(3).find("span").text(setMoneyFormat(temp1));
            xj += temp1;
            xj = setNumFormat(xj);  //小数加小数结果小数位变多
        })
        var temp = $(".dd_jiao_box").find("div:first>label").text();
        var dis = parseFloat(temp == "" ? "0" : temp);    //折扣价钱
        var sum = eval(xj - dis);
        if (flag) {
            if (flag == 2) {
                return setMoneyFormat(sum); //实际价钱, 不算折扣
            }
            if ($("#PriceFreight").text() == "0.00" || $("#PriceFreight").text() == "") {
                sum = setMoneyFormat(xj);           //总金额
            } else {
                sum = setMoneyFormat(xj + setNumFormat(freight));           //总金额+运费
            }
            return sum;
        }
        $("#pracecount").text(setMoneyFormat(sum));
        $(".zi_red b").text(setMoneyFormat(sum));
    }
    function buy1() {
        
        var curUserId = "";
        $.ajax({
            type: "POST",
            url: "GetCurUserId",
            dataType: "text",
            async: false,    //获取当前Id
            success: function (data) {
                curUserId = data;
            }
        });
       
        var el = $("body input[name=r7]").eq(2).closest("div").find("label>input:checked");//当前选中的代金券项
        var elAll = $("body input[name=r7]").eq(2).closest("div").find("label>input");      //所有代金券
        var curPos = elAll.index(el);                                                       //选中代金券的位置
        //选择使用线下的代金券号
        if (curPos == elAll.length - 1 && curPos != -1) {
            var lastVoucher = $("body input[name=r7]").eq(2).closest("div").find(" input[type='text']").val();
            if (lastVoucher == "") {
                AddPopup("代金券号不能为空");
                popup($(".p_box1"));
                return;
            }
            if ($("#lastVoucherCode").val() != lastVoucher) {
                AddPopup("代金券号不对");
                popup($(".p_box1"));
                return;
            }
        }
        var dicountmoney = $(".dd_jiao_box").find("div:first>label").text();
        if (dicountmoney == "" || dicountmoney == undefined) {
            dicountmoney = 0;
        }
        $(".tj_jd .co_cheng").text("￥" + setMoneyFormat(dicountmoney));
        var indextr = 0;
        $("#tableBuy1 tr").each(function () {
            indextr++;
            if (indextr != 1) {
                var ProductAttr = $(this).data("ProductAttr");
                var temp1 = '';
                if ($(this).find("td").eq(1).attr("iscookie") == 0) {
                    temp1 += '<tr class="d_xuan_list2" indexpid="{Id}" id="li-{Id}"><td valign="middle"><a href="javascript:void(0);"><img width="48" height="48" src="{TitleImg}" class="d_pic" /></a><span class="d_title">{ProductName}<br> <i></i></span></td><td>';
                } else {
                    //temp1 += '<tr class="d_xuan_list2" indexpid="{Id}" id="li-{Id}"><td valign="middle"><a href="javascript:void(0);"><img width="48" height="48" src="{TitleImg}" class="d_pic" /></a><span class="d_title">{ProductName}<br> <i></i></span></td><td>';
                    temp1 += '<tr class="d_xuan_list2 pei" indexpid="{Id}" id="li-{Id}"><td valign="middle"><a href="javascript:void(0);"><img width="48" height="48" src="{TitleImg}" class="d_pic" /></a><span class="d_title">{ProductName}<br> <i></i></span></td><td>';
                };

                if ($(this).find("td").eq(1).attr("iscookie") == 0) {
                    temp1 += ' <div class="select-area birth-select brith_card_sel"><div class="select-inner input-item brith_card_display benison" style="z-index:199">请选择生日牌<em class="select-ico"></em></div><div class="select-ul-area brith_card_list" style="z-index:200"><ul><li productid="365" class="brith_card_cancel brith_card_item"><span class="sua-item">无</span></li><li productid="365" class="brith_card_item"><span class="sua-item">生日快乐</span></li><li productid="365" class="brith_card_item"><span class="sua-item">Happy Birthday</span></li><li productid="365" class="brith_card_item"><span class="sua-item">节日快乐</span></li><!-- ie6莫名的原因，前两个li要挨着 --><li class="brith_card_by_self"><span class="sua-item">自定义</span></li><li style="padding:4px; display:none;"><div class="input-container"><input type="text" style="width:165px;" placeholder="可输入8个汉字或16个字符" class="input-item brith_card_input" max="6" binded="1" id="Benison" onkeyup="enterCharLimit(this, 16)"><span class="input-error hide"><span class="i-er-font">超过字数限制</span><em class="i-er-corner"></em></span></div><a productid="365" class="btn-import brith_card_confirm" href="javascripte:" onclick="choseBrithCard(this)">确定</a></li><input type="hidden" name="birthday_card[365]" data-id="365" class="input-item brith_card_hidden" id="brith_card_hidden_365_12"></ul></div></div>';
                }
                temp1 += '</td><td style="display:none;"> ';
                if ($(this).find("td").eq(1).attr("iscookie") == 0) {
                    temp1 += '<div class="select-area birth-select brith_card_sel"><div class="select-inner input-item brith_card_display benisonCard" style="z-index:199">请选择祝福贺卡<em class="select-ico"></em></div><div class="select-ul-area brith_card_list" style="z-index:200"><ul><li productid="365" class="brith_card_cancel brith_card_item"><span class="sua-item">无</span></li><li class="brith_card_by_self"><span class="sua-item">自定义</span></li><li style="padding:4px; display:none;"><div class="input-container"><textarea style="width:165px; height:60px;" cols="5" placeholder="可输入30个汉字或60个字符" class="input-item brith_card_input" max="6" binded="1" id="BenisonCard" onkeyup="enterCharLimit(this, 60)"></textarea><span class="input-error hide"><span class="i-er-font">超过字数限制</span><em class="i-er-corner"></em></span></div><a productid="365" class="btn-import brith_card_confirm" href="javascripte:" onclick="choseBrithCard(this)">确定</a></li><input type="hidden" name="birthday_card[365]" data-id="365" class="input-item brith_card_hidden" id="brith_card_hidden_365_12"> </ul></div></div>';
                }
                temp1 += '</td><td iscookie="{IsCookie}" show="{PriceShow}" mid="{MId}" pid="{PId}"><b>￥</b><span>{PriceUnit}</span></td><td>{amount}</td><td class="co_cheng"><b>￥</b><span>{PriceAmount}</span></td> </tr>';
                temp1 = temp1.replace(/{TitleImg}/g, $(this).find("td").eq(0).find("img").attr("src"));
                temp1 = temp1.replace(/{ProductName}/g, $(this).find("td").eq(0).find("span").text());
                temp1 = temp1.replace(/{IsCookie}/g, $(this).find("td").eq(1).attr("iscookie"));
                temp1 = temp1.replace(/{MId}/g, $(this).attr("indexpid"));
                temp1 = temp1.replace(/{Id}/g, $(this).attr("indexpid"));
                temp1 = temp1.replace(/{PriceUnit}/g, $(this).find("td").eq(1).find("span").text());
                temp1 = temp1.replace(/{PriceShow}/g, $(this).find("td").eq(1).find("span").text());
                temp1 = temp1.replace(/{PriceAmount}/g, $(this).find("td").eq(3).find("span").text());
                temp1 = temp1.replace(/{amount}/g, $(this).find(".dd_num a").siblings(":text").val());
                temp1 = temp1.replace(/{PId}/g, $(this).find("td").eq(1).attr("pid"));
                $("#tableBuy2").append(temp1);
                $("#li-" + $(this).attr("indexpid")).data("ProductAttr", ProductAttr);
                sumPriceActual();
            }
        })
        $("#buy2_co_cheng").text($("#buy1_co_cheng").text());
        $("#buy2_dd_num").text($("#tableBuy1 .dd_num").find("input").val());
        $("#buy1").hide();
        $("#buy2").show();
        //选择生日牌
        $(".brith_card_display").click(function () {
            if ($(this).siblings('.select-ul-area').is(":hidden")) {
                $(this).siblings(".select-ul-area").show();
            } else {
                $(this).siblings(".select-ul-area").hide();
            };
        });
        $(".brith_card_by_self").click(function () {
            $(this).hide().next("li").show();
        })
        $(".brith_card_item").on("click", function () {
            $(".brith_card_list").hide();
            $(this).parent().parent('.brith_card_list').prev().html($(this).find(".sua-item").text() + '<em class="select-ico"></em>');

        })
        $(window).scrollTop(0, 0);
        sumPriceActual();
    }


    $(function () {
        if (UserId) {
            //获取地址信息
            $("#addAddress").hide();
            $("#userAddress").show();
            getAddress(1, $("#PlaceId").val());
            getUserInfo(UserId);
        } else {
            $(".fanke").show();          //访客则显示
            $(".icon_area_add").hide(); //添加新地址
            $("#addAddress").show();        //添加地址选项
            $("#addAddress dl:last").hide();//确定保存按键
        }
    })
    var buy2Submit = 0;
    function buy2() {
        //alert("buy2");
        var parm = new Object();
        var parmProduct = new Object();
        var OrderName = "";
        var OrderPhone = "";
        var TakeName = "";
        var TakePhone = "";
        var Addr = "";
        //配送方式( 0.门店自提  1.配送上门)
        var delivertype = $("body").find("input[name=r2]:checked").parent().text().replace(/^\s+|\s+$/g, "");
        if (delivertype == "配送上门" || delivertype == "送货上门") {
            parm["DeliveryType"] = 1;
            //获取UserId,可能sesseion 已经失效但UserId不为空不为12
            var curUserId = "";
            $.ajax({
                type: "POST",
                url: "GetCurUserId",
                dataType: "text",
                async: false,    //获取当前Id
                success: function (data) {
                    curUserId = data;
                }
            });

            if (curUserId != UserId && curUserId != 12) {
                AddPopupLogin(0, "当前用户登陆失效，是否重新登陆？");
                return false;
            }
            //判断是否登录
            if (UserId) {
                $("#userAddress").show();
                if ($("#userAddress>.area_list").length == 0) {
                    AddPopup("请先添加收货地址");
                    popup($(".p_box1"));
                    buy2Submit = 0;

                    return false;
                }
                var DetailAddress = $("#userAddress .area_list input:checked").closest(".area_list").attr("buildingsign").replace(/^\s+|\s+$/g, "");
                Addr = $("#userAddress .area_list input:checked").closest(".area_list").attr("Addr").replace(/^\s+|\s+$/g, "");
                OrderName = UserName;
                OrderPhone = UserPhone;
                TakeName = $("#userAddress .area_list input:checked").closest(".area_list").find("li").eq(1).text().replace(/^\s+|\s+$/g, "");
                TakePhone = $("#userAddress .area_list input:checked").closest(".area_list").find("li").eq(2).text().replace(/^\s+|\s+$/g, "");
                var addrTemp = TakeName + "/" + TakePhone + "/" + Addr + "/" + DetailAddress;
                parm["Addr"] = addrTemp;
                parm["Province"] = $("#userAddress .area_list input:checked").closest(".area_list").attr("provincename").replace(/^\s+|\s+$/g, "");
                parm["City"] = $("#userAddress .area_list input:checked").closest(".area_list").attr("cityname").replace(/^\s+|\s+$/g, "");
                parm["Area"] = $("#userAddress .area_list input:checked").closest(".area_list").attr("areaname").replace(/^\s+|\s+$/g, "");
                var addSplit = addrTemp.split('/');
                if (addSplit.length != 4) {
                    AddPopup("地址格式不对");
                    popup($(".p_box1"));
                    buy2Submit = 0;
                    return false;
                }

            } else {
                $("#userAddress").hide();
                OrderName = $(".join_cont").find(".of_text").eq(0).val().replace(/^\s+|\s+$/g, "");
                OrderPhone = $(".join_cont").find(".of_text").eq(1).val().replace(/^\s+|\s+$/g, "");
                TakeName = $(".join_cont").find(".of_text").eq(2).val().replace(/^\s+|\s+$/g, "");
                TakePhone = $(".join_cont").find(".of_text").eq(3).val().replace(/^\s+|\s+$/g, "");
                Addr = $(".join_cont").find(".of_text").eq(4).val().replace(/^\s+|\s+$/g, "");
                parm["Addr"] = TakeName + "/" + TakePhone + "/" + Addr + "/" + $(".join_cont").find(".of_text").eq(5).val().replace(/^\s+|\s+$/g, "");
                if (!OrderName) {
                    $(".join_cont").find(".of_text").eq(0).next().html("<font color='#da646f'>收货人姓名不能为空!</fong>");
                    jumpScorll($(".join_cont").find(".of_text").eq(0).next());
                    return false;
                }

                if (OrderPhone.length < 1) {
                    $(".join_cont").find(".of_text").eq(1).next().html("<font color='#da646f'>不能为空</fong>");
                    jumpScorll($(".join_cont").find(".of_text").eq(0).next());
                    return false;
                }
                if (!isPhone(OrderPhone)) {
                    $(".join_cont").find(".of_text").eq(1).next().html("<font color='#da646f'>手机格式不正确!</fong>");
                    jumpScorll($(".join_cont").find(".of_text").eq(1).next());
                    return false;
                }
                if (!TakeName) {
                    $(".join_cont").find(".of_text").eq(2).next().html("<font color='#da646f'>取货人姓名不能为空!</fong>");
                    jumpScorll($(".join_cont").find(".of_text").eq(2).next());
                    return false;
                }
                if (TakePhone.length < 1) {
                    $(".join_cont").find(".of_text").eq(3).next().html("<font color='#da646f'>不能为空</fong>");
                    jumpScorll($(".join_cont").find(".of_text").eq(3).next());
                    return false;
                }
                if (!isPhone(TakePhone)) {
                    $(".join_cont").find(".of_text").eq(3).html("<font color='#da646f'>手机格式不正确!</fong>");
                    jumpScorll($(".join_cont").find(".of_text").eq(3).next());
                    return false;
                }
                if (!Addr) {
                    $(".join_cont").find(".of_text").eq(4).next().html("<font color='#da646f'>不能为空!</fong>");
                    jumpScorll($(".join_cont").find(".of_text").eq(4).next());
                    return false;
                }
            }
        } else if (delivertype == "门店自提") {
            parm["DeliveryType"] = 0;
            //获取UserId,可能sesseion 已经失效但UserId不为空不为12
            var curUserId = "";
            $.ajax({
                type: "POST",
                url: "GetCurUserId",
                dataType: "text",
                async: false,    //获取当前Id
                success: function (data) {
                    curUserId = data;
                }
            });

            if (curUserId != UserId && curUserId != 12) {
                AddPopupLogin(0, "当前用户登陆失效，是否重新登陆？");
                return false;
            }
            if (UserId) {
                OrderName = UserName;
                OrderPhone = UserPhone;
            } else {
                OrderName = $(".pei_box").eq(0).find(".of_text").eq(0).val().replace(/^\s+|\s+$/g, "");
                OrderPhone = $(".pei_box").eq(0).find(".of_text").eq(1).val().replace(/^\s+|\s+$/g, "");
                if (!OrderName) {
                    $(".pei_box").eq(0).find(".of_text").eq(0).next().html("<font color='#da646f'>收货人姓名不能为空!</fong>");
                    jumpScorll($(".pei_box").eq(0).find(".of_text").eq(0).next());
                    return false;
                }
                if (OrderPhone.length < 1) {
                    $(".pei_box").eq(0).find(".of_text").eq(1).next().html("<font color='#da646f'>不能为空</fong>");
                    jumpScorll($(".pei_box").eq(0).find(".of_text").eq(1).next());
                    return false;
                }
                if (!isPhone(OrderPhone)) {
                    $(".pei_box").eq(0).find(".of_text").eq(1).next().html("<font color='#da646f'>手机格式不正确!</fong>");
                    jumpScorll($(".pei_box").eq(0).find(".of_text").eq(1).next());
                    return false;
                }
            }
            TakeName = $(".pei_box").eq(0).find(".of_text").eq(2).val().replace(/^\s+|\s+$/g, "");
            TakePhone = $(".pei_box").eq(0).find(".of_text").eq(3).val().replace(/^\s+|\s+$/g, "");
            parm["SId"] = $(".pei_box").eq(0).find(".storeSelect").find("option:selected").val();
            if (!TakeName) {
                $(".pei_box").eq(0).find(".of_text").eq(2).next().html("<font color='#da646f'>取货人姓名不能为空!</fong>");
                jumpScorll($(".pei_box").eq(0).find(".of_text").eq(2).next());
                return false;
            }
            if (TakePhone.length < 1) {
                $(".pei_box").eq(0).find(".of_text").eq(3).next().html("<font color='#da646f'>不能为空</fong>");
                jumpScorll($(".pei_box").eq(0).find(".of_text").eq(3).next());
                return false;
            }
            if (!isPhone(TakePhone)) {
                $(".pei_box").eq(0).find(".of_text").eq(3).next().html("<font color='#da646f'>手机格式不正确!</fong>");
                jumpScorll($(".pei_box").eq(0).find(".of_text").eq(3).next());
                return false;
            }
            parm["Province"] = $("#provinceSelect").find("option:selected").text().replace(/[ ]/g, "");
            parm["City"] = $("#citySelect").find("option:selected").text().replace(/[ ]/g, "");
            parm["Area"] = $("#countySelect").find("option:selected").text().replace(/[ ]/g, "");
            parm["areaid"] = $("#countySelect").find("option:selected").val().replace(/[ ]/g, "");
        }
        parm["OrderName"] = OrderName;
        parm["OrderPhone"] = OrderPhone;
        parm["TakeName"] = TakeName;
        parm["TakePhone"] = TakePhone;
        //优惠类型，优惠金额
        var discount = $("body input[name=r6]:checked").parent().attr("value");
        if (discount == 1) {
            parm["Discount"] = 1;
            //判断代金券是线上还是线下
            var curCk7 = $("body input[name=r7]").index($("body input[name=r7]:checked"));
            var lenCk7 = $("body input[name=r7]").length;
            if (curCk7 == lenCk7 - 1) {
                parm["DiscountrCode"] = $("body input[name=r7]:last").closest("div").find("input[type='text']").val();//最后一个选项code
            } else {
                parm["DiscountrCode"] = $("body input[name=r7]:checked").val();     //除最后一个的其它选项的code 代金券号码
            }
            parm["DiscountMoney"] = $(".dd_jiao_box").find("div:first>label").text();  //抵扣金额
        } else if (discount == 2) {
            parm["Discount"] = 2;
        }
        else if (discount == 0) {
            parm["Discount"] = 0;
            parm["DiscountrCode"] = $(".d_shi_list label:first>span.zi_888").text().replace(/[ ]/g, "");    //抵扣积分
            parm["DiscountMoney"] = parseInt($(".d_shi_list label:first>span.zi_888").text().replace(/[ ]/g, "")) / 20;  //抵扣金额
        } else {
            parm["Discount"] = -1;       //抵扣类型
            parm["DiscountMoney"] = 0;     //抵扣金额 默认0
        }
        var ProductName = "";
        $(".d_title").each(function (index, value) {
            ProductName += $(value).find("font").text() + ",";
        });
        if (ProductName.length > 0) {
            ProductName = ProductName.substring(0, ProductName.length - 1);
        }





        parm["CurDateHour"] = $("#DeliveryTimeHour").val().substring(0, 2);
        parm["ExplorerInfo"] = GetOSInfo() + " " + getExplorerInfo().version;
        parm["PriceAmount"] = sumPriceActual(1);                  //订单金额
        parm["PriceActual"] = $("#PriceActual").text();//总价
        //parm["CurDate"] = NewDate(CurentTime2(1)).DateAdd("d", 1).format("yyyy-MM-dd");
        parm["CurDate"] = $("#DeliveryTimeDay").val();
        parm["ProductName"] = ProductName;
        parm["Remark"] = $("#RemarkSys").val();                //备注信息
        parm["Brochure"] = 0;
        parm["DiscountMoney"] = $("#delivery2").text();
        parm["DeliveryTime"] = $("#DeliveryTimeDay").val() + " " + $("#DeliveryTimeHour").find("option:selected").text();
        var jump = 680;
        //订单详情
        var curDetailCount = $("#tableBuy2 tbody>tr .benisonCard").length;
        if (curDetailCount >= 1) {
            var a = $("#tableBuy2 tbody>tr .benisonCard:first").parent().parent().parent().find("td").eq(4).text();
            var p = $("#tableBuy2 tbody>tr .benisonCard:first").parent().parent().parent().find("td").eq(3).find("span").text();

            parm["PId"] = $("#tableBuy2 tbody>tr .benisonCard:first").parent().parent().parent().find("td").eq(3).attr("pid");
            parm["MId"] = $("#tableBuy2 tbody>tr .benisonCard:first").parent().parent().parent().find("td").eq(3).attr("mid");
            parm["Amount"] = a;
            parm["PriceUnit"] = p;  //单价
            parm["PriceCost"] = $("#tableBuy2 tbody>tr .benisonCard:first").parent().parent().parent().find("td").eq(3).find("span").text();//成本价
            parm["PriceSum"] = $("#tableBuy2 tbody>tr .benisonCard:first").parent().parent().parent().find("td").eq(5).find("span").text();;
            parm["PlaceId"] = 1;
            parm["Type"] = 0;
            //巧克力牌
            if ($("#tableBuy2 tbody>tr .benison:first").text() == "无" || $("#tableBuy2 tbody>tr .benison:first").text() == "请选择生日牌") {
                parm["Benison"] = "不需要";

            } else {
                parm["Benison"] = $("#tableBuy2 tbody>tr .benison:first").text();
            }
            //贺卡
            if ($("#tableBuy2 tbody>tr .benisonCard:first").text() == "无" || $("#tableBuy2 tbody>tr .benisonCard:first").text() == "请选择祝福贺卡") {
                parm["BenisonCard"] = "不需要";

            } else {
                parm["BenisonCard"] = $("#tableBuy2 tbody>tr .benisonCard:first").text();
            }
            //图册
            parm["Brochure"] = 0;
        }
        var carno = $("#tableBuy2 tbody>tr .benisonCard:first").parent().parent().parent().find("td").eq(3).attr("mid") + ",";
        var OrderPeiList = "[";
        var deCount = $("#tableBuy2 tbody>tr .benisonCard:gt(0)").length;
        if (curDetailCount > 1) {
            console.log(curDetailCount);
            $.each($("#tableBuy2 tbody>tr .benisonCard:gt(0)"), function (index, value) {
                carno += $(this).parent().parent().parent().find("td").eq(3).attr("mid") + ",";
                var parmDetail = new Object();
                var a = $(this).parent().parent().parent().find("td").eq(4).text();
                var p = $(this).parent().parent().parent().find("td").eq(3).find("span").text();
                parmDetail["Id"] = $(this).parent().parent().parent().attr("indexpid");
                parmDetail["PId"] = $(this).parent().parent().parent().find("td").eq(3).attr("pid");
                parmDetail["MId"] = $(this).parent().parent().parent().find("td").eq(3).attr("mid");
                parmDetail["Amount"] = a;
                parmDetail["PriceUnit"] = p;  //单价
                parmDetail["PriceCost"] = $(this).parent().parent().parent().find("td").eq(3).find("span").text();//成本价
                parmDetail["PriceAmount"] = $(this).parent().parent().parent().find("td").eq(5).find("span").text();

                parmDetail["PlaceId"] = 1;
                parmDetail["Type"] = 0;
                parmDetail["StatePay"] = parm["StatePay"];
                parmDetail["DiscountMoney"] = 0;
                //巧克力牌
                if ($(this).text().replace(/^\s+|\s+$/g, "") == "无" || $(this).text().replace(/^\s+|\s+$/g, "") == "请选择生日牌") {
                    parmDetail["Benison"] = "不需要";
                    parmDetail["BenisonCard"] = "不需要";
                } else {
                    parmDetail["Benison"] = $(this).text();
                }
                //贺卡
                if ($(this).text().replace(/^\s+|\s+$/g, "") == "无" || $(this).text().replace(/^\s+|\s+$/g, "") == "请选择祝福贺卡") {

                } else {

                    parmDetail["BenisonCard"] = $(this).text();
                }
                //图册

                parmDetail["Brochure"] = 0;
                OrderPeiList += "{PId:" + parmDetail["PId"] +
                    ",MId:" + parmDetail["MId"] +
                    ",Amount:" + parmDetail["Amount"] +
                    ",PriceUnit:" + parmDetail["PriceUnit"] +
                    ",PriceCost:" + parmDetail["PriceCost"] +
                    ",PriceAmount:" + parmDetail["PriceAmount"] +
                    ",StatePay:" + parmDetail["StatePay"] +
                    ",Benison:'" + parmDetail["Benison"] +
                    "',BenisonCard:'" + parmDetail["BenisonCard"] +
                    "',Brochure:'" + parmDetail["Brochure"] +
                    "'},";
            })
        }

        //订单配件
        var peiCount = $(".pei").length;
        $.each($(".pei"), function (index, value) {
            var d = $(this).data("ProductAttr");

            var parm2 = new Object();
            parm2["PId"] = d.PId;
            parm2["MId"] = d.MId;
            parm2["Amount"] = d.Amount;
            parm2["PriceUnit"] = d.PriceUnit;
            parm2["PriceCost"] = d.PriceCost;
            parm2["PriceSum"] = d.PriceAmount;
            parm2["PlaceId"] = 1;
            parm2["StatePay"] = parm["StatePay"];

            //生日牌
            if ($(this).find(".d_title").text().replace(/[ ]/g, "") == "数字蜡烛") {
                parm2["BenisonCard"] = $("#peijian-" + $(this).attr("indexpid").replace(/[^0-9]/ig, "")).val();
            } else if ($(this).find(".d_title").text().replace(/[ ]/g, "") == "蛋糕帽") {
                parm2["BenisonCard"] = $("#peijian-" + $(this).attr("indexpid").replace(/[^0-9]/ig, "")).val();;
            } else {
                parm2["BenisonCard"] = '不需要';
            }
            OrderPeiList += "{PId:" + parm2["PId"] +
                   ",MId:" + parm2["MId"] +
                   ",Amount:" + parm2["Amount"] +
                   ",PriceUnit:" + parm2["PriceUnit"] +
                   ",PriceCost:" + parm2["PriceCost"] +
                   ",PriceAmount:" + parm2["PriceSum"] +
                   ",StatePay:" + parm2["StatePay"] +
                   ",BenisonCard:'" + parm2["BenisonCard"] +
                   "'},";

        });
        if (OrderPeiList.length > 1) {
            OrderPeiList = OrderPeiList.substring(0, OrderPeiList.length - 1);
        }
        OrderPeiList += "]";
        parm["OrderPeiList"] = OrderPeiList;
        if (carno.length > 0) {
            parm["CarNo"] = carno.substring(0, carno.length - 1);
        }
        //防止重复提交
        if (buy2Submit == 1) {
            return;
        }
        parm["StatePay"] = 1;
        parm["PayWay"] = 0;
        var payway2 = $("body").find("input[name=r3]:checked").parent().text();

        if (payway2 == "支付宝") {
            parm["PayWay"] = 3;     //支付宝
            parm["StatePay"] = 0;   //未支付
        } else if (payway2 == "微信支付") {
            parm["PayWay"] = 13;     //支付宝
            parm["StatePay"] = 0;   //未支付
        }
        if (payway2 == "现金") {
            parm["PayWay"] = 0;
            AddPopup("不支持此种支付方式");
            popup($(".p_box1"));
            return;
        } else if (payway2 == "刷银联卡") {
            parm["PayWay"] = 5;
            AddPopup("不支持此种支付方式");
            popup($(".p_box1"));
            return;
        } else if (payway2 == "代金券") {
            parm["PayWay"] = 15; //代金券

        }
        buy2Submit = 1;
        $("#submit_order").text("提交订单中...");

        $.ajax({
            type: "POST",
            url: "BuyCarTran",      //BuyCar
            data: parm,
            dataType: "json",
            success: function (data) {
                if (data.isOK == true) {
                    var carDetail = 0;
                    var peijian = 0;
                    var parm3 = new Object();
                    //parm3.Money = $("#PriceActual").text();
                    parm3.Money = parm['PriceActual'];
                    parm3.OrderId = data.message;
                    parm3.OrderName = $("#tableBuy1 td:first span").text();     //只获取第一个产品名称

                    //如果是支付宝支付
                    if (parm["PayWay"] == 3 && parm3.Money != "" && parm3.OrderId != "") {
                        //cc(parm3.OrderId);
                        $.ajax({
                            type: "POST",
                            url: "Pay",
                            data: parm3,
                            dataType: "json",
                            success: function (data2) {
                                if (data2.isOK == true) {

                                    $("body").append(data2.message);

                                    $("#buy1").hide();
                                    $("#buy2").hide();
                                    $("#buy3").show();
                                }
                            }
                        });
                    } else if (parm["PayWay"] == 13 && parm3.Money != "" && parm3.OrderId != "") {
                        //微信支付
                        location.href = "/Product/WxNativePay?out_trade_no=" + parm3.OrderId;   //total_fee="+parm3Temp.Money+"&

                    } else {
                        //配件添加完后跳转
                        location.href = "Buy3?OrderId=" + data.message;
                    };
                } else {
                    AddPopup(data.message);
                    popup($(".p_box1"));
                    buy2Submit = 0;
                    $("#submit_order").text("提交订单");
                    return false;
                }
            },
            error: function (err) { }
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