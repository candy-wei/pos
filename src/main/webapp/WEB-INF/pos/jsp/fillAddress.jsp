<%--
  Created by IntelliJ IDEA.
  User: littleFlower
  Date: 2020/1/23
  Time: 11:39
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
</head>

<body>

<div class='fui-page-group '>
    <div class='fui-page  fui-page-current'>
        <div class="fui-header">
            <div class="fui-header-left">
                <a class="back"></a>
            </div>
            <div class="title">新建地址</div>
            <div class="fui-header-right"><a data-toggle="delete" data-addressid=""></a></div>
        </div>
        <div class='fui-content'>
            <form method='post' class='form-ajax'>
                <input type='hidden' id='addressid' value=""/>
                <div class='fui-cell-group'>
                    <div class='fui-cell'>
                        <div class='fui-cell-label'>收货人</div>
                        <div class='fui-cell-info c000'><input type="text" id='realname' name='realname' value=""
                                                               placeholder="请填写收货人姓名" class="fui-input"/></div>
                    </div>
                    <div class='fui-cell'>
                        <div class='fui-cell-label'>联系电话</div>
                        <div class='fui-cell-info c000'><input type="tel" id='mobile' name='mobile' value=""
                                                               placeholder="请填写联系电话" class="fui-input"/></div>
                    </div>
                    <div class='fui-cell'>
                        <div class='fui-cell-label'>所在地区</div>
                        <div class='fui-cell-info'><input type="text" id='areas' name='areas' data-value="" value=""
                                                          placeholder="所在地区" class="fui-input" readonly=""/></div>
                    </div>
                    <div class='fui-cell'>
                        <div class='fui-cell-label'>详细地址</div>
                        <div class='fui-cell-info'><input type="text" id='address' name='address' value=""
                                                          placeholder='街道，楼牌号等' class="fui-input"/></div>
                    </div>
                    <div class="fui-cell ">
                        <div class="fui-cell-label" style="width:auto">设置默认地址</div>
                        <div class="fui-cell-info ">
                            <input type="checkbox" id='isdefault' class="fui-switch fui-switch-danger pull-right">
                        </div>
                    </div>
                </div>
                <a id="btn-submit" class='external btn btn-danger block' style="margin-top:1.25rem">保存地址</a>
            </form>
        </div>
    </div>
</div>
<span style="display:none"></span>
</body>
</html>
