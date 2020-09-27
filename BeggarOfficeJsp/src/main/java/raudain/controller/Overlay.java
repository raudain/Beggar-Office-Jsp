package raudain.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.ListIterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import raudain.doa.Worker;
import raudain.doa.WorkerDAO;

@WebServlet("/overlay.htm")
public class Overlay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//JDBC API classes for data persistence
		
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for showing the worker profile overlay<br/>
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
		
		String workerRoom = request.getParameter("room");
		short room = Short.parseShort(workerRoom);
		
		WorkerDAO doa = new WorkerDAO();
		ArrayList<String> nameList = new ArrayList<String>();
		nameList = doa.getWorkerNames();
		ListIterator<String> nameIterator = nameList.listIterator();
		request.setAttribute("nameIterator", nameIterator);
		
		Worker worker = new Worker();
		worker = doa.getWorker(room);
		request.setAttribute("worker", worker);

		final RequestDispatcher disp = request.getRequestDispatcher("/overlay.jsp");
		disp.forward(request, response);
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
