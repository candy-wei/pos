<%--
  Created by IntelliJ IDEA.
  User: littleFlower
  Date: 2020/1/23
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no">
    <meta name="format-detection" content="telephone=no"/>
    <title>华辉集团</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/foxui.min.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/iconfont.css?${version}">
    <style type="text/css">
        body {
            position: absolute;;
            max-width: 750px;
            margin: auto;
        }

        .fui-navbar {
            max-width: 750px;
        }

        .fui-navbar, .fui-footer {
            max-width: 750px;
        }
    </style>
</head>
<body>
<div class='fui-page-group '>
    <div class='fui-page  fui-page-current member-cart-page'>
        <div class="fui-header">
            <div class="fui-header-left">
                <a class="back"></a>
            </div>
            <div class="title">我的购物车</div>

            <div class="fui-header-right">
                <a class="btn-edit" style="display:none">编辑</a>
            </div>

        </div>
        <div class='fui-content navbar cart-list' style="bottom: 4.9rem">
            <div id="cart_container"></div>
        </div>

        <div id="footer_container"></div>

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

            .diymenu .item .child {
                border-color: #eeeeee;
                background-color: #f4f4f4;
            }

            .diymenu .item .child a {
                color: #666666;
            }

            .diymenu .item .child a:after {
                border-color: #eeeeee;
                color: #666666;
            }

            .diymenu .item .child .arrow:before {
                background: #eeeeee;
            }

            .diymenu .item .child .arrow:after {
                background: #f4f4f4;
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


    <script type="text/html" id="tpl_member_cart">
        <div class='content-empty'/>
        <img src="http://www.shzh-business.com/addons/ewei_shopv2/static/images/nogoods.png"
             style="width: 6rem;margin-bottom: .5rem;"><br/><p style="color: #999;font-size: .75rem">您的购物车中没有商品哦！</p>
        <br/><a href="#" class='btn btn-sm btn-danger-o external'
                style="border-radius: 100px;height: 1.9rem;line-height:1.9rem;width:  7rem;font-size: .75rem">去首页逛逛吧</a>
        </div>


        <div class="fui-list-group" id="container" style="margin-top: 0">

            <div class="fui-list goods-item align-start"
                 data-cartid="123"
                 data-goodsid="123"
                 data-optionid="123"
                 data-seckill-maxbuy="123"
                 data-seckill-selfcount="123"
                 data-seckill-price="123"
                 data-type="123"
            >
                <div class="fui-list-media ">
                    <input type="checkbox" name="checkbox" class="fui-radio fui-radio-danger cartmode check-item "/>
                    <input type="checkbox" name="checkbox" class="fui-radio fui-radio-danger editmode edit-item"/>
                </div>

                <div class="fui-list-media image-media">
                    <a href="#">
                        <img id="gimg_" class="">
                    </a>
                </div>
                <div class="fui-list-inner">
                    <a href="$">
                        <div class="subtitle">
                            <span class='fui-label fui-label-danger'>批发</span>
                            <span class='fui-label fui-label-danger'>折扣</span>
                            <div class="fui fui-label fui-label-danger">123456</div>
                        </div>
                        <div class="text cart-option cartmode">
                            <div class="choose-option">titile123</div>
                        </div>
                    </a>
                    <div class="text  cart-option  editmode">
                        <div class="choose-option">option</div>
                    </div>
                    <div class='price'>
                        <span class="bigprice text-danger">￥<span class='marketprice'>5678</span></span>
                        <div class="fui-number small "
                             data-value="123"
                             data-max="123"
                             data-min="123"
                             data-mintoast="123起批"
                        >

                            <div class="fui-number small "
                                 data-value="123"
                                 data-max="456"
                                 data-min="789"
                                 data-maxtoast="最多购买7876"
                                 data-mintoast="336起售"
                            >
                                <div class="minus">-</div>
                                <input class="num shownum" type="tel" name="" value="ddd"/>
                                <div class="plus ">+</div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </script>

    <script type="text/html" id="tpl_member_cart_footer">
        <div class="fui-footer cartmode" style="bottom: 2.45rem">
            <div class="fui-list noclick">
                <div class="fui-list-media editmode">
                    <label class="checkbox-inline editcheckall"><input type="checkbox" name="checkbox"
                                                                       class="fui-radio fui-radio-danger "/>&nbsp;全选</label>
                </div>
                <div class="fui-list-media">
                    <label class="checkbox-inline checkall"><input type="checkbox" name="checkbox"
                                                                   class="fui-radio fui-radio-danger "/>&nbsp;全选</label>
                </div>
                <div class="fui-list-inner">
                    <div class='subtitle'>合计:<span class="text-danger bigprice"> ￥</span><span
                            class='text-danger totalprice  bigprice'>123</span></div>
                    <div class='text'>不含运费</div>
                </div>
                <div class='fui-list-angle'>
                    <div style="width: 5rem;" class="btn  btn-submit btn-default disabled btn-danger">结算(<span
                            class='total'>123</span>)
                    </div>
                </div>
            </div>
        </div>
        <div class="fui-footer editmode" style="bottom: 2.45rem">
            <div class="fui-list noclick">
                <div class="fui-list-media">
                    <label class="checkbox-inline editcheckall"><input type="checkbox" name="checkbox"
                                                                       class="fui-radio fui-radio-danger "/>&nbsp;全选</label>
                </div>
                <div class='fui-list-angle'>
                    <div class="btn  btn-default btn-favorite disabled attention">移到关注</div>
                    <div class="btn  btn-danger btn-delete  disabled">删除</div>
                </div>
            </div>
        </div>
    </script>
    <script type="text/html" id="option-picker">
        <div class="option-picker ">
            <div class="option-picker-inner">
                <div class="option-picker-cell goodinfo">
                    <div class="closebtn"><i class="icon icon-guanbi1"></i></div>
                    <div class="img"><img class='thumb' src=""/></div>
                    <div class="info info-price text-danger">
						<span>
				￥
				<span class='price'>123</span>
			</span>

                    </div>
                    <div class="info info-total">
                        <span class='total'>123</span> 件
                    </div>
                    <div class="info info-titles">dd</div>
                </div>
                <div class="option-picker-options">
                    <div class="option-picker-cell option spec">
                        <div class="title">123q</div>
                        <div class="select">
                            <a href="javascript:;" class="btn btn-default btn-sm nav spec-item spec-item"
                               data-id="123" data-thumb="rrr">rrr</a>
                        </div>
                    </div>

                    <div class="fui-cell-group" style="margin-top:0">
                        <div class="fui-cell">
                            <div class="fui-cell-label">数量</div>
                            <div class="fui-cell-info"></div>
                            <div class="fui-cell-mask noremark">
                                <div class="fui-number">
                                    <div class="minus">-</div>
                                    <input class="num" type="tel" name="" value="123"/>
                                    <div class="plus ">+</div>
                                </div>
                            </div>
                        </div>
                        <input class="num" type="hidden" name="" value="1"/>
                    </div>
                </div>
                <div class="fui-navbar  ">
                    <a href="javascript:;" class="nav-item btn cartbtn" style='display:none'>加入购物车</a>
                    <a href="javascript:;" class="nav-item btn buybtn" style='display:none'>立刻购买</a>
                    <a href="javascript:;" class="nav-item btn confirmbtn" style='display:none'>确定</a>
                </div>
            </div>
        </div>
    </script>
</div>

<span style="display:none"></span>
</body>
</html>
