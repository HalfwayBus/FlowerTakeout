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
    <title>订单总览</title>
    <link rel="stylesheet" href="static/css/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/kangyuan.css"/>
    <script src="static/js/frontjs/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="static/js/frontjs/kangyuan.js" type="text/javascript"></script>
    <script src="static/js/frontjs/layer/layer.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="content shop_line_pag">
    <div class="local">
        <a href="#">首页</a> \ <a href="#">订单总览</a><i class="fa fa-arrow-left"></i>
    </div>
    <div class="shop_line">
        <div class="shop_line_box">
            <h2>订单号：<span>4401922910442</span></h2>
            <p>时间：<span>2016-12-07</span></p>
            <p>商品：</p>
            <img src="static/images/img/2.jpg">
            <p>iphone10s尊享豪华定制版<i>x</i><span>12</span></p>
            <p>收货地址：<span>广州市萝岗区广州商学院1栋</span></p>
        </div>
        <div class="shop_line_box">
            <h2>订单号：<span>4401922910556</span></h2>
            <p>时间：<span>2016-12-07</span></p>
            <p>商品：</p>
            <img src="static/images/img/3.jpg">
            <p>康园圈至尊vip<i>x</i><span>120</span></p>
            <p>收货地址：<span>广州市萝岗区广州商学院1栋</span></p>
        </div>
        <div class="shop_line_box">
            <h2>订单号：<span>4401922910442</span></h2>
            <p>时间：<span>2016-12-07</span></p>
            <p>商品：</p>
            <img src="static/images/img/4.jpg">
            <p>观赏性小动物——梁汁呤<i>x</i><span>250</span></p>
            <p>收货地址：<span>广州市萝岗区广州商学院1栋</span></p>
        </div>
        <div class="shop_line_box">
            <h2>订单号：<span>4401922910442</span></h2>
            <p>时间：<span>2016-12-07</span></p>
            <p>商品：</p>
            <img src="static/images/img/5.jpg">
            <p>发票（你懂的）<i>x</i><span>9999</span></p>
            <p>收货地址：<span>广州市萝岗区广州商学院1栋</span></p>
        </div>
        <div class="shop_line_box">
            <h2>订单号：<span>4401922910442</span></h2>
            <p>时间：<span>2016-12-07</span></p>
            <p>商品：</p>
            <img src="static/images/img/1.jpg">
            <p>12月枪手（你也懂得）<i>x</i><span>1</span></p>
            <p>收货地址：<span>广州市萝岗区广州商学院1栋</span></p>
        </div>
        <div class="shop_line_box">
            <h2>订单号：<span>4401922910442</span></h2>
            <p>时间：<span>2016-12-07</span></p>
            <p>商品：</p>
            <img src="static/images/img/2.jpg">
            <p>咬我啊<i>x</i><span>10</span></p>
            <p>收货地址：<span>广州市萝岗区广州商学院1栋</span></p>
        </div>
        <div class="clear"></div>
    </div>
</div>
<a href="javascript:;" class="addmore">加载更多<i class="fa fa-arrow-circle-o-down"></i></a>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</body>
</html>

