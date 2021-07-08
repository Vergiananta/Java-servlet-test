package com.enigma;

import com.Materi.Hibernate2.Dao.StudentDao;
import com.Materi.Hibernate2.Dao.StudentDaoImpl;
import com.Materi.Hibernate2.Entity.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "StudentServlet")
public class StudentServlet extends HttpServlet {

    StudentDao studentDao = new StudentDaoImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Student student =studentDao.getStudentById(req.getParameter("id"));
        if(student != null) {
            student.setName(req.getParameter("name"));
            student.setAddress(req.getParameter("address"));
            student.setGender(req.getParameter("gender"));
            student.setBirthDate(new Date());
            student.setPhoneNumber(req.getParameter("phone"));
            studentDao.updateStudent(student);
            List<Student> students = studentDao.getAllStudent();
            req.setAttribute("students", students);
            req.getRequestDispatcher("/student/student.jsp").forward(req, resp);
        } else if(student == null){
            Student student1 = new Student();
            student1.setName(req.getParameter("name"));
            student1.setAddress(req.getParameter("address"));
            student1.setGender(req.getParameter("gender"));
            student1.setBirthDate(new Date());
            student1.setPhoneNumber(req.getParameter("phone"));
            studentDao.saveStudent(student1);
            List<Student> students = studentDao.getAllStudent();
            req.setAttribute("students", students);

            req.getRequestDispatcher("/student/student.jsp").forward(req, resp);
        }

//        resp.sendRedirect("/students");

//        List<Student> students = studentDao.getAllStudent();
//        req.setAttribute("students", students);
//
//        req.getRequestDispatcher("/student/student.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> students = studentDao.getAllStudent();
        req.setAttribute("students", students);

        req.getRequestDispatcher("/student/student.jsp").forward(req, resp);
    }
}
