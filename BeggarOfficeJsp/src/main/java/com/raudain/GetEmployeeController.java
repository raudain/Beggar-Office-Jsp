package com.raudain;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.raudain.dao.EmployeeDao;
import com.raudain.model.Employee;

/**
 * Servlet implementation class GetEmployeeController
 */
public class GetEmployeeController extends HttpServlet {

    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {

        Integer.parseInt(request.getParameter("position"));
        new EmployeeDao();
        new Employee();

        final javax.servlet.RequestDispatcher rd = request.getRequestDispatcher("showEmployee.jsp");
        rd.forward(request, response);
    }



}
