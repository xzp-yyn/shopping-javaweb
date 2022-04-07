<%@ page import="Bean.Cake" %>
<%@ page import="java.util.List" %>
<%@ page import="Bean.CakeDB" %>
<%@ page import="Bean.User" %>
<%@ page import="javax.swing.*" %><%--
  Created by IntelliJ IDEA.
  User: xuezhanpeng
  Date: 2022/4/2
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>付款页面</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    .border{
        width: 300px;
        height: 200px;
        border: 2px solid black;
        background-color: aqua;
        margin: auto;
        font-size: 40px;
    }
</style>
<body>
    <%
        User user = (User) session.getAttribute("user");
        double total= Double.parseDouble(request.getParameter("total"));
        double deposit= Double.parseDouble(user.getDeposit());
        double paied=deposit-total;
        List<Cake> cart = (List<Cake>) session.getAttribute("cart");
    %>
    时间：<jsp:include page="Date.jsp"/>
    当前用户：${user.getName()}
    <br>
    <table class="border">
        <tr>
            <td>账户余额:</td>
            <td><%=deposit%></td>
        </tr>
        <tr>
            <td>总价格:</td>
            <td><%=total%></td>
        </tr>
        <tr>
            <td> 余额为：</td>
            <td><%= paied%></td>
        </tr>
        <tr>
            <td><a href="Listcake.jsp" style="color: blue;margin-left:45%">返回</a></td>
        </tr>
    </table>
    <%
        if(paied<0)
            JOptionPane.showMessageDialog(null,"您的余额不足");
        else
            JOptionPane.showMessageDialog(null,"付款成功！");
            user.setDeposit(String.valueOf(paied));
            cart.clear();
    %>
    <br>
</body>
</html>
