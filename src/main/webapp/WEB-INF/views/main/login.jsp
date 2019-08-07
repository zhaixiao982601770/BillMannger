<%--
  Created by IntelliJ IDEA.
  User: 翟晓猛
  Date: 2019/7/8
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 账单管理系统</title>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body class="login_bg">
<section class="loginBox">
    <header class="loginHeader">
        <h1>账单管理系统</h1>
    </header>
    <section class="loginCont">
        <!--<div style="color:red; margin-left: 130px">用户名错误！</div>-->
        <form class="loginForm" action="userLogin">

            <div class="inputbox">
                <label for="user">Username</label>
                <input id="user" type="text" name="username"  required/>
            </div>
            <div class="inputbox">
                <label for="mima">Password</label>
                <input id="mima" type="password" name="password"  required/>
            </div>
            <div class="subBtn">
                <input type="checkbox"> Remember Me
            </div>
            <br/>
            <div class="subBtn">
                <input type="submit" value="Sign" />
                <input type="reset" value="Reset"/>
            </div>
            <br/>
            <div style="margin-left: 100px;">
                <a href="#">中文</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="">English</a>
            </div>
        </form>
    </section>
</section>
</body>
</html>