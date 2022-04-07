<%--
  Created by IntelliJ IDEA.
  User: xuezhanpeng
  Date: 2022/4/1
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  import="java.util.*" language="java" %>

<html>
<link rel="stylesheet" href="normalize.min.css">
<link rel="stylesheet" href="style.css">
<script src="jquery.min.js"></script>
<script src="script.js"></script>
<head>
    <title>Title</title>
</head>
<body>
    <div id="formContainer" class="dwo">
        <div class="formLeft">
            <img src="avatar.png">
        </div>
        <div class="formRight">
            <!-- Forgot password form -->
            <form id="forgot" class="otherForm">
                <header>
                    <h1>忘记密码</h1>
                    <p>输入邮箱找回密码</p>
                </header>
                <section>
                    <label>
                        <p>邮箱</p>
                        <input type="email" placeholder=" ">
                        <div class="border"></div>
                    </label>
                    <button type="submit">发送邮件</button>
                </section>
                <footer>
                    <button type="button" class="forgotBtn">返回</button>
                </footer>
            </form>

            <!-- Login form -->
            <form id="login" method="post" action="handle">
                <header>
                    <h1>欢迎回来</h1>
                    <p>请先登录</p>
                </header>
                <section>
                    <label>
                        <p>用户名</p>
                        <input type="text" name="username" placeholder=" ">
                        <div class="border"></div>
                    </label>
                    <label>
                        <p>密码</p>
                        <input type="password"  name="password" placeholder=" ">
                        <div class="border"></div>
                    </label>
                    <button type="submit">登 录</button>
                </section>
                <footer>
                    <button type="button" class="forgotBtn">忘记密码？</button>
                    <button type="button" class="registerBtn">新用户？</button>
                </footer>
            </form>
            <!-- Register form -->
            <form id="register" class="otherForm" method="post" action="register">
                <header>
                    <h1>用户注册</h1>
                    <p>注册后享受更多服务</p>
                </header>
                <section>
                    <label>
                        <p>用户名</p>
                        <input type="text" name="username" placeholder=" ">
                        <div class="border"></div>
                    </label>
                    <label>
                        <p>邮箱</p>
                        <input type="email" name="email" placeholder=" ">
                        <div class="border"></div>
                    </label>
                    <label>
                        <p>密码</p>
                        <input type="password" name="password" placeholder=" ">
                        <div class="border"></div>
                    </label>
                    <label>
                        <p>重复密码</p>
                        <input type="password" name="password1" placeholder=" ">
                        <div class="border"></div>
                    </label>
                    <button type="submit">注 册</button>
                </section>
                <footer>
                    <button type="button" class="registerBtn">返回</button>
                </footer>
            </form>
        </div>
    </div>
    
</body>
</html>
