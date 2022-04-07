<%@ page import="java.io.PrintWriter" %>
<%@ page import="Bean.Cake" %>
<%@ page import="java.util.Collection" %>
<%@ page import="Bean.CakeDB" %>
<%@page import="javax.servlet.*" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.User" %>
<%@ page import="java.net.http.HttpRequest" %>
<%@ page import="jakarta.servlet.http.HttpServlet" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %><%--
  Created by IntelliJ IDEA.
  User: xuezhanpeng
  Date: 2022/4/1
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物页面</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
        font-size: 20px;
        align-items: center;
        text-align: center;
        text-decoration: none;
    }
    .thetable{
        margin:auto;
        justify-items: center;
        width: 500px;
        height: 500px;
        background-color: antiquewhite;
    }
    .table{
        width: 70%;
        height: 70%;
        border: 2px solid black;
        background-color: aqua;
        margin: auto;
    }
    #welcome{
        color: aqua;
        font-size: 20px;
        margin: auto;
    }
    .showcart,#backto{
        display: inline-block;
        font-size: 20px;
        margin-top: 20px;
        color: green;
        font-style: italic;
        background: yellow;
    }

</style>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        Collection<Cake> cakes= CakeDB.getall();
        HttpSession session1 = request.getSession();
        User user = (User) session1.getAttribute("user");
    %>
    <div class="thetable">
        <span>时间：<jsp:include page="Date.jsp" flush="true"></jsp:include></span>
        <p id="welcome">欢迎:<%=user.getName()%>&nbsp;&nbsp;&nbsp;<a href="Login.jsp" id="backto">退出登录</a></p>
        <table class="table">
            <tr>
                <td>1</td>
                <td><%=
                CakeDB.getcakebyid("1").getName()
                %></td>
                <td><%=
                CakeDB.getpricebyid("1")
                %>
                </td>
                <td><a href="purcharse.jsp?id=1">购买</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td><%=
                    CakeDB.getcakebyid("2").getName()
                %></td>
                <td><%=
                    CakeDB.getpricebyid("2")
                %></td>
                <td><a href="purcharse.jsp?id=2">购买</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td><%=
                    CakeDB.getcakebyid("3").getName()
                %></td>
                <td><%=
                    CakeDB.getpricebyid("3")
                %></td>
                <td><a href="purcharse.jsp?id=3">购买</a></td>
            </tr>
            <tr>
                <td>4</td>
                <td><%=
                    CakeDB.getcakebyid("4").getName()
                %></td>
                <td><%=
                    CakeDB.getpricebyid("4")
                %></td>
                <td><a href="purcharse.jsp?id=4">购买</a></td>
            </tr>
            <tr>
                <td>5</td>
                <td><%=
                    CakeDB.getcakebyid("5").getName()
                %></td>
                <td><%=
                    CakeDB.getpricebyid("5")
                %></td>
                <td><a href="purcharse.jsp?id=5">购买</a></td>
            </tr>
        </table>
        <a href="purcharse.jsp" class="showcart">查看购物车</a>
    </div>
    </div>
</body>
</html>
