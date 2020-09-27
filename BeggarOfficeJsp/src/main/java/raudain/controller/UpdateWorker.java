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

@WebServlet("/update.htm")
public class UpdateWorker extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//JDBC API classes for data persistence
		
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method updates a worker <br/>
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

		String workerID = request.getParameter("room");
		String workerRoom = workerID.replace("/", "");
		Short room = Short.parseShort(workerRoom);
		String name = request.getParameter("workername");
		String profession = request.getParameter("profession");
		String endurance = request.getParameter("endurance");
		String workerLevel = request.getParameter("level");
		Byte level = Byte.parseByte(workerLevel);
		String workerCost = request.getParameter("cost");
		Long cost = Long.parseLong(workerCost);
		
		Worker updatedWorker = new Worker();
		updatedWorker.setRoom(room);
		updatedWorker.setName(name);
		updatedWorker.setProfession(profession);
		updatedWorker.setEndurance(endurance);
		updatedWorker.setLevel(level);
		updatedWorker.setCost(cost);
		
		WorkerDAO doa = new WorkerDAO();
		
		doa.updateWorker(updatedWorker);
		
		ArrayList<String> nameList = new ArrayList<>();
		nameList = doa.getWorkerNames();
		ListIterator<String> nameIterator = nameList.listIterator();
		request.setAttribute("nameIterator", nameIterator);
		
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
