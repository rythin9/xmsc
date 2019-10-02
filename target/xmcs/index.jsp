<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        ul {
            padding-left: 0;
            list-style: none;
            margin-top: 100px;
        }
        .content {
            width: 990px;
            height: 170px;
            /* position: absolute;
            left: 50%;
            bottom: -108px; */
            /* transform: translateX(-50%); */
            display: flex;
            align-items: center;
        }
        li {
            width: 333px;
            height: 170px;
            position: relative;


            /* transition: height 2s; */
        }
        li:hover {
            /* transform: translate(0,-10px); */
            transform: scale(1,1.1);
            transition: transform 0.1s ease-in;

        }
        a {
            display: block;
            padding: 56px 0;
            text-decoration: none;
        }
        h3 {
            font-size: 26px;
            color: #ffffff;
            text-align: center;
            font-weight: 400;
        }
        .line2 {
            margin-top: 10px;
            font-size: 16px;
            text-align: center;
            line-height: 16px;
            display: block;
        }
        .first-li {
            background-color: blue;
        }
        .second-li {
            background-color: red;
        }
        .three-li {
            background-color: green;
        }
    </style>
</head>
<body>
<ul class="content">
    <li class="first-li">
        <a href="#">
            <h3 class="clearfix">
                <div class="enter-title fl">我要入驻</div>
            </h3>
            <p class="line2">商家、配送、城市代理、服务市场</p>
        </a>
    </li>
    <li class="second-li">
        <a href="#">
            <h3 class="clearfix">
                <div class="enter-title fl">我要入驻</div>
            </h3>
            <p class="line2">商家、配送、城市代理、服务市场</p>
        </a>
    </li>
    <li class="three-li">
        <a href="#">
            <h3 class="clearfix">
                <div class="enter-title fl">我要入驻</div>
            </h3>
            <p class="line2">商家、配送、城市代理、服务市场</p>
        </a>
    </li>
</ul>

</body>
</html>
