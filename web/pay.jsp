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
    <p style="font-size:20px;color: red">账户余额:<%=deposit%></p>
    <span id="totalprice" style="font-size: 20px;color: springgreen">总价格:<%=total%></span>
    <br>
    <span id="paied" style="color: green;font-size: 30px">余额为：<%= paied%></span>
    <br>
    <%
        if(paied<0)
            JOptionPane.showMessageDialog(null,"您的余额不足");
        else
            JOptionPane.showMessageDialog(null,"付款成功！");
            user.setDeposit(String.valueOf(paied));
            cart.clear();
    %>
    <a href="Listcake.jsp" style="color: blue;font-size: 20px">返回</a>
    <br>
</body>
</html>
