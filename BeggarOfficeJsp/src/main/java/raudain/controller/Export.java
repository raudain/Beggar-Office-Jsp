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

import java.io.File;  // Import the File class

/**
 * @author Roody Audain
 * 
 */
@WebServlet("/Export")
public class Export extends HttpServlet {
	
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
		
		final WorkerDAO doa = new WorkerDAO();
		ArrayList<Worker> workerList = doa.getAllWorkers();
		
		try {
		      File file = new File("Worker Export.txt");
		      if (file.createNewFile()) {
		        System.out.println("File created: " + file.getName());
		      } else {
		        System.out.println("File already exists.");
		      }
		    } catch (IOException e) {
		      System.out.println("An error occurred.");
		      e.printStackTrace();
		    }
		
		workerList = doa.getWorkers(1);
		request.setAttribute("workerList", workerList);
		
		final RequestDispatcher requestDispatcher =
				request.getRequestDispatcher("/table.jsp");
		requestDispatcher.forward(request, response);
	}
	
	/**
	 * Forward to doGet method
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
		
		doGet(request, response);
	}
}
