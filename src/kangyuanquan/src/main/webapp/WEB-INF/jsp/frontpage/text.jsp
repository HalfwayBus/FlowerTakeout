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
            <h2>${pd.TITLE } </h2>
            <div class="back">
                <a href="javascript:history.back(-1)">返回上页<i class="fa fa-reply" style="margin-left: 3px"></i></a>
            </div>
            <div class="informal">
                发布时间：<span class="time">${pd.ADDTIME}</span>
                发布者：<span>${pd.RELEASEPEOPLE}</span>
            </div>
            <button class="take_down" onclick="window.print();"><i class="fa fa-print"></i>打印文本</button>
        </div>

        <div class="text_img">
            <img src="${pd.IMG_PATH}">
        </div>
        <div class="text_content">
            ${pd.DESCRIBES}
        </div>
    </div>
</div>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->

</body>
</html>

