<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.huahui.comon.conf.Conf" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setAttribute("path", path);
    request.setAttribute("basePath", basePath);
    request.setAttribute("version", Conf.get("promote.resource.version"));
    request.setAttribute("imgPath", Conf.get("promote.img.path"));
    request.setAttribute("debugEnable", Conf.get("promote.debug.enable"));
%>
<!-- 通用meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">

<!-- 通用js -->
<script src="${path}/js/jquery.min-2.0.0.js?${version}"></script>
<script src="${path}/js/util.js?${version}"></script>
<c:if test="${debugEnable=='true'}">
    <script src="${path}/js/vconsole.min.js?${version}"></script>
    <script type="text/javascript">
        var vConsole = new VConsole();
    </script>
</c:if>
