package com.enigma.Major;

import com.Materi.Hibernate2.Dao.MajorDao;
import com.Materi.Hibernate2.Dao.MajorDaoImpl;
import com.Materi.Hibernate2.Dao.StudentDao;
import com.Materi.Hibernate2.Dao.StudentDaoImpl;
import com.Materi.Hibernate2.Entity.Major;
import com.Materi.Hibernate2.Entity.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public class MajorServlet extends HttpServlet {
    MajorDao majorDao = new MajorDaoImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Major major =majorDao.getMajorById(req.getParameter("id"));
        if(major != null) {
            major.setName(req.getParameter("name"));
            resp.sendRedirect("/majors");
        } else if(major == null){
            Major major1 = new Major();
            major1.setName(req.getParameter("name"));
            resp.sendRedirect("/majors");
        }    }
}
