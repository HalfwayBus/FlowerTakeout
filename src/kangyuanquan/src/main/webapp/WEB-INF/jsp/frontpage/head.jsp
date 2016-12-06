<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<div class="head">
    <div class="headbg"></div>
    <div class="nav">
        <a href="#" class="head_ba">KANG-YUAN-LIFE</a>
        <ul>
            <li class="letter_le"><a href="#">商铺</a></li>
            <li class="letter_le"><a href="#">活动</a></li>
            <li class="letter_le"><a href="#">订单</a></li>
            <li><a href="#">联系我们</a></li>
            <li class="select" onclick="not_open();">Sign in<i class="fa fa-map-signs"></i></li>
        </ul>
    </div>
    <script>
        function not_open() {
            alert("对不起，由于本平台还在开发阶段，该功能尚未开放，敬请期待");
        }
    </script>
</div>




