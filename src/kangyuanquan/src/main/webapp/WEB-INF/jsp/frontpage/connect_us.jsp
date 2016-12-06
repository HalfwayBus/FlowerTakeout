<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>详情</title>
    <link rel="stylesheet" href="static/css/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/kangyuan.css"/>
    <script src="static/js/frontjs/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="static/js/frontjs/kangyuan.js" type="text/javascript"></script>


</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="contents">
    <div class="local">
        <a href="#">首页</a> \ <a href="#">联系我们</a><i class="fa fa-arrow-left"></i>
    </div>
    <div class="box">
        <div class="box">
            <div class="box2">
                <h2>联系方式</h2>
                <h4>Contact us</h4>
                <div class="line"></div>
                <p>E-mail: liangzhilin@163.com</p>
                <p>电话：0755-88210399</p>
                <p>传真：0755-49672955</p>
                <p>地址：广州市黄埔新区广州商学院</p>
            </div>
        </div>
        <div id="wrap" class="my-map">
            <div id="mapContainer"></div>
        </div>
    </div>
    <div class="message">
        <div class="circle1">
            <div class="circle2"></div>
        </div>

        <span>留言</span>
        <div class="lan">
            <div class="lan1"></div>
            <div class="lan2"></div>
            <div class="lan3"></div>
        </div>
        <div class="clear"></div>
        <textarea rows="13" cols="80" id="text_box" placeholder="请输入留言..."></textarea>
        <div class="input_text">
            <input type="text" id="name" class="form-control" placeholder="姓名:" style="margin-top: 20px"
                   required="required">
            <input type="text" id="phone" class="form-control" placeholder="电话:" required="required">
            <input type="text" id="email" class="form-control" placeholder="E-mail:" required="required">
        </div>
        <button type="submit" class="btn" id="sum">提交</button>
        <div class="clear"></div>
    </div>

</div>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
<script src="http://webapi.amap.com/maps?v=1.3&key=8325164e247e15eea68b59e89200988b"></script>
<script>
    !function(){
        var infoWindow, map, level = 15,
                center = {lng: 113.56643, lat: 23.304442},
                features = [{type: "Marker", name: "", desc: "", color: "red", icon: "cir", offset: {x: -9, y: -31}, lnglat: {lng: 113.568833, lat: 23.304008}}];

        function loadFeatures(){
            for(var feature, data, i = 0, len = features.length, j, jl, path; i < len; i++){
                data = features[i];
                switch(data.type){
                    case "Marker":
                        feature = new AMap.Marker({ map: map, position: new AMap.LngLat(data.lnglat.lng, data.lnglat.lat),
                            zIndex: 3, extData: data, offset: new AMap.Pixel(data.offset.x, data.offset.y), title: data.name,
                            content: '<div class="icon icon-' + data.icon + ' icon-'+ data.icon +'-' + data.color +'"></div>' });
                        break;
                    case "Polyline":
                        for(j = 0, jl = data.lnglat.length, path = []; j < jl; j++){
                            path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                        }
                        feature = new AMap.Polyline({ map: map, path: path, extData: data, zIndex: 2,
                            strokeWeight: data.strokeWeight, strokeColor: data.strokeColor, strokeOpacity: data.strokeOpacity });
                        break;
                    case "Polygon":
                        for(j = 0, jl = data.lnglat.length, path = []; j < jl; j++){
                            path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                        }
                        feature = new AMap.Polygon({ map: map, path: path, extData: data, zIndex: 1,
                            strokeWeight: data.strokeWeight, strokeColor: data.strokeColor, strokeOpacity: data.strokeOpacity,
                            fillColor: data.fillColor, fillOpacity: data.fillOpacity });
                        break;
                    default: feature = null;
                }
                if(feature){ AMap.event.addListener(feature, "click", mapFeatureClick); }
            }
        }

        function mapFeatureClick(e){
            if(!infoWindow){ infoWindow = new AMap.InfoWindow({autoMove: true}); }
            var extData = e.target.getExtData();
            infoWindow.setContent("<h5>" + extData.name + "</h5><div>" + extData.desc + "</div>");
            infoWindow.open(map, e.lnglat);
        }

        map = new AMap.Map("mapContainer", {center: new AMap.LngLat(center.lng, center.lat), level: level});

        loadFeatures();

        map.on('complete', function(){
            map.plugin(["AMap.ToolBar", "AMap.OverView", "AMap.Scale"], function(){
                map.addControl(new AMap.ToolBar);
                map.addControl(new AMap.OverView({isOpen: true}));
                map.addControl(new AMap.Scale);
            });
        })

    }();
    $("#sum").click(function () {
        alert("你点击了提交");
        var NAME = $("#name").val();
        var PHONE = $("#phone").val();
        var EMAIL = $("#email").val();
        var MESSAGECONTENT = $("#text_box").val();
        alert("你点击了提交");
        $.ajax({
            type: "POST",
            url: '<%=basePath%>app_index/setMessage.do',
            data: {
                'NAME':NAME,
                'PHONE':PHONE,
                'EMAIL':EMAIL,
                'MESSAGECONTENT':MESSAGECONTENT
            },
            dataType:'json',
            cache: false,
            success: function(data){
               alert("留言成功");
            }
        });
    });
</script>
</body>
</html>

