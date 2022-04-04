<%@ page import="jakarta.servlet.annotation.WebServlet" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.util.List" %>
<%@ page import="Bean.Cake" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Bean.CakeDB" %>
<%@page import="javax.servlet.*" %>
<%@ page import="Bean.User" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: xuezhanpeng
  Date: 2022/4/1
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
</head>
<style>
    *{
        text-decoration: none;
        margin: 0;
        padding: 0;
    }
    #goods{
        color: springgreen;
        font-size: larger;
    }
    #remove{
        color: aqua;
        font-weight: bolder;
        font-size: larger;
        display: inline-block;
        margin: 20px;
    }
    #totalprice,.pay{
        border: 1px solid black;
        color: red;
        font-size: 20px;
        margin-top: 20px;
        margin: 20px;
    }
    .delete{
        margin-left: 20px;
        color: blue;
        font-size: 20px;
    }

</style>
<body>
    <%
        double total=0;
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        User user= (User) session.getAttribute("user");
        List<Cake> cart =(List<Cake>)session.getAttribute("cart");
        if(cart==null){
            cart=new ArrayList<Cake>();
            session.setAttribute("cart",cart);
        }else {
            if(id!=null) {
                cart.add(CakeDB.getcakebyid(id));
            }
//        System.out.println(cart.size());
    %>
    <%
        for(int i=0;i<cart.size();i++){
            out.println("<br>");
            out.println("蛋糕：\t"+cart.get(i).getName()+"\t价格：\t"+cart.get(i).getPrice());
            total+=cart.get(i).getPrice();
    %>
<%--    <%=request.getContextPath()%>/delete?id=<%=i%>--%>
    <a href="<%=request.getContextPath()%>/delete?id=<%=i%>" class="delete" onclick="dele('<%=cart.get(i).getName()%>')">删除</a>
    <%   }}%>
    <br>
    <span id="totalprice">总价格:<%= (int) total%></span>
    <br>
    <a href="pay.jsp?total=+<%=(int)total%>+" class="pay">付款</a>
</body>
<script>
    function dele(name) {
        var message="确定不要"+name+"?"
        if(confirm(message)==true){
            return true;
        }else {
            return false;
        }
    }
</script>
</html>