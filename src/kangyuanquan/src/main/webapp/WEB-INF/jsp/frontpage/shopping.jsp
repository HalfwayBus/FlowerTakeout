<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>商品浏览</title>
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
        <a href="#">首页</a> \ <a href="#">店铺浏览</a> \ <a href="#">商品浏览</a><i class="fa fa-arrow-left"></i>
    </div>
    <div class="river_box">
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
        <div class="shopping"></div>
    </div>
</div>
<a href="javascript:;" class="addmore">加载更多<i class="fa fa-arrow-circle-o-down"></i></a>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</body>
</html>

