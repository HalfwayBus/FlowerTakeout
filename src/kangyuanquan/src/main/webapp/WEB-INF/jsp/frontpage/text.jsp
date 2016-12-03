<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
        <a href="#">首页</a> \ <a href="#">活动公告详情</a><i class="fa fa-arrow-left"></i>
    </div>
    <div class="text_box">
        <div class="text_header">
            <h2>${pd.TITLE }我走得再远也走不出那片天么？ </h2>
            <div class="back">
                <a href="javascript:history.back(-1)">返回上页<i class="fa fa-reply" style="margin-left: 3px"></i></a>
            </div>
            <div class="informal">
                发布时间：<span class="time">2016-12-03</span>
                发布者：<span>小吱呤</span>
            </div>
            <button class="take_down" onclick="window.print();"><i class="fa fa-print"></i>打印文本</button>
        </div>

        <div class="text_img">
            <img src="static/images/img/1.jpg">
        </div>
        <div class="text_content">
            <%--<img src="static/images/img/1.jpg">--%>
            <p>当五百年的光阴只是一个骗局,虚无时间中的人物又为什么而苦,为什么而喜呢?也许每个人出生的时候都以为这田地都是为他一个人而存在的,当他发现自己错的时候,他便开始长大.</p>
               <p>我像一个优伶，时哭时笑着，久而久之，也不知这悲喜是自己的，还是一种表演，很多人在看着我，他们在叫好，但我很孤独，我生活在自己的幻想中，我幻想着我在一个简单而又复杂的世界，那里只有神与妖，没有人，没有人间的一切琐碎，却有一切你所想象不到的东西。但真正生活在那里，我又孤独，因为我是一个人。</p>
               <p>我不知道为什么要因为失去而忧伤，为什么为了时光短暂而忧虑。我要去找到那力量，让所有的生命都超越界限，让所有的花同时在大地上开放。让想飞的就能自由飞翔，让所有人和他们喜欢的永远地在一起。如果上天知我心诚，就让石头也发芽吧。</p>
               <p>天地何用？不能席被，风月何用？不能饮食。纤尘何用？万物其中，变化何用？道法自成。面壁何用？不见滔滔，棒喝何用？一头大包。生我何用？不能欢笑，灭我何用，不减狂骄。从何而来？同生世上，齐乐而歌，行遍大道。万里千里，总找不到，不如与我，相逢一笑。芒鞋斗笠千年走，万古长空一朝游，踏歌而行者，物我两忘间。</p>
        </div>


    </div>
</div>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->

</body>
</html>

