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
    <div class="live_box">
        <div class="shop_box">
            <img src="static/images/img/1.jpg">
            <a href="#">
            <div class="live_box_text">
                <h2>店铺名号</h2>
                <p>商品信息：纷纷落叶飘向大地，白雪下种子沉睡，一朵花开了又迅速枯萎，在流转的光的阴影中，星图不断变幻，海水中矗起高山，草木几百代的荣枯，总有一片片的迎风挺立，酷似它们的祖先。</p>
            </div>
            <span class="tessline">店铺详情<i class="fa fa-arrow-circle-right"></i></span>
            </a>
        </div>
        <div class="shop_box">
            <img src="static/images/img/2.jpg">
            <a href="#">
                <div class="live_box_text">
                    <h2>店铺名号</h2>
                    <p>商品信息：纷纷落叶飘向大地，白雪下种子沉睡，一朵花开了又迅速枯萎，在流转的光的阴影中，星图不断变幻，海水中矗起高山，草木几百代的荣枯，总有一片片的迎风挺立，酷似它们的祖先。</p>
                </div>
                <span class="tessline">店铺详情<i class="fa fa-arrow-circle-right"></i></span>
            </a>
        </div>
        <div class="shop_box">
            <img src="static/images/img/3.jpg">
            <a href="#">
                <div class="live_box_text">
                    <h2>店铺名号</h2>
                    <p>商品信息：纷纷落叶飘向大地，白雪下种子沉睡，一朵花开了又迅速枯萎，在流转的光的阴影中，星图不断变幻，海水中矗起高山，草木几百代的荣枯，总有一片片的迎风挺立，酷似它们的祖先。</p>
                </div>
                <span class="tessline">店铺详情<i class="fa fa-arrow-circle-right"></i></span>
            </a>
        </div>
        <div class="shop_box">
            <img src="static/images/img/4.jpg">
            <a href="#">
                <div class="live_box_text">
                    <h2>店铺名号</h2>
                    <p>商品信息：纷纷落叶飘向大地，白雪下种子沉睡，一朵花开了又迅速枯萎，在流转的光的阴影中，星图不断变幻，海水中矗起高山，草木几百代的荣枯，总有一片片的迎风挺立，酷似它们的祖先。</p>
                </div>
                <span class="tessline">店铺详情<i class="fa fa-arrow-circle-right"></i></span>
            </a>
        </div>
        <div class="shop_box">
            <img src="static/images/img/5.jpg">
            <a href="#">
                <div class="live_box_text">
                    <h2>店铺名号</h2>
                    <p>商品信息：纷纷落叶飘向大地，白雪下种子沉睡，一朵花开了又迅速枯萎，在流转的光的阴影中，星图不断变幻，海水中矗起高山，草木几百代的荣枯，总有一片片的迎风挺立，酷似它们的祖先。</p>
                </div>
                <span class="tessline">店铺详情<i class="fa fa-arrow-circle-right"></i></span>
            </a>
        </div>
        <div class="shop_box">
            <img src="static/images/img/6.jpg">
            <a href="#">
                <div class="live_box_text">
                    <h2>店铺名号</h2>
                    <p>商品信息：纷纷落叶飘向大地，白雪下种子沉睡，一朵花开了又迅速枯萎，在流转的光的阴影中，星图不断变幻，海水中矗起高山，草木几百代的荣枯，总有一片片的迎风挺立，酷似它们的祖先。</p>
                </div>
                <span class="tessline">店铺详情<i class="fa fa-arrow-circle-right"></i></span>
            </a>
        </div>
    </div>
</div>
<a href="javascript:;" class="addmore">加载更多<i class="fa fa-arrow-circle-o-down"></i></a>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</body>
</html>

