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
	private static final long serialVersionUID = 2L;
	
    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {

        final int aid = Integer.parseInt(request.getParameter("position"));
        final EmployeeDao dao = new EmployeeDao();
        final Employee a1 = dao.getEmployee(aid);

        request.setAttribute("employee", a1);

        final javax.servlet.RequestDispatcher rd = request.getRequestDispatcher("showEmployee.jsp");
        rd.forward(request, response);
    }



}
