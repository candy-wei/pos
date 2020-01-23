<%--
  Created by IntelliJ IDEA.
  User: littleFlower
  Date: 2020/1/23
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no">
    <script> document.documentElement.style.fontSize = document.documentElement.clientWidth / 750 * 40 + "px";</script>
    <meta name="format-detection" content="telephone=no"/>
    <title>小苗科技</title>
    <link rel="stylesheet" type="text/css" href="${path}/css/foxui.min.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/style.css?${version}">
    <link rel="stylesheet" type="text/css" href="${path}/css/iconfont.css?${version}">
</head>
<body>

<div class='fui-page-group '>
    <div class='fui-page  fui-page-current'>
        <div class="fui-header">
            <div class="fui-header-left">
                <a class="back"></a>
            </div>
            <div class="title">收货地址</div>
            <div class="fui-header-right">&nbsp;</div>
        </div>
        <div class='fui-content navbar'>
            <div class='content-empty'>
                <img src="http://www.shzh-business.com/addons/ewei_shopv2/static/images/noadd.png"
                     style="width: 6rem;margin-bottom: .5rem;"><br/>
                <p style="color: #999;font-size: .75rem">您暂时没有任何收货地址哦！</p>
            </div>
        </div>
        <div class='fui-navbar'>
            <a href="#" class='nav-item btn btn-danger external' data-nocache="true"><i class="icon icon-add"></i> 新建地址</a>
        </div>
        <script id="tpl_address_item" type="text/html">
            <div class="fui-list-group address-item" style='margin-top:5px;'>
                <div class="fui-list">
                    <div class="fui-list-inner">
                        <div class="title"><span class='realname'>www</span> <span class='mobile'>www</span></div>
                        <div class="text">
                            <span class='address'>dddd</span>
                        </div>
                        <div class='bar'>
                            <span class='pull-right'>
                                <a class="external" href="#"><i class='icon icon-edit'></i> 编辑</a>&nbsp;&nbsp;
                                <a class='external'><i class='icon icon-delete'></i> 删除</a>
                            </span>

                            <label class='radio-inline'>
                                <input type="radio" class="fui-radio  fui-radio-danger"/> 设置默认
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </script>
        <script language='javascript'>require(['biz/member/address'], function (modal) {
            modal.initList();
        });</script>
    </div>
    <span style="display:none"></span>
</div>
</body>
</html>
