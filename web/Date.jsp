<%@ page import="java.util.Date" %>
<%@ page import="java.util.logging.SimpleFormatter" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: xuezhanpeng
  Date: 2022/4/1
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>当前时间</title>
</head>
<body>
    <%
        Date date=new Date();
        SimpleDateFormat simpleFormatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = simpleFormatter.format(date);
        out.println(time);
    %>
</body>
</html>
