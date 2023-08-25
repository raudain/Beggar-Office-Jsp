package raudain.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import raudain.doa.Worker;
import raudain.doa.WorkerDAO;

@WebServlet("/Onboarding")
public class Onboarding extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for inserting a worker into the dbo.worker table<br/>
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
		
		String roomNumber = request.getParameter("room");
		Short room = Short.parseShort(roomNumber);
		String name = request.getParameter("name");
		String profession = request.getParameter("profession");
		String endurance = request.getParameter("endurance");
		
		Worker worker = new Worker();
		worker.setRoom(room);
		worker.setName(name);
		worker.setProfession(profession);
		worker.setEndurance(endurance);
		
		WorkerDAO doa = new WorkerDAO();
		if(worker.getRoom() == doa.getNextRoom())
			doa.insertWorker(worker);
		else
			doa.updateWorker(worker);

		final RequestDispatcher disp = request.getRequestDispatcher("List");
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
