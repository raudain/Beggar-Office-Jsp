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
 * @author Roody Audain
 * 
 */
@WebServlet("/Table")
public class Table extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for showing all workers, paginated and <br\>
	 * sorted by room number descending from the workers table <br\>
	 * in the database <br/>
	 * 
	 * @return void
	 * 
	 * @param request
	 * @param response
	 * 
	 * @throws ServletException, IOException
	 */
	@Override
	protected void doGet(final HttpServletRequest request,
			final HttpServletResponse response)
			throws ServletException, IOException {		
		
		final String pageNumber = request.getParameter("page");
		final byte page = Byte.parseByte(pageNumber);
		
		final WorkerDAO doa = new WorkerDAO();
		final ArrayList<Worker> workerList = doa.getWorkers(page);
		request.setAttribute("workerList", workerList);

		final RequestDispatcher requestDispatcher =
				request.getRequestDispatcher("/table.jsp");
		requestDispatcher.forward(request, response);
	}
	
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for showing left, middle, or right workers <br\>
	 * paginated and sorted by room number descending from the <br\>
	 * workers table in the database <br/>
	 * 
	 * @return void
	 * 
	 * @param request
	 * @param response
	 * 
	 * @throws ServletException, IOException
	 */
	@Override
	protected void doPost(final HttpServletRequest request,
			final HttpServletResponse response)
			throws ServletException, IOException {		
		
		final String filterByNumber = request.getParameter("page");
		final String filterNumber = "1" + filterByNumber;
		final byte page = Byte.parseByte(filterNumber);
		
		final WorkerDAO doa = new WorkerDAO();
		final ArrayList<Worker> workerList = doa.getWorkers(page);
		request.setAttribute("workerList", workerList);

		final RequestDispatcher requestDispatcher =
				request.getRequestDispatcher("/table.jsp");
		requestDispatcher.forward(request, response);
	}
}
