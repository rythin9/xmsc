<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/9/22
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
//isELIgnored false 支持EL 表达式
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户注册</title>
    <link rel="stylesheet" href="login2.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div id="backgroundBox" style="position: fixed; top: 0px; left: 0px; width: 100vw; height: 100vh; background-image: url('bg1.jpg'); background-size: 100% 100%; transition: all 0.5s ease 0s;">
    <canvas width="872" height="656" style="display: block; position: fixed; top: 0px; left: 0px;">
    </canvas>
</div>
<div class="conteiner">

    <div class="box showBox">
        <h3 class="title">用户注册</h3>
        <form  id="myForm" method="post" action="${pageContext.request.contextPath}/register.do">
            <input type="hidden" id="codeHidden" value="">
            <div class="inputUserName2">
                <span class="userTitle">用户名:</span><input type="text" name="username" id="username" placeholder="请输入你的用户名" />

            </div>
            <div class="inputPassWord2">
                <span class="userTitle">密码:</span><input type="password" name="password" id="psw1" placeholder="请输入6位以上字符" >

            </div>
            <div class="inputPassWord2">
                <span class="userTitle">密码:</span><input type="password" name="password2" id="psw2" placeholder="再次确认密码" >

            </div>
            <div class="inputPhoneNum2">
                <span class="userTitle">手机号:</span><input type="text" name="text" id="tel" placeholder="请输入正确的手机号" >

            </div>
            <div class="inputPhoneNum2">
                <span class="userTitle">验证码:</span>
                <input size="7" type="text" name="text" id="telc" placeholder="请输入验证码" >
                <span class="phoneTest" id="telCode">获取验证码</span>
            </div>
            <div class="bottom">
                <input class="loginBtn" type="submit" value="注册"></button>

            </div>
        </form>
    </div>
</div>
</body>

<script type="text/javascript">
    var a=false;
    //为指定元素绑定事件处理函数
    $("#tel").bind('blur', show);
    function show() {
        if ($("#tel").val().length == 11) {
            var tel = $("#tel").val();
            //ajax 提交手机号 获取验证码
            var ha = $.ajax({
                type: "post",
                url: "send.do",
                data: "tel=" + tel,
                async: false
                //非异步
            }).responseText;
            $("#codeHidden").val(ha);

            //点击后一分钟才能再点
            $("#telCode").unbind('click');//点击事件失效
            $("#telCode").addClass("disabled");//设置为销毁状态
            //倒计时
            var count = 60;
            var timer = setInterval(function () {
                $("#telCode").html(count + "s后重发");
                count--;
                if (count <= 0) {
                    clearInterval(timer);
                    $("#telCode").html("获取验证码");
                    $("#telCode").removeClass("disabled");//移除不可编辑状态
                    $("#telCode").bind('click', show);
                }
            }, 1000)
        }

    }
    $("#username").blur(function () {
        var name=$("#username").val();
        if(name==""){
            alert("用户名不能为空！")
        }
        else{
            //ajax 提交方式 到数据库检验用户名是否存在
            var ha=$.ajax({
                type:"post",
                url:"test.do",
                data:"name="+name,
                async:false
            }).responseText;


            if(ha=="用户名已存在！"){
                a=true;
            }else {
                alert(ha);
                a=false;
            }
        }
    });

    $("#myForm").submit(function () {
        //正则表达式检验手机号格式
        var reg=/^1\d{10}$/;
        var tel=$("#tel").val();
        if(!reg.test(tel)){
            alert("手机号错误！");
            return false;
        }
        if($("#username").val()==""){
            alert("登录名不能为空！")
            return false;
        }
        if($("#telc").val()==""){
            alert("验证码不能为空！");
            return false;
        }
        if($("#psw1").val().length<6){
            alert("密码要大于6位");
            return false;
        }
        if($("#psw1").val()!=$("#psw2").val()){
            alert("两次密码不一致！");
            return false;

        }
        if(a){
            alert("用户名已存在！")
            return false;
        }
        if($("#codeHidden").val()==$("#telc").val()){
            return true;
        }
        else {
            alert("验证码错误！");
            return false;
        }
    });
</script>

    </html>
