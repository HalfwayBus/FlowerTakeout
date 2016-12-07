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
        <div class="shopping">
            <img src="static/images/img/1.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称1</h3>
                    <p>驿寄梅花，鱼传尺素</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/2.jpg">
            <div class="shopping_text">
                <a href="#">
                <h3>商品名称2</h3>
                <p>千秋岭，雪孤松，养儿莫货帝王家，天家朱门何足羡。告别道尘机关客，相忘江湖，鱼乐不相斗；千秋岭，雪孤松，养女莫入汉皇阁，十年逢迎，深宫冷院锁清秋。一朝出的西关去，芒鞋蓑笠，嬉笑归去忙。撒米食，鱼儿随，来生换的清白身，白发渔樵，一尺竹杆，钓的秋月影西斜。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/3.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>时光静好，与君语。细水流年,与君同。繁华落尽,与君老。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/4.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>天下风云出我辈， 一入江湖岁月催；
                        皇图霸业谈笑间， 不胜人生一场醉。
                        提剑跨骑挥鬼雨， 白骨如山鸟惊飞;
                        尘事如潮人如水， 只叹江湖几人回。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/5.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>十年揽髻悲羸马，万众梯山似病猿；我志未酬人犹苦，东南到处有啼痕。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/6.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>我昔东海上，劳山餐紫霞。亲见安期公，食枣大如瓜。
                        中年谒汉主，不惬还归家。朱颜谢春辉，白发见生涯。
                        所期就金液，飞步登云车。愿随夫子天坛上，闲与仙人扫落花。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/2.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>二十余年如一梦，此身虽在堪惊。闲登小阁看新晴。古今多少事，渔唱起三更。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/5.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>壮岁从戎，曾是气吞残虏。
                        阵云高、狼烟夜举。
                        朱颜青鬓，拥雕戈西戍。
                        笑儒冠、自来多误。
                        功名梦断，却泛扁舟吴楚。
                        漫悲歌、伤怀吊古。
                        烟波无际，望秦关何处？
                        叹流年、又成虚度</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/1.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>临江仙</h3>
                    <p>未遇行藏谁肯信，如今方表名踪。无端良匠画形容。当风轻借力，一举入高空。
                        才得吹嘘身渐稳，只疑远赴蟾宫。雨余时候夕阳红。几人平地上，看我碧霄中。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/3.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>千秋岭，雪孤松，养儿莫货帝王家，天家朱门何足羡。告别道尘机关客，相忘江湖，鱼乐不相斗；千秋岭，雪孤松，养女莫入汉皇阁，十年逢迎，深宫冷院锁清秋。一朝出的西关去，芒鞋蓑笠，嬉笑归去忙。撒米食，鱼儿随，来生换的清白身，白发渔樵，一尺竹杆，钓的秋月影西斜。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/6.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>千秋岭，雪孤松，养儿莫货帝王家，天家朱门何足羡。告别道尘机关客，相忘江湖，鱼乐不相斗；千秋岭，雪孤松，养女莫入汉皇阁，十年逢迎，深宫冷院锁清秋。一朝出的西关去，芒鞋蓑笠，嬉笑归去忙。撒米食，鱼儿随，来生换的清白身，白发渔樵，一尺竹杆，钓的秋月影西斜。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/3.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>千秋岭，雪孤松，养儿莫货帝王家，天家朱门何足羡。告别道尘机关客，相忘江湖，鱼乐不相斗；千秋岭，雪孤松，养女莫入汉皇阁，十年逢迎，深宫冷院锁清秋。一朝出的西关去，芒鞋蓑笠，嬉笑归去忙。撒米食，鱼儿随，来生换的清白身，白发渔樵，一尺竹杆，钓的秋月影西斜。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/2.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>千秋岭，雪孤松，养儿莫货帝王家，天家朱门何足羡。告别道尘机关客，相忘江湖，鱼乐不相斗；千秋岭，雪孤松，养女莫入汉皇阁，十年逢迎，深宫冷院锁清秋。一朝出的西关去，芒鞋蓑笠，嬉笑归去忙。撒米食，鱼儿随，来生换的清白身，白发渔樵，一尺竹杆，钓的秋月影西斜。</p>
                </a>
            </div>
        </div>
        <div class="shopping">
            <img src="static/images/img/1.jpg">
            <div class="shopping_text">
                <a href="#">
                    <h3>商品名称2</h3>
                    <p>千秋岭，雪孤松，养儿莫货帝王家，天家朱门何足羡。告别道尘机关客，相忘江湖，鱼乐不相斗；千秋岭，雪孤松，养女莫入汉皇阁，十年逢迎，深宫冷院锁清秋。一朝出的西关去，芒鞋蓑笠，嬉笑归去忙。撒米食，鱼儿随，来生换的清白身，白发渔樵，一尺竹杆，钓的秋月影西斜。</p>
                </a>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<a href="javascript:;" class="addmore">加载更多<i class="fa fa-arrow-circle-o-down"></i></a>
<a href="javascript:;" class="top">回到顶部</a>  <!--href设置为此，为绝对的空连接，点击不返回任何数值，此例中如此设置来制作平滑上滚-->
</body>
</html>

