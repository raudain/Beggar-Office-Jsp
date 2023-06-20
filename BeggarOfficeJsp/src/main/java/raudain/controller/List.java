package raudain.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import raudain.doa.Worker;
import raudain.doa.WorkerDAO;

/**
 * Servlet implementation class ListWorkersServlet
 */
@WebServlet("/List")
public class List extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for showing all workers date from workers table in mydb database<br/>
	 * 
	 * @return void
	 * 
	 * @param request
	 * @param response
	 * 
	 * @throws ServletException, IOException
	 */
	@Override
	protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {

		WorkerDAO doa = new WorkerDAO();
		ArrayList<Worker> workerList = new ArrayList<>();
		workerList = doa.getWorkers();
		request.setAttribute("workerList", workerList);

		final RequestDispatcher disp = request.getRequestDispatcher("/list.jsp");
		disp.forward(request, response);
		
		System.out.println("doGet response forwarded to list.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
