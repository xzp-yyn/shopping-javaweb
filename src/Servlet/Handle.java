package Servlet;

import Bean.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.swing.*;
import java.awt.*;
import java.io.IOException;

/**
 * @Author xuezhanpeng
 * @Date 2022/4/1 14:58
 * @Version 1.0
 */
@WebServlet("/handle")
public class Handle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        HttpSession session = req.getSession();
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        if(username.equals("薛展鹏") && password.equals("xzp1014xzp")){
            User user=new User(username,password,"20000");
            session.setAttribute("user",user);
            resp.sendRedirect(req.getContextPath()+"/Listcake.jsp");
        }else {
            JOptionPane.showMessageDialog(null,"用户不正确！");
            resp.sendRedirect(req.getContextPath() + "/Login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
