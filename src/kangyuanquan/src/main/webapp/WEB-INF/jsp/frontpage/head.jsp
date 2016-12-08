<%@ page language="java" isELIgnored="false" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="head">
    <div class="headbg"></div>
    <div class="nav">
        <a href="#" class="head_ba">KANG-YUAN-LIFE</a>
        <ul>
            <li class="letter_le"><a href="app_index/goshop.do">商铺</a></li>
            <li class="letter_le"><a href="app_index/goatlist.do">活动</a></li>
            <li class="letter_le"><a href="app_index/goshopline.do">订单</a></li>
            <li><a href="app_index/goConnectUs.do">联系我们</a></li>
            <c:choose>
                <c:when test="${empty kyUserName}">
                    <li class="select" ><a href="app_userlogin/gosignin.do">Sign in</a><i class="fa fa-map-signs"></i></li>
                </c:when>
                <c:otherwise>
                    <li>当前用户：${kyUserName} </li>
                    <li class="select" ><a href="app_userlogin/gosignout.do">singn out</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
    <script>

        function not_open() {
            alert("对不起，由于本平台还在开发阶段，该功能尚未开放，敬请期待");
        }
    </script>
</div>




