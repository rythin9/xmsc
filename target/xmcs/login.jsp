<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/9/22
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户登录</title>
    <link rel="stylesheet" href="login2.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div id="backgroundBox" style="position: fixed; top: 0px; left: 0px; width: 100vw; height: 100vh; background-image: url('bg1.jpg'); background-size: 100% 100%; transition: all 0.5s ease 0s;">
    <canvas width="872" height="656" style="display: block; position: fixed; top: 0px; left: 0px;">
    </canvas>
</div>
<div class="conteiner">


    <div class="box hiddenBox">
        <h3 class="title">用户登录</h3>
        <form  method="post" action="${pageContext.request.contextPath}/login.do" class="loginForm">

            <div class="inputUserName">
                <span class="userTitle">用户名:</span><input type="text"  name="username" value="${username}" placeholder="请输入你的用户名" >
            </div>
            <div class="inputpPassWord">
                <span class="userTitle">密码:</span><input type="password" name="password" placeholder="请输入你的密码" >
            </div>
            <div class="bottom bottom2">
                <input class="loginBtn" type="submit" value="登录"><br>

            </div>
            <div class="footer">
                <font style="color: red;margin-left: 10px;font-size: 16px;font-family: 微软雅黑;">${error}</font>
                <div class="footerTitle">
                        欢迎登录小米有品

                </div>
            </div>
        </form>
    </div>

  </div>


</body>
</html>
