<%@ page import="Bean.User" %><%--
  Created by IntelliJ IDEA.
  User: xuezhanpeng
  Date: 2022/4/1
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
      request.setCharacterEncoding("utf-8");
      User user = (User) session.getAttribute("user");
      String name=user.getName();
      pageContext.setAttribute("username",name);
//      String name= (String) request.getSession().getAttribute("user");
    %>
    用户名： ${user.getName()}<BR>
    用户名：<%=user.getName()%><br>
    用户名：${username}<br>
    用户名：<%=
    ((User)session.getAttribute("user")).getName()
    %>
  </body>
</html>
