package Servlet;

import Bean.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

/**
 * @Author xuezhanpeng
 * @Date 2022/4/1 16:28
 * @Version 1.0
 */
@WebServlet("/create")
public class create extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        session.setAttribute("user",user);
        Cookie cookie = new Cookie("JSESSIONID", session.getId());
        cookie.setMaxAge(30*30);
        resp.addCookie(cookie);
        resp.sendRedirect(req.getContextPath()+"/Login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
