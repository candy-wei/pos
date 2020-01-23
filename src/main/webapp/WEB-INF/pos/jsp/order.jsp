<%--
  Created by IntelliJ IDEA.
  User: littleFlower
  Date: 2020/1/23
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no">
    <meta name="format-detection" content="telephone=no"/>
    <title>小苗科技</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/foxui.min.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/iconfont.css?${version}">
</head>

<body>

<div class='fui-page-group '>
    <style>
        .fui-list-group-title.lineblock2:before {
            content: "";
            position: absolute;
            left: .5rem;
            bottom: 0;
            right: .5rem;
            height: 1px;
            border-top: 1px solid #ebebeb;
            -webkit-transform-origin: 0 100%;
            -ms-transform-origin: 0 100%;
            transform-origin: 0 100%;
            -webkit-transform: scaleY(0.5);
            -ms-transform: scaleY(0.5);
            transform: scaleY(0.5);
        }

    </style>
    <div class='fui-page order-list-page '>
        <div class="fui-header">
            <div class="fui-header-left">
                <a class="back"></a>
            </div>
            <div class="title">我的订单</div>
            <div class="fui-header-right">
                <a class="icon icon-delete external">回收站</a>
            </div>
        </div>
        <div id="tab" class="fui-tab fui-tab-danger">
            <a data-tab="tab" class="external " data-status=''>全部</a>
            <a data-tab="tab0" class="external active" data-status='0'>待付款</a>
            <a data-tab="tab1" class="external " data-status='1'>待发货</a>
            <a data-tab="tab2" class="external " data-status='2'>待收货</a>
            <a data-tab="tab3" class="external " data-status='3'>已完成</a>
        </div>

        <div class='fui-content navbar order-list'>
            <div class='fui-content-inner'>
                <div class='content-empty' style='display:none;'>
                    <img src="http://www.shzh-business.com/addons/ewei_shopv2/static/images/nolist.png"
                         style="width: 6rem;margin-bottom: .5rem;"><br/>
                    <p style="color: #999;font-size: .75rem">您暂时没有任何订单哦！</p><br/><a
                        href="#" class='btn btn-sm btn-danger-o external'
                        style="border-radius: 100px;height: 1.9rem;line-height:1.9rem;width:  7rem;font-size: .75rem">去首页逛逛吧</a>
                </div>

                <div class='container'></div>
                <div class='infinite-loading'><span class='fui-preloader'></span><span class='text'> 正在加载...</span>
                </div>
            </div>
        </div>

        <script id='tpl_order_index_list' type='text/html'>
            <div class='fui-list-group order-item'>
                <a href="#">
                    <div class='fui-list-group-title lineblock2 '>
                        <span class="cycle-tip">周期购</span>
                        <span class='status'>99</span>
                    </div>
                    <div class="fui-list goods-list">
                        <div class="fui-list-media" style="">
                            <img class="">
                        </div>
                        <div class="fui-list-inner">
                            <div class="text goodstitle towline">ewer<span
                                    class="fui-label fui-label-danger">123</span>
                            </div>
                            <span class="fui-label fui-label-danger">赠品</span>
                            <div class='subtitle' style="color:#999;">1234</div>
                        </div>
                        <div class='fui-list-angle'>
                            &yen; <span class='marketprice'>123<br/>
                                style="color: #999">ddd</span>
                        </div>
                    </div>

                    <div class='fui-list-group-title lineblock'>
                        <span class='status noremark'>共 <span>uu</span> 期商品 实付: <span
                                class='text-danger'>&yen; <span class="bigprice">rrr</span></span></span>
                        <span class='status noremark'>共 <span>rrrr</span> 个商品 实付: <span
                                class='text-danger'>&yen; <span class="bigprice">ttt</span></span></span>
                    </div>
                </a>
                <div class='fui-list-group-title lineblock   opblock'>
        <span class='status noremark'>

            <div class="btn btn-default btn-default-o order-deleted">彻底删除订单</div>
            <div class="btn btn-default btn-default-o order-recover">恢复订单</div>
        <div class="btn btn-default btn-default-o order-cancel">取消订单
            <select class="btn btn-sm btn-default-o">
                <option value="">不取消了</option>
                <option value="我不想买了">我不想买了</option>
                <option value="信息填写错误，重新拍">信息填写错误，重新拍</option>
                <option value="同城见面交易">同城见面交易</option>
                <option value="其他原因">其他原因</option>
            </select>
        </div>
        <a class="btn btn-sm btn-danger-o external"
           href="#">支付订单</a>

    <div class="btn btn-sm btn-danger-o order-verify"
         style="margin-left:.5rem;">
        <i class="icon icon-erweimazhuanhuan"></i>
        <span>我要取货   我要使用</span>
    </div>

    <div class="btn btn-default btn-default-o order-delete">删除订单</div>

    <a class="btn btn-default btn-default-o" data-nocache="true"
       href="#">追加评价</a>

    <a class="btn btn-sm btn-danger-o" data-nocache="true"
       href="#">评价</a>

    <a class="btn btn-default btn-default-o"
       href="#"
       data-nocache="true">查看物流</a>

    <div class="btn btn-sm btn-danger-o order-finish">确认收货</div>

            <a class="btn btn-default btn-default-o" data-nocache="true"
               href="#">申请退款  申请售后   中  </a>

            <a class="btn btn-default btn-default-o" data-nocache="true"
               href="#"> 申请退款 中</a>

        </span>
                </div>
            </div>
        </script>

        <link href="#" rel="stylesheet"
              type="text/css"/>
        <style type="text/css">
            .diymenu .item .inner {
                background: #ffffff;
            }

            .diymenu .item .inner:before,
            .diymenu .item .inner:after {
                border-color: #ffffff;
            }

            .diymenu .item .inner .text {
                color: #666666;
            }

            .diymenu .item .inner .icon {
                color: #999999 !important;
            }

            .diymenu .item.on .inner {
                background: #ffffff;
            }

            .diymenu .item.on .inner .text {
                color: #666666;
            }

            .diymenu .item.on .inner .icon {
                color: #999999 !important;
            }

            .diymenu .item .child a {
                color: #666666;
            }

            .diymenu .item .child a:after {
                border-color: #eeeeee;
                color: #666666;
            }
        </style>
        <div class="diymenu" style=" position: absolute;max-width: 750px;">
            <div class="item item-col-3 " onclick="location.href = '#'">
                <div class="inner  top">
                    <span class="icon icon-home top"></span>
                    <span class="text top">商城首页</span>
                </div>
            </div>
            <div class="item item-col-3 "
                 onclick="location.href = '#'">
                <div class="inner  top">
                    <span class="icon icon-qrcode top"></span>
                    <span class="text top">我的二维码</span>
                </div>
            </div>
            <div class="item item-col-3 "
                 onclick="location.href = '#'">
                <div class="inner  top">
                    <span class="icon icon-person2 top"></span>
                    <span class="text top">个人中心</span>
                </div>
            </div>
        </div>
    </div>
</div>
<span style="display:none"></span>
</body>
