package raudain.controller;

import java.io.IOException;

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
@WebServlet("/Insert")
public class NewWorker extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method creates a new worker <br/>
	 * 
	 * @return void
	 * 
	 * @param request
	 * @param response
	 * 
	 * @throws ServletException, IOException
	 */
	@Override
	protected void doGet(final HttpServletRequest request, final HttpServletResponse response) {

		WorkerDAO doa = new WorkerDAO();
		short room = doa.getNextRoom();
		
		String name = request.getParameter("name");
		String profession = request.getParameter("profession");
		String endurance = request.getParameter("endurance");
		String workerCost = request.getParameter("cost");
		Long cost = Long.parseLong(workerCost);
		
		Worker newWorker = new Worker();
		newWorker.setRoom(room);
		newWorker.setName(name);
		newWorker.setProfession(profession);
		newWorker.setEndurance(endurance);
		newWorker.setCost(cost);
		
		doa.insertWorker(newWorker);
		
		final RequestDispatcher disp = request.getRequestDispatcher("/board.jsp");
		try {
			disp.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
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
