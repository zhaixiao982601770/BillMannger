<%--
  Created by IntelliJ IDEA.
  User: 翟晓猛
  Date: 2019/7/8
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>账单管理系统</title>
    <link rel="stylesheet" href="../css/public.css"/>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>账单管理系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b">${goUserLogin.username}</span> , 欢迎你！</p>
        <a href="login.html">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2028年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="../bill/list.html">账单管理</a></li>
                <li><a href="../provider/list.html">供应商管理</a></li>
                <li><a href="/goUserList">用户管理</a></li>
                <li><a href="../main/password.html">密码修改</a></li>
                <li><a href="../main/login.html">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <img class="wColck" src="../img/clock.jpg" alt=""/>
        <div class="wFont">
            <h2>${goUserLogin.username}</h2>
            <p>欢迎来到账单管理系统!</p>
            <span id="hours"></span>
        </div>
    </div>
</section>
<footer class="footer"><div style="text-align:center;">	<p><a href="http://www.vphonor.com/" target="_blank"> http://www.vphonor.com/</a> 版权所有</p></div></footer>
<!--
	<script src="js/time.js"></script>
	-->

</body>
</html>