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
    <title>我的购物车</title>
</head>
<style>
    *{
        font-size: 20px;
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
    #totalprice {
        border: 1px solid black;
        color: red;
        margin-top: 20px;
        margin: 20px;
    }
    .pay{
        display: inline-block;
        margin-left: 200px;
        color: black;
        font-size: 35px;
        border: 2px solid springgreen;
    }
    .delete{
        margin-left: 20px;
        color: blue;
    }
    .thegoods{
        width: 500px;
        height: 500px;
        border: 2px solid black;
        background-color: aqua;
        margin: auto;
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

    %>
    <table class="thegoods" cellpadding="2px">
    <%
        for(int i=0;i<cart.size();i++){
            %>
                <tr>
                    <td><%=cart.get(i).getName()%></td>
                    <td><%=cart.get(i).getPrice()%></td>
                    <td> <a href="<%=request.getContextPath()%>/delete?id=<%=i%>" class="delete" onclick="dele('<%=cart.get(i).getName()%>')">删除</a></td>
                </tr>
<%--    <%=request.getContextPath()%>/delete?id=<%=i%>--%>

    <%   total+=cart.get(i).getPrice(); }%>
        <tr>
            <td>总价格：</td>
            <td><%= (int) total%></td>
        </tr>
        <tr>
            <td><a href="pay.jsp?total=+<%=(int)total%>+" class="pay">付款</a></td>
        </tr>
    </table>
     <%   }%>

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