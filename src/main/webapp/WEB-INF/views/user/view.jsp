<%--
  Created by IntelliJ IDEA.
  User: 猛哥
  Date: 2019/7/10
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <p><span>下午好！</span><span style="color: #fff21b"> Admin</span> , 欢迎你！</p>
        <a href="../main/login.html">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2028年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="../bill/list.html">账单管理</a></li>
                <li><a href="../provider/list.html">供应商管理</a></li>
                <li id="active"><a href="../user/list.html">用户管理</a></li>
                <li><a href="../main/password.html">密码修改</a></li>
                <li><a href="../main/login.html">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户信息查看页面</span>
        </div>
        <div class="providerView">
            <p><strong>用户名：</strong><span>${showUser.username}</span></p>
            <p><strong>真实姓名：</strong><span>${showUser.real_name}</span></p>
            <p><strong>用户性别：</strong>
                <span>
                    <c:if test="${showUser.gender==1}">女</c:if>
                    <c:if test="${showUser.gender==2}">男</c:if>
                </span>
            </p>
            <p><strong>出生日期：</strong>
                <span>
                    <fmt:formatDate value="${showUser.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate>
                </span>
            </p>
            <p><strong>用户类别：</strong>
                <span>
                    <c:if test="${showUser.user_type==1}">
                        管理员
                    </c:if>
                    <c:if test="${showUser.user_type==2}">
                        经理
                    </c:if>
                    <c:if test="${showUser.user_type==3}">
                        普通用户
                    </c:if>
                </span>
            </p>
            <a onclick="history.back(-1)" href="#">返回</a>
        </div>
    </div>
</section>
<footer class="footer"><div style="text-align:center;">	<p><a href="http://www.vphonor.com/" target="_blank">http://www.vphonor.com/</a> 版权所有</p></div></footer>
<!--
	<script src="js/time.js"></script>
	-->

</body>
</html>