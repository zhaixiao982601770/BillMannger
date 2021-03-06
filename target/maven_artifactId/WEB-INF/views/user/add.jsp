<%--
  Created by IntelliJ IDEA.
  User: 猛哥
  Date: 2019/7/9
  Time: 19:07
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
        <p><span>下午好！</span><span style="color: #fff21b"> ${goUserLogin.username}</span> , 欢迎你！</p>
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
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <form action="/addUser" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="username">用户名：</label>
                    <input type="text" name="username" id="username"/>
                    <span>*请输入用户名，且不能重复</span>
                </div>
                <div>
                    <label for="realName">真实姓名：</label>
                    <input type="text" name="real_name" id="realName"/>
                    <span >*请输入真实姓名</span>
                </div>
                <div>
                    <label for="userpassword">用户密码：</label>
                    <input type="text" name="userpassword" id="userpassword"/>
                    <span>*密码长度必须大于6位小于20位</span>

                </div>
                <div>
                    <label for="password">确认密码：</label>
                    <input type="text" name="password" id="password"/>
                    <span>*请输入确认密码</span>
                </div>
                <div>
                    <label >用户性别：</label>

                    <select name="gender">
                        <option value="1">女</option>
                        <option value="2">男</option>
                    </select>
                    <span></span>
                </div>
                <div>
                    <label for="birthday">出生日期：</label>
                    <input type="text" name="birthday" id="birthday"/>
                    <span >*格式 yyyy-MM-dd </span>
                </div>
                <div>
                    <label >用户类别：</label>
                    <input type="radio" name="user_type" value="1" />管理员
                    <input type="radio" name="user_type" value="2" checked/>经理
                    <input type="radio" name="user_type" value="3"/>普通用户
                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.html">返回</a>-->
                    <input type="submit" value="保存">
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer"><div style="text-align:center;">	<p><a href="http://www.vphonor.com/" target="_blank">http://www.vphonor.com/</a> 版权所有</p></div></footer>
<!--
	<script src="js/time.js"></script>
	-->
</body>
</html>