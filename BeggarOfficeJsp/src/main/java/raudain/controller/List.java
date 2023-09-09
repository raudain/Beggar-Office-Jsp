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
@WebServlet("/List")
public class List extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for showing all workers, paginated and sorted by<br\>
	 * room number descending, from the workers table in the database <br/>
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
		
		String pageNumber = request.getParameter("page");
		int page = Integer.parseInt(pageNumber);
		ArrayList<Worker> workerList = new ArrayList<>();
		WorkerDAO doa = new WorkerDAO();
		if (page == 69)
			workerList = doa.getWorkersByCost();
		else
			workerList = doa.getWorkersByRoom(page);
		
		request.setAttribute("workerList", workerList);

		final RequestDispatcher disp = request.getRequestDispatcher("/list.jsp");
		try {
			disp.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//System.out.println("doGet response forwarded to list.jsp");
		response.setHeader("Set-Cookie", "key=value; HttpOnly; SameSite=strict");
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
