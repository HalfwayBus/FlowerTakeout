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
    <title>首页</title>
    <link rel="stylesheet" href="static/css/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/kangyuan.css"/>
    <link rel="stylesheet" href="static/css/calendar.css">
    <link rel="stylesheet" href="static/css/lunbo.css">
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <script src="static/js/frontjs/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="static/js/frontjs/kangyuan.js" type="text/javascript"></script>
    <script src="static/js/frontjs/layer/layer.js" type="text/javascript"></script>
    <script src="static/js/frontjs/lunbo.js" type="text/javascript"></script>

    <style type="text/css">
    	/*.text_long{
    		width:300px;
    	}
    	#noticesList{
    		margin-top:6px;
    	}
    	#dynamicsList{
    		margin-top:3px;
    	}*/
    </style>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="banner">
    <ul class="img">
        <li><a href="#"><img src="static/images/img/1.jpg"></a></li>
        <li><a href="#"><img src="static/images/img/2.jpg"></a></li>
        <li><a href="#"><img src="static/images/img/3.jpg"></a></li>
        <li><a href="#"><img src="static/images/img/4.jpg"></a></li>
        <li><a href="#"><img src="static/images/img/5.jpg"></a></li>
        <li><a href="#"><img src="static/images/img/6.jpg"></a></li>
    </ul>

    <ul class="num">

    </ul>

    <div class="btn btn_left">&lt;</div>
    <div class="btn btn_right">&gt;</div>
    <div class="menuContent">
        <div class="item">
            <a href="#">购物广场<span>&#62;</span></a>
        </div>
        <div class="item">
            <a href="#">活动分享<span>&#62;</span></a>
        </div>
        <div class="item">
            <a href="#">精彩活动<span>&#62;</span></a>
        </div>
        <div class="item">
            <a href="#">联系我们<span>&#62;</span></a>
        </div>
    </div>
</div>
<div class="content">
        <div class="cont_box">
            <p><i class="fa fa-shopping-cart"></i>购物</p>
        </div>
        <div class="cont_box">
            <p><i class="fa fa-share-alt-square"></i>分享</p>
        </div>
        <div class="cont_box">
            <p><i class="fa fa-street-view"></i>活动</p>
        </div>
        <div class="cont_box">
            <p><i class="fa fa-send"></i>联系我们</p>
        </div>
    <div class="clear"></div>

</div>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</body>
</html>

