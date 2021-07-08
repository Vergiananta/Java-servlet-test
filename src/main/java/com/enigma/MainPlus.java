package com.enigma;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MainPlus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("Number1"));
        System.out.println(req);
        Integer a = Integer.parseInt(req.getParameter("Number1"));
        Integer b = Integer.parseInt(req.getParameter("Number2"));
        Integer total = a + b;
        req.setAttribute("total", total);
        req.getRequestDispatcher("/add/add.jsp").forward(req, resp);
    }
}
