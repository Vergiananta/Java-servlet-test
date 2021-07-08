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
import java.sql.ResultSet;
import java.util.List;

@WebServlet(name = "DeleteStudent")
public class DeleteStudent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentDao studentDao = new StudentDaoImpl();
        Student student = studentDao.getStudentById(req.getParameter("id"));
        studentDao.deleteStudent(student);
        List<Student> students = studentDao.getAllStudent();
        req.setAttribute("students", students);
        req.getRequestDispatcher("/student/student.jsp").forward(req, resp);
    }
}
