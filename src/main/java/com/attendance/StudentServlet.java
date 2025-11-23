package com.attendance;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class StudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String roll = request.getParameter("roll");
        String status = request.getParameter("status");
        
        
        Student s = new Student(name, roll, status);
        StudentDatabase.addStudent(s);

        
        
        request.setAttribute("studentList", StudentDatabase.getStudents());
        request.getRequestDispatcher("viewAll.jsp").forward(request, response);
        
        
        //request.setAttribute("name", name);
        //request.setAttribute("roll", roll);
        //request.setAttribute("status", status);

        //RequestDispatcher rd = request.getRequestDispatcher("print.jsp");
        //rd.forward(request, response);
    }
}
