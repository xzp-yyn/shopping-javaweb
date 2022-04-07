package Servlet;

import Bean.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import javax.swing.*;
import java.io.IOException;

/**
 * @Author xuezhanpeng
 * @Date 2022/4/1 16:28
 * @Version 1.0
 */
@WebServlet("/register")
public class create extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String password1=req.getParameter("password1");
        if(!password.equals(password1)){
            JOptionPane.showMessageDialog(null,"两次密码不正确！");
            resp.sendRedirect(req.getContextPath() + "/Login.jsp");
            return;
        }
        User user = new User(username, password1, "1000");
        session.setAttribute("user",user);
        session.setMaxInactiveInterval(60*60);
//        Cookie cookie = new Cookie("JSESSIONID", session.getId());
//        cookie.setMaxAge(30*30);
//        resp.addCookie(cookie);
        JOptionPane.showMessageDialog(null,"注册成功！");
        resp.sendRedirect(req.getContextPath()+"/Login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
