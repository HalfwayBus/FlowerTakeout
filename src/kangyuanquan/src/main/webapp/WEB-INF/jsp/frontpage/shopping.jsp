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
        <c:if test="${not empty goodsList}">
            <c:forEach items="${goodsList}" var="var" varStatus="vs">
                <div class="shopping">
                    <img src="static/images/img/1.jpg">
                    <div class="shopping_text">
                        <h3>${var.NAME}</h3>
                        <p>${var.DETAIL}</p>
                        <hr/>
                        <div>
                            ￥：${var.PRICE}
                            <div style="margin-top: 15px">
                                <button onclick="addNum('${var.GOODS_ID}');">+</button><input id="num${var.GOODS_ID}" type="text" value="1" style="width: 20px;margin-left: 5px;margin-right: 5px"/><button onclick="subNum('${var.GOODS_ID}');">-</button> <button onclick="cannotbuy();" style="margin-left: 10px">购买</button>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
        <div class="clear"></div>
    </div>
</div>
<script>
    function cannotbuy() {
        alert("对不起，该功能尚未开放");
    }
    function addNum(GOODS_ID) {
       var n = $("#num"+GOODS_ID).val();
       var newN = parseInt(n)+1;
        $("#num"+GOODS_ID).val(newN);
    }
    function subNum(GOODS_ID) {
       var n = $("#num"+GOODS_ID).val();
       var newN = parseInt(n)-1;
        $("#num"+GOODS_ID).val(newN);
    }
</script>
<a href="javascript:;" class="addmore">加载更多<i class="fa fa-arrow-circle-o-down"></i></a>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</body>
</html>

