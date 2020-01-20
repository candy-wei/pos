<%--
  Created by IntelliJ IDEA.
  User: littleFlower
  Date: 2020/1/16
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户首页</title>

    <jsp:include page="base.jsp"/>

    <link rel="stylesheet" type="text/css" href="${path}/css/foxui.min.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/iconfont.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/index.css?${version}">
</head>
<body>
<div class="fui-page-group">
    <div class="fui-page fui-page-current" id="fui-page-1578990810185">
        <div class="fui-header">
            <div class="fui-header-left">
                <a class="back" onclick="location.back()"></a>
            </div>
            <div class="title">会员中心</div>
            <div class="fui-header-right"></div>
        </div>

        <div class="fui-content member-page navbar">
            <div style="overflow: hidden;height: 7.5rem;position: relative;background: #fff">
                <div class="headinfo" style="z-index:100;border-radius: 50%;">
                    <a class="setbtn float-wright"
                       href="#"
                       data-nocache="true"><i class="icon icon-shezhi"></i></a>
                    <div class="child" style="margin-left: 0.94rem">
                        <div class="title">剩余红包数量 <span class="num">0</span> 个</div>
                    </div>
                    <div class="child userinfo">
                        <a href="#"
                           data-nocache="true" style="color: white;">
                            <div class="face"><img
                                    src="http://thirdwx.qlogo.cn/mmopen/ClUBqI2ptbTR74EeBtI9IPpZzRrIvLYu0f8xCsA7NrmY2BqdibDfpx8BXZHwhWuTNNK23bOrUgjhcs29TTFP6qzCR3nePtZYB/132"
                                    onerror="this.src='../addons/ewei_shopv2/static/images/noface.png'"></div>
                            <div class="name">SEPTEMber</div>
                        </a>
                        <div class="level">
                            [普通会员]<br>

                            [普通代理]

                        </div>
                    </div>
                    <div class="child" style="margin-right: 0.94rem">
                        <div class="title">今日可领红包数 <span class="num">0</span> 个</div>
                    </div>
                </div>
                <div class="member_header"></div>
            </div>

            <div class="fui-cell-group fui-cell-click">
                <a class="fui-cell">
                    <div class="fui-cell-text" style="width:100%;height:40px;">
                        <div style="width:100%;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">总收益</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0.00</div>
                        </div>

                    </div>
                </a>
                <a class="fui-cell">
                    <div class="fui-cell-icon"><!--<i class="icon icon-xiaofei"></i>--></div>
                    <div class="fui-cell-text" style="width:100%;height:40px;">
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">直推奖励</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0.00</div>
                        </div>
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">团队奖励</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0.00</div>
                        </div>
                    </div>
                </a>
                <a class="fui-cell">
                    <div class="fui-cell-icon"><!--<i class="icon icon-xiaofei"></i>--></div>
                    <div class="fui-cell-text" style="width:100%;height:40px;">
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">待入账奖励</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0.00</div>
                        </div>
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">冻结金额</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0.00</div>
                        </div>
                    </div>
                </a>

                <a class="fui-cell">
                    <div class="fui-cell-icon"><!--<i class="icon icon-xiaofei"></i>--></div>
                    <div class="fui-cell-text" style="width:100%;height:40px;">
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">A区人数</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0</div>
                        </div>
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">B区人数</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0</div>
                        </div>
                    </div>
                </a>

                <a class="fui-cell">
                    <div class="fui-cell-icon"><!--<i class="icon icon-xiaofei"></i>--></div>
                    <div class="fui-cell-text" style="width:100%;height:40px;">
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">直推合伙人总人数</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0</div>
                        </div>
                        <div style="width:150px;height:100%;float:left;">
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">团队合伙人总人数</div>
                            <div style="width:100%;height:20px;line-height:20px;text-align:center;">0</div>
                        </div>
                    </div>
                </a>

                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-heilongjiangtubiao11"></i></div>
                    <div class="fui-cell-text"><p>我的团队</p></div>
                    <div class="fui-cell-remark"></div>
                </a>
            </div>

            <div class="fui-cell-group fui-cell-click" style="margin-top: 10px;">
                <a class="fui-cell external"
                   href="#">
                    <div class="fui-cell-icon"><i class="icon icon-dingdan1"></i></div>
                    <div class="fui-cell-text">我的订单</div>
                    <div class="fui-cell-remark" style="font-size: 0.65rem;">查看全部订单</div>
                </a>
                <div class="fui-icon-group selecter col-4">
                    <a class="fui-icon-col external"
                       href="#">
                        <div class="icon icon-green radius"><i class="icon icon-daifukuan1"></i></div>
                        <div class="text">待付款</div>
                    </a>
                    <a class="fui-icon-col external"
                       href="#">
                        <div class="icon icon-orange radius"><i class="icon icon-daifahuo1"></i></div>
                        <div class="text">待发货</div>
                    </a>
                    <a class="fui-icon-col external"
                       href="#">
                        <div class="icon icon-blue radius"><i class="icon icon-daishouhuo1"></i></div>
                        <div class="text">待收货</div>
                    </a>
                    <a class="fui-icon-col external"
                       href="#">
                        <div class="icon icon-pink radius"><i class="icon icon-daituikuan2"></i></div>
                        <div class="text">退换货</div>
                    </a>
                </div>
            </div>
            <div class="fui-cell-group fui-cell-click external">
                <a class="fui-cell"
                   href="./index.php?i=1&amp;c=entry&amp;m=ewei_shopv2&amp;do=mobile&amp;r=member.bind">
                    <div class="fui-cell-text">
                        <i class="icon icon-shouji" style="color: #666;"></i>
                        绑定手机号
                        <div class="fui-cell-tip">如果您用手机号注册过会员或您想通过微信外购物请绑定您的手机号码</div>
                    </div>
                    <div class="fui-cell-remark"></div>
                </a>
            </div>

            <div class="fui-cell-group fui-cell-click">
                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-cart"></i></div>
                    <div class="fui-cell-text"><p>我的购物车</p></div>
                    <div class="fui-cell-remark"></div>
                </a>
            </div>

            <div class="fui-cell-group fui-cell-click">
                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-tixian"></i></div>
                    <div class="fui-cell-text"><p>余额提现</p></div>
                    <div class="fui-cell-remark"></div>
                </a>
                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-xiaofei"></i></div>
                    <div class="fui-cell-text"><p>
                        余额明细 </p></div>
                    <div class="fui-cell-remark"></div>
                </a>
                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-xiaofei"></i></div>
                    <div class="fui-cell-text"><p>佣金奖励记录</p></div>
                    <div class="fui-cell-remark"></div>
                </a>
                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-xiaofei"></i></div>
                    <div class="fui-cell-text"><p>报单</p></div>
                    <div class="fui-cell-remark"></div>
                </a>

                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-tixian"></i></div>
                    <div class="fui-cell-text"><p>佣金提现：我的佣金￥0.00</p></div>
                    <div class="fui-cell-remark"></div>
                </a>

                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-xiaofei"></i></div>
                    <div class="fui-cell-text"><p>佣金提现记录 </p></div>
                    <div class="fui-cell-remark"></div>
                </a>

            </div>
            <div class="fui-cell-group fui-cell-click">
                <a class="fui-cell" href="#">
                    <div class="fui-cell-icon"><i class="icon icon-dingwei1"></i></div>
                    <div class="fui-cell-text"><p>收货地址管理</p></div>
                    <div class="fui-cell-remark"></div>
                </a>
            </div>
        </div>
    </div>

    <!-- footnav absmu -->
    <div class="diymenu" style="position: absolute;max-width: 750px;">
        <div class="item item-col-3 "
             onclick="location.href = '#'">
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
        <div class="item item-col-3 on"
             onclick="location.href = '#'">
            <div class="inner  top">
                <span class="icon icon-person2 top"></span>
                <span class="text top">个人中心</span>
            </div>
        </div>
    </div>

    <!--<a class="diy-layer external"
       style="width: 35px; position: fixed; display: block; overflow: hidden; z-index: 999; top: 175px; left: 0px; text-align: left;"
       href="http://wpa.qq.com/msgrd?v=3&amp;uin=3299511486&amp;site=qq&amp;menu=yes"><img
            src="http://www.shzh-business.com/addons/ewei_shopv2/plugin/diypage/static/images/chat.png"
            style="height: auto; width: 100%; display: block;"></a>-->

    <span style="display:none"></span>
</div>

</body>
</html>