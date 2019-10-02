<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/9/22
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>小米有品</title>
    <link rel="stylesheet" href="main.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>

<!-- 头部 -->
<div class="header">
    <div class="container clearfix">
        <div class="fr">
            <div class="fl site-item m-user-con">
                <div class="m-no-login">


                    <a href="login.jsp" target="_blank" class="m-safe-anchor">登录</a>
                    <a href="register.jsp" target="_blank" class="m-safe-anchor">注册</a>


                </div>
            </div>
            <span class="fl m-line">|</span>

            <div class="fl m-help">
                <a rel="noopener noreferrer" target="_blank" href="https://www.xiaomiyoupin.com/help" class="m-safe-anchor">帮助中心</a>
            </div>
            <span class="fl m-line">|</span>
            <div class="fl m-download site-item">
                <a href="/download" target="_blank" class="m-safe-anchor h-icon-con">
                            <span class=" m-icons- h-icons h-app-icon m-icons-app" data-src="" href="">
                                <img src="./images/APP.png" class="appImage" />
                            </span>
                    下载 APP
                </a>
            </div>
            <span class="fl m-line">|</span>
            <div class="fl m-clauses-con">
                <div class="m-clauses">
                    <a href="#" class="m-safe-anchor">资质证照&nbsp;/&nbsp;协议规则</a>
                    <span class="h-down-icon" data-src="" href=""></span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 搜索、加入购物车 -->
<div class="head-container">
    <div class="container">
        <div class="m-header-top">
            <div class="m-logo m-tag-a" data-src="/"></div>

            <ul class="tab-list">
                <li class="tab-item">限时抢购</li>
            </ul>

            <div class="m-card-wrap fr">
                <div class="m-card-mini">

                    <a class="m-con m-icons-cart-hover " href="${pageContext.request.contextPath}/getShops.do"></a>
                </div>
            </div>

            <div class="m-search">
                <div class="search-form ">
                    <a class="m-icons m-icons-search-hover search-icon" ></a>
                    <div class="m-autocomplete search-input-con">
                        <input type="text" value="" placeholder="搜一搜">
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- 中间轮播 -->
<div id="banner">
    <div class="nav">
        <ul class="nav-list">
            <li class="nav-item-first">
                <a href="" class="first-link">有品推荐 家用电器</a>
                <div class="show-wrap">
                    <!-- 图片 -->
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/5.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/6.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/7.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/8.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/9.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/10.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/11.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/12.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/13.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/14.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/15.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/16.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/17.png" alt="" width="40" height="40">小米8</li>
                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">智能家庭 电视影音</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/5.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/6.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/7.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/8.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/9.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/10.jpg" alt="" width="40" height="40">小米8</li>

                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">家具家装 居家餐厨</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/10.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/11.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/12.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/13.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/14.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/15.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/16.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/17.png" alt="" width="40" height="40">小米8</li>

                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">运动户外 出行车品</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/10.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/11.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/12.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/13.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/14.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/15.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/16.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/17.png" alt="" width="40" height="40">小米8</li>

                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">手机电脑 数码周边</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/5.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/6.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/7.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/8.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/9.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/10.jpg" alt="" width="40" height="40">小米8</li>

                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">服装配饰 鞋靴箱包</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/5.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/6.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/7.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/8.png" alt="" width="40" height="40">小米8</li>
                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">日用文创 美食酒饮</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/5.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/6.jpg" alt="" width="40" height="40">小米8</li>
                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">美妆个护 健康保健</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/5.jpg" alt="" width="40" height="40">小米8</li>
                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">母婴亲子 宠物生活</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                    </ul>
                </div>
            </li>
            <li class="nav-item-first">
                <a href="" class="first-link">健康儿童 电源配件</a>
                <div class="show-wrap">
                    <ul class="item-wrap">
                        <li class="shop-item"><img src="images/1/1.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/2.jpg" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/3.png" alt="" width="40" height="40">小米8</li>
                        <li class="shop-item"><img src="images/1/4.png" alt="" width="40" height="40">小米8</li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    <div class="banner-box">
        <%--<img class="swiper-img" src="./images/bigImg.jpg" alt="">--%><div class="banner-box">
        <ul class="pic-list">
            <li><img src="https://img.youpin.mi-img.com/youpinoper/a187c04cf7259f994e7a74979efe62b3.jpg?id=&w=1080&h=450"></li>
            <li><img src="https://img.youpin.mi-img.com/youpinoper/d7c360bbb2814d9b39dc9a59d6680f3d.jpg?id=&w=1080&h=450"></li>
            <li><img src="https://img.youpin.mi-img.com/youpinoper/9d511645ced8b59f441e57c55a46ad7c.jpg?id=&w=1080&h=450"></li>
            <li><img src="https://img.youpin.mi-img.com/youpinoper/938f266af39d8255e539419455414d51.jpg?id=&w=1080&h=450"></li>
        </ul>
        <div class="btn next">&gt;</div>
        <div class="btn prev">&lt;</div>
        <ul class="icon-list">
            <li class="active"></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>

    </div>
</div>
<!-- 五个标题 -->
<div class="five-wrap">
    <div class="container">
        <div class="f-items">
            <div class="f-items-list">
                <div class="items-imgs">
                    <img class="title-imgs" src="https://img.youpin.mi-img.com/jianyu/2ea920534b1abbec08934a9b1698145e.png?w=126&h=126" alt="">
                </div>
                <div class="item-title">每日新品</div>
            </div>
            <div class="f-items-list">
                <div class="items-imgs">
                    <img class="title-imgs" src="https://img.youpin.mi-img.com/jianyu/b29822fb82976737668e08f395462b02.png?w=126&h=126" alt="">
                </div>
                <div class="item-title">小米众筹</div>
            </div>
            <div class="f-items-list">
                <div class="items-imgs">
                    <img class="title-imgs" src="https://img.youpin.mi-img.com/jianyu/b29822fb82976737668e08f395462b02.png?w=126&h=126" alt="">
                </div>
                <div class="item-title">限时抢购</div>
            </div>
            <div class="f-items-list">
                <div class="items-imgs">
                    <img class="title-imgs" src="https://img.youpin.mi-img.com/jianyu/5f28d7634b2f74905b7cee12ed7b58cb.png?w=126&h=126" alt="">
                </div>
                <div class="item-title">热销榜单</div>
            </div>
            <div class="f-items-list">
                <div class="items-imgs">
                    <img class="title-imgs" src="https://img.youpin.mi-img.com/jianyu/5417dd98e6ccfc730438e7afbd6abb12.png?w=126&h=126" alt="">
                </div>
                <div class="item-title">助力免单</div>
            </div>
        </div>
    </div>
</div>
<!-- 小米众筹 -->
<div class="crowdfounding">
    <div class="container">
        <div class="h-sec-top clearfix">
            <h2 class="h-subTit">小米众筹<span>永远好奇 永远年轻</span></h2>
            <span class="h-more"><span>更多</span>
                    <a class="m-icons m-icons-more more-icon"></a>
                </span>
        </div>
        <div class="crowdImgs">
            <img src="./images/3/11.png" alt="">
        </div>
    </div>
</div>
<!-- 每日新品 -->
<div class="new crowdfounding">
    <div class="container">
        <div class="h-sec-top clearfix">
            <h2 class="h-subTit">每日新品<span>每天10点 惊喜不断</span></h2>
            <span class="h-more"><span>更多</span>
                    <a class="m-icons m-icons-more more-icon"></a>
                </span>
        </div>
        <div class="new-main">
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/goods/f161704f1f635c735a6403a267be7159.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">Redmi K20 Pro尊享版</p>
                    <p class="pro-desc">高通骁龙855 Plus处理器 / 最高...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">2699</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/goods/bba789b287ebdf47912d0f5de24d744c.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">Redmi Note 8</p>
                    <p class="pro-desc">4800万全场景四摄 / 前置1300万...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">999</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/goods/092c0b484bd49cbd31595e07f95aaf5d.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">Redmi Note 8 Pro</p>
                    <p class="pro-desc">6400万旗舰级全场景四摄 / 前置...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">1399</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/shopmain/cadc9f8a158584265cbe4b23155c6be6.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">雷克沙移动固态硬盘PSSD</p>
                    <p class="pro-desc">读取速度高达950MB/s,USB3.1接...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">2699</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 热门 -->
<div class="new crowdfounding ">
    <div class="container">
        <div class="h-sec-top clearfix">
            <h2 class="h-subTit">热门<span>感动人心 价格厚道</span></h2>
            <span class="h-more"><span>更多</span>
                        <a class="m-icons m-icons-more more-icon"></a>
                    </span>
        </div>
        <div class="new-main">
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/pic_square/100917_6eee3525c6a38a6fa7b8535724b1fa73.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">声波电动牙刷 青春版</p>
                    <p class="pro-desc">四色彩环,37200次/分钟,高频震...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">169</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/800_pic/ead6ffd7caa92111f28708ac97f71c6e.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">素士无线便携冲牙器</p>
                    <p class="pro-desc">餐后冲牙,冲走牙间残渣,牙套清...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">189</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/shopmain/cf545414ae6fde7ca23e27e8398877bd.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">舒适黑框防蓝光光学眼镜</p>
                    <p class="pro-desc">双重防护,树脂镜片,可配度数...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">254</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
            <div class="newSesssion">
                <div class="new-imgs">
                    <img src="https://img.youpin.mi-img.com/shopmain/7dba63257854104200c408d1bb2d1f8a.jpg" alt="">
                </div>
                <div class="new-goods-common-box">
                    <p class="pro-info">Amazfit GTS 智能手表</p>
                    <p class="pro-desc">超视网膜级AMOLED屏障,14天...</p>
                    <p class="pro-price">
                        <span class="pro-unit">¥</span>
                        <span class="m-num">899</span>
                        <span class="pro-flag">起</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 专属推荐 -->
<div class="category crowdfounding">
    <div class="container">
        <div class="h-sec-top clearfix">
            <h2 class="h-subTit">专属推荐</h2>
        </div>

    <div class="product-list">
        <c:forEach items="${arr}" var="g">
        <div class="category-items-list first category1" >
            <div class="category-img-container">
                <div class="product-img">
                    <div class="m-product-image-container undefined" style="width: 264px; height: 198px;">
                        <div class="img-container" style="padding: 45px 70px 28px; width: 124px; height: 125px;">
                            <img src="${g.imgurl}" style="height: 125px; width: 125px; margin-left: -0.5px;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="category-box">
                <div class="m-goods-common-tag-con"></div>
                <p class="pro-info">${g.title}</p>
                <p class="pro-price">
                    <span class="pro-unit">￥</span>
                    <span class="m-num">${g.price}</span>
                </p>
            </div>
            <div class="addCar">
                    <a href="addShop.do?id=${g.id}">加入购物车</a>
            </div>
        </div>
        </c:forEach>
    </div>
    </div>
</div>
<c:if test="${pg!=null}">
<div align="center">
    <form action="showGoods.do" method="post" >
        <c:if test="${pg.page==1}">
            <input type="button" value="首页" onclick="window.location.href='javascript:void(0)'" style="color:#999999"/>
            <input type="button" value="上一页" onclick="window.location.href='javascript:void(0)'" style="color:#999999">

        </c:if>
        <c:if test="${pg.page>1}">
            <input type="button" value="首页" onclick="window.location.href='showGoods.do?page=1'" />
            <input type="button" value="上一页" onclick="window.location.href='showGoods.do?page=${pg.page-1}'">
        </c:if>


        当前页:[${pg.page}/${totalPage}]
        到第<input type="text" style="width:25px;margin-top:6px;" name="page" />页
        <input type="submit" value="确认"/>
        <c:if test="${pg.page==totalPage}">

            <input type="button" value="下一页" onclick="window.location.href='javascript:void(0)'" style="color:#999999"/>
            <input type="button" value="尾页" onclick="window.location.href='javascript:void(0)'" style="color:#999999"/>
        </c:if>
        <c:if test="${pg.page<totalPage}">

            <input type="button" value="下一页" onclick="window.location.href='showGoods.do?page=${pg.page+1}'"/>
            <input type="button" value="尾页" onclick="window.location.href='showGoods.do?page=${totalPage}'"/>
        </c:if>
    </form>
</div>
</c:if>

<!-- footer -->
<div class="m-footer">
    <div class="container clearfix">
        <div class="fl m-f-logo">
            <img src="https://shop.io.mi-img.com/static/h5/static3/media/logo.d1484e61.png">
        </div>
        <div class="f-info fr">
            <div class="f-icons">
                <a href="#">
                    <img src="https://shop.io.mi-img.com/static/h5/static3/media/f-logo.c6285587.png">
                </a>
            </div>
            <div>
                <p class="footer-item">
                    <span>©xiaomiyoupin.com </span>
                    <span>苏B2-20180351 苏ICP备18025642号-1 </span>
                    <img src="https://shop.io.mi-img.com/static/h5/static3/media/record-icon.d0289dc0.png" alt="logo" style="width: 15px; height: 15px; vertical-align: -3px;">
                    <a href="#">苏公网安备 32010502010244号 </a>
                </p>
                <p class="footer-item">
                    <span>企业名称：有品信息科技有限公司 </span>
                    <a href="#">关于我们 </a>
                    <a href="#">入驻有品 </a>
                </p>
                <p class="footer-item">
                    <a href="#">小米有品平台运营主体变更公告 </a>
                </p>
                <p class="footer-item">
                    <span>南京市建邺区白龙江东街8号3栋9层 </span>
                </p>
            </div>
        </div>
    </div>
</div>
<script>
    $(".show-wrap").each(function() {
        var oLi = $(this).find(".shop-item");
        var height = oLi.height();//获取元素高度值
        var width = oLi.width();
        var length = oLi.length;//获取个数
        var col = Math.ceil(length/6);//向上取整
        $(this).width(col*width);
        oLi.each(function(i) {
            var x = Math.floor(i/6);//向下取整
            var y = i%6;
            $(this).css({
                left:x*width + "px",
                top:y*height + "px"
            });
        });
    });
    // 轮播
    $(function(){
        var timer = null; //声明一个全局定时器
        var index = 0;
        $(".next").click(function(){ //下一张
            next();
        });
        $(".prev").click(function(){ //上一张
            prev();
        })
        function next(){
            index++;
            if(index > 3){
                /*
                当图片到最后一张时跳回第一张，本例中在最后一张中放入了第一张的图片，为实现无缝切换图片的效果。
                */
                $(".pic-list").animate({left:-(index)*859},500);
                index = 0;
                $(".pic-list").animate({left:0},0); //
            }
            $(".pic-list").animate({left:-index*859},500);
            iconHover(index);
        }
        function prev(){
            index--;
            if(index < 0 ){
                index = 2;
                $(".pic-list").animate({left:-(index+1)*859},0);
            }
            $(".pic-list").animate({left:-index*859},500);
            iconHover(index);
        }
        function auto(){
            timer = setInterval(function(){ //设置自动播放的定时器
                next();
                iconHover(index);
            },2000)
        }
        auto();
        $("#slide").mouseover(function(){ //鼠标移入 定时器取消
            clearInterval(timer);
            $('.btn').css("opacity",0.5)
        })
        $("#slide").mouseleave(function(){ //鼠标离开 定时器开启
            auto();
            $('.btn').css("opacity",0)
        })
        //鼠标碰触圆点图标实现图片左右轮播
        $(".icon-list li").mouseover(function(){
            var index = $(this).index();
            $(".pic-list").animate({left:-index*859},500);
            iconHover(index);
        })
        //实现被选图片对应圆点图标索引更新
        function iconHover(index){
            $(".icon-list li").eq(index).addClass("active").siblings().removeClass("active");
        }

    })
</script>

</body>
</html>
