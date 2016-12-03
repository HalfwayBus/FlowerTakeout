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
    <link rel="stylesheet" href="static/css/icno.css">
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <script src="static/js/frontjs/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="static/js/frontjs/kangyuan.js" type="text/javascript"></script>
    <script src="static/js/frontjs/layer/layer.js" type="text/javascript"></script>

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
<div class="content">
    <%--<div class="dynamic">
        <div class="big_box">
            <img src="static/images/img/1.jpg" class="color1 box">
            <img src="static/images/img/2.jpg" class="color2 box">
            <img src="static/images/img/3.jpg" class="color3 box">
            <img src="static/images/img/4.jpg" class="color4 box">
            <img src="static/images/img/5.jpg" class="color5 box">
            <img src="static/images/img/6.jpg" class="color6 box">
        </div>
    </div>--%>
    <div class="title_mess">
        <div class="top_mess">
            <p>KANG-YUAN</p>
            <p>A DIFFERENT LIFE<i class="fa fa-globe" style="margin-left: 16px"></i></p>
            <div class="drawline"></div>
        </div>
        <div class="tipbox">
        <div class="next_mess">
            <p>你未看此花时</p>
            <p>此花与汝心同归于寂</p>
            <p>你来看此花时</p>
            <p>则此花颜色一时明白起来</p>
        </div>
        <span class="add_butt favorites">加入收藏</span>
        <span class="add_butt addHomePage">找我么？</span>
        </div>
        <div class="changbox">
            <div class="devices">
                <div class="ipad">
                    <div class='screen'></div>
                </div>
                <div class="notebook">
                    <div class='screen'></div>
                    <div class='keyboard'></div>
                </div>
                <div class="iphone">
                    <div class='screen'></div>
                </div>
            </div>
            <div class="text_box box1">
                <span class="mess_box"><i class="fa fa-compass fas_tits"></i>试试在不同的地方找到我？</span>
                <div class="down_line"></div>
                <div class="up_line"></div>
                <div class="down_line2"></div>
                <div class="down_line3"></div>
            </div>
            <div class="wrapper">
                <div class="icon reminders">
                    <span class="list-item i1"></span>
                    <span class="list-item i2"></span>
                    <span class="list-item i3"></span>
                    <span class="list-item i4"></span>
                </div>
                <div class="icon passbook">
				<span class="plane">
					<span class="picto"></span>
					<span class="knob"></span>
				</span>
                    <span class="movie">
					<span class="picto"></span>
				</span>
                    <span class="coffee">
					<span class="picto"></span>
				</span>
                </div>
                <div class="icon mail">
				<span class="picto">
					<span class="inner i1"></span>
					<span class="inner i2"></span>
				</span>
                </div>
                <div class="icon photos">
                    <span class="fan f1"></span>
                    <span class="fan f2"></span>
                    <span class="fan f3"></span>
                    <span class="fan f4"></span>
                    <span class="fan f5"></span>
                    <span class="fan f6"></span>
                    <span class="fan f7"></span>
                    <span class="fan f8"></span>
                </div>
                <div class="icon safari">
				<span class="compass">
					<span class="scale">
						<span class="line l1"></span>
						<span class="line l2"></span>
						<span class="line l3"></span>
						<span class="line l4"></span>
						<span class="line l5"></span>
						<span class="line l6"></span>
						<span class="line l7"></span>
						<span class="line l8"></span>
						<span class="line l9"></span>
						<span class="line l10 s"></span>
						<span class="line l11 s"></span>
						<span class="line l12 s"></span>
						<span class="line l13 s"></span>
						<span class="line l14 s"></span>
						<span class="line l15 s"></span>
						<span class="line l16 s"></span>
						<span class="line l17 s"></span>
						<span class="line l18 s"></span>
					</span>
				</span>
                </div>
                <div class="icon stocks">
                    <span class="dot"></span>
                    <span class="line l1"></span>
                    <span class="line l2"></span>
                    <span class="line l3"></span>
                    <span class="line l4"></span>
                    <span class="line l5"></span>
                    <span class="line l6"></span>
                    <span class="line l7"></span>
                    <span class="line l8"></span>
                    <span class="line l9"></span>
                    <span class="line l10"></span>
                    <span class="line l11"></span>
                    <span class="line l12"></span>
                    <span class="line l13"></span>
                </div>
                <div class="icon weather">
                    <span class="cloud"></span>
                </div>
                <div class="icon newsstand">
                    <div class="news">
                        <span>News</span>
                    </div>
                    <div class="art">
                        <span>Art</span>
                    </div>
                    <div class="travel">
                        <span class="label">Travel</span>
                        <span class="picto"></span>
                    </div>
                    <div class="sports">
                        <span class="label">Sports</span>
                    </div>
                </div>
                <div class="icon messages"></div>
                <div class="icon gamecenter">
                    <div class="bubble blue"></div>
                    <div class="bubble yellow"></div>
                    <div class="bubble purple"></div>
                    <div class="bubble pink"></div>
                </div>
                <div class="icon itunes"></div>
                <div class="icon calendar">
                    <span class="one"></span>
                </div>

            </div>
            <div class="text_box box2">
                <span class="mess_box">ONE AND MORE!</span>
                <div class="icnoss">
                    <i class="fa fa-globe"></i>
                    <i class="fa fa-calendar"></i>
                    <i class="fa fa-gift"></i>
                    <i class="fa fa-edit"></i>
                    <i class="fa fa-group"></i>
                    <i class="fa fa-cloud-upload"></i>
                    <i class="fa fa-external-link"></i>
                    <i class="fa fa-qrcode"></i>
                </div>
            </div>
            <div class="printerWrapper">
                <div class="paperWrapper">
                    <div class="paperIn page1">Loading...</div>
                    <div class="paperIn page2">Loading...</div>
                    <div class="paperInsert"></div>
                    <div class="paperSlot"></div>
                    <div class="paperHide"></div>
                </div>
                <div class="printerTop"></div>
                <div class="printerBody"></div>
                <div class="bayWrapper">
                    <div class="lightLarge">
                        <div class="light">
                        </div>
                    </div>
                    <div class="lightSmall">
                        <div class="light">
                        </div>
                    </div>
                    <div class="facePlate"></div>
                    <div class="bayOpening"></div>
                    <div class="bayTray"></div>
                    <div class="paperOut"></div>
                    <div class="paperOutShadow"></div>
                </div>
            </div>
            <div class="text_box box3">
                <div class="mess_p">
                    <i class="fa fa-map-signs fa_tit"></i>
                    <p>为你留下</p>
                    <p>时光的印记</p>
                    <p>你会...在哪里找到自己?</p>
                    <div class="dot"><i class="fa fa-paper-plane dots"></i></div>
                </div>
            </div>
            <div class="i_box">
                <i class="choose_i"></i>
                <i></i>
                <i></i>
            </div>

        </div>

        <%--<div id="demo">
            <div id="ca"></div>
            <div id="dd"></div>
        </div>
        <script src="static/js/frontjs/calendar.js"></script>
        <script>
            $('#ca').calendar({
                width: 320,
                height: 320,
                data: [
                    {
                        date: '2015/12/24',
                        value: 'Christmas Eve'
                    },
                    {
                        date: '2015/12/25',
                        value: 'Merry Christmas'
                    },
                    {
                        date: '2016/01/01',
                        value: 'Happy New Year'
                    }
                ],
                onSelected: function (view, date, data) {
                    console.log('view:' + view)
                    console.log('data:' + (data || 'None'));
                }
            });

            $('#dd').calendar({
                trigger: '#dt',
                zIndex: 999,
                format: 'yyyy-mm-dd',
                onSelected: function (view, date, data) {
                    console.log('event: onSelected')
                },
                onClose: function (view, date, data) {
                    console.log('event: onClose')
                    console.log('view:' + view)
                    console.log('date:' + date)
                    console.log('data:' + (data || 'None'));
                }
            });
        </script>--%>
        
    </div>
        <div class="big_box">
            <img src="static/images/img/1.jpg" class="color1 box">
            <img src="static/images/img/2.jpg" class="color2 box">
            <img src="static/images/img/3.jpg" class="color3 box">
            <img src="static/images/img/4.jpg" class="color4 box">
            <img src="static/images/img/5.jpg" class="color5 box">
            <img src="static/images/img/6.jpg" class="color6 box">
        </div>
        <div class="img_text">
            <span>梦不醒之人，看不穿之人，惊不觉之人</span>
            <span>痴不迷之人，疯不狂之人，尽数来此</span>
            <span>再叙西游，岂不快哉</span>
            <span>为了不失去一切，然后逝去</span>
            <span>test</span>
            <span>test</span>
        </div>
        <div class="cont_box"></div>
        <div class="cont_box"></div>
        <div class="cont_box"></div>
        <div class="cont_box"></div>
        <a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</div>

</body>
</html>

