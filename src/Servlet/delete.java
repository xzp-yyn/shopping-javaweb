package Servlet;

import Bean.Cake;
import Bean.CakeDB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.swing.*;
import java.io.IOException;
import java.util.List;

/**
 * @Author xuezhanpeng
 * @Date 2022/4/4 10:31
 * @Version 1.0
 */
@WebServlet("/delete")
public class delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        List<Cake> cart =(List<Cake>) req.getSession().getAttribute("cart");
        int id = Integer.parseInt(req.getParameter("id"));
        cart.remove(id);
        JOptionPane.showMessageDialog(null,"删除成功！");
        resp.sendRedirect(req.getContextPath()+"/Listcake.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
