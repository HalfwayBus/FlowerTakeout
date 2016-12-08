<%@ page language="java" isELIgnored="false" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>店铺浏览</title>
    <link rel="stylesheet" href="static/css/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/kangyuan.css"/>
    <script src="static/js/frontjs/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="static/js/frontjs/kangyuan.js" type="text/javascript"></script>
    <script src="static/js/frontjs/layer/layer.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="content live_pag">
    <div class="local">
        <a href="#">首页</a> \ <a href="#">店铺浏览</a><i class="fa fa-arrow-left"></i>
    </div>
    <div href="app_index/goshopping.do" class="live_box">
            <c:if test="${not empty shopList}">
                <ul class="img">
                    <c:forEach items="${shopList}" var="var" varStatus="vs">
                        <div class="shop_box">
                            <img src="${var.LOGO}">
                            <a href="app_index/goshopping.do?STOP_IDsa=${var.STOPMANAGE_ID}">
                                <div class="live_box_text">
                                    <h2>${var.STOPNAME}</h2>
                                    <p>商品信息：${var.INTRODUCTION}</p>
                                </div>
                                <span class="tessline">进入店铺<i class="fa fa-arrow-circle-right"></i></span>
                            </a>
                        </div>
                    </c:forEach>
                </ul>
            </c:if>
    </div>
</div>
<a href="javascript:;" class="addmore">加载更多<i class="fa fa-arrow-circle-o-down"></i></a>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</body>
</html>

