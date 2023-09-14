package raudain.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.ArrayList;

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
	 * This method is for inserting a worker into the dbo.worker <br\>
	 * table<br/>
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
		
		final String roomNumber = request.getParameter("room");
		final Short room = Short.parseShort(roomNumber);
		final String name = request.getParameter("name");
		final String workerProfession = request.getParameter("profession");
		final byte profession = Byte.parseByte(workerProfession);
		final String workerEndurance = request.getParameter("endurance");
		final byte endurance = Byte.parseByte(workerEndurance);
		final Long cost = calculateCost(profession, endurance);
		
		final Worker worker = new Worker();
		worker.setRoom(room);
		worker.setName(name);
		worker.setProfession(workerProfession);
		worker.setEndurance(workerEndurance);
		worker.setCost(cost);
		
		final WorkerDAO doa = new WorkerDAO();
		if(worker.getRoom() == doa.getNextRoom()) {
			doa.insertWorker(worker);
			System.out.println("Worker number " + worker.getRoom() +
					" added");
		} else {
			doa.updateWorker(worker);
			System.out.println("Worker number " + worker.getRoom() +
					" updated");
		}
		final ArrayList<Worker> workerList = doa.getWorkers(1);
		request.setAttribute("workerList", workerList);
		final RequestDispatcher disp =
				request.getRequestDispatcher("table.jsp");
		
		disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, <br\>
	 * HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(final HttpServletRequest request,
			final HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * Get the cost of a new worker  <br/>
	 *
	 *
	 * @return profession
	 *
	 */
	private static Long calculateCost(byte profession,
			byte endurance) {
		
		long cost = 0;
		
		switch (profession) {
			/* 1. Artist */
			case 21:
				switch (endurance) {
					case 1:		cost = 15000;
								break;
					case 2: 	cost = 25000;
        						break;
					case 3: 	cost = 100000;
        						break;
					case 4: 	cost = 370000;
        						break;
					case 5:		cost = 2000000;
        						break;
					case 6: 	cost = 22000000;
        						break;
					default:	cost = -21;
        						break;
				}
				break;
			/* 2. Businessman */
			case 71:
				switch (endurance) {
					case 1:		cost = 90;
								break;
					case 2: 	cost = 160;
        						break;
					case 3: 	cost = 270;
        						break;
					case 4: 	cost = 450;
        						break;
					case 5:		cost = 850;
        						break;
					case 6: 	cost = 1700;
        						break;
					default:	cost = -71;
        						break;
				}
				break;
			/* 3. Computer Engineer */
			case 42:
				switch (endurance) {
					case 1:		cost = 0;
								break;
					case 2: 	cost = 950000;
        						break;
					case 3: 	cost = 3050000;
        						break;
					case 4: 	cost = 10500000;
        						break;
					case 5:		cost = 40000000;
        						break;
					case 6: 	cost = 520000000;
        						break;
					default:	cost = -42;
        						break;
				}
				break;
			/* 4. Construction Worker */
			case 11:
				switch (endurance) {
					case 1:		cost = 2500;
								break;
					case 2: 	cost = 5000;
        						break;
					case 3: 	cost = 20000;
        						break;
					case 4: 	cost = 70000;
        						break;
					case 5:		cost = 0;
        						break;
					case 6: 	cost = 2000000;
        						break;
					default:	cost = -11;
        						break;
				}
				break;
			/* 5. Cook */
			case 22:
				switch (endurance) {
					case 1:		cost = 15000;
								break;
					case 2: 	cost = 25000;
        						break;
					case 3: 	cost = 100000;
        						break;
					case 4: 	cost = 370000;
        						break;
					case 5:		cost = 2000000;
        						break;
					case 6: 	cost = 22000000;
        						break;
					default:	cost = -22;
        						break;
				}
				break;
			/* 6. Doctor */
			case 41:
				switch (endurance) {
					case 1:		cost = 500000;
								break;
					case 2: 	cost = 950000;
        						break;
					case 3: 	cost = 3100000;
        						break;
					case 4: 	cost = 10500000;
        						break;
					case 5:		cost = 40000000;
        						break;
					case 6: 	cost = 520000000;
        						break;
					default:	cost = -41;
        						break;
				}
				break;
			/* 7. Firefighter */
			case 24:
				switch (endurance) {
					case 1:		cost = 15000;
								break;
					case 2: 	cost = 25000;
        						break;
					case 3: 	cost = 250000;
        						break;
					case 4: 	cost = 370000;
        						break;
					case 5:		cost = 5000000;
        						break;
					case 6: 	cost = 22000000;
        						break;
					default:	cost = -24;
        						break;
				}
				break;
			/* 8. Gardener */
			case 13:
				switch (endurance) {
					case 1:		cost = 2500;
								break;
					case 2: 	cost = 5000;
        						break;
					case 3: 	cost = 20000;
        						break;
					case 4: 	cost = 100000;
        						break;
					case 5:		cost = 0;
        						break;
					case 6: 	cost = 0;
        						break;
					default:	cost = -13;
        						break;
				}
				break;
			/* 9. Journalist */
			case 32:
				switch (endurance) {
					case 1:		cost = 100000;
								break;
					case 2: 	cost = 180000;
        						break;
					case 3: 	cost = 640000;
        						break;
					case 4: 	cost = 2400000;
        						break;
					case 5:		cost = 10000000;
        						break;
					case 6: 	cost = 125000000;
        						break;
					default:	cost = -32;
        						break;
				}
				break;
			/* 10. Lawyer */
			case 44:
				switch (endurance) {
					case 1:		cost = 320000;
								break;
					case 2: 	cost = 950000;
        						break;
					case 3: 	cost = 3050000;
        						break;
					case 4: 	cost = 10500000;
        						break;
					case 5:		cost = 40000000;
        						break;
					case 6: 	cost = 520000000;
        						break;
					default:	cost = -44;
        						break;
				}
				break;
			/* 11. Mad Scientist */
			case 61:
				switch (endurance) {
					case 1:		cost = 12000000;
								break;
					case 2: 	cost = 0;
        						break;
					case 3: 	cost = 120000000;
        						break;
					case 4: 	cost = 400000000;
        						break;
					case 5:		cost = 2000000000;
        						break;
					case 6: 	cost = Long.parseLong("48000000000");
        						break;
					default:	cost = -61;
        						break;
				}
				break;
			/* 12. Magician */
			case 23:
				switch (endurance) {
					case 1:		cost = 15000;
								break;
					case 2: 	cost = 28000;
        						break;
					case 3: 	cost = 95000;
        						break;
					case 4: 	cost = 370000;
        						break;
					case 5:		cost = 2000000;
        						break;
					case 6: 	cost = 25000000;
        						break;
					default:	cost = -23;
        						break;
				}
				break;
			/* 13. Pilot */
			case 52:
				switch (endurance) {
					case 1:		cost = 5000000;
								break;
					case 2: 	cost = 5000000;
        						break;
					case 3: 	cost = 15500000;
        						break;
					case 4: 	cost = 55000000;
        						break;
					case 5:		cost = 260000000;
        						break;
					case 6: 	cost = Long.parseLong("5800000000");
        						break;
					default:	cost = -52;
        						break;
				}
				break;
			/* 14. Politician */
				
			case 51:
				switch (endurance) {
					case 1:		cost = 1600000;
								break;
					case 2: 	cost = 5000000;
        						break;
					case 3: 	cost = 15500000;
        						break;
					case 4: 	cost = 55000000;
        						break;
					case 5:		cost = 260000000;
        						break;
					case 6: 	cost = Long.parseLong("5800000000");
        						break;
					default:	cost = -14;
        						break;
				}
				break;
			/* 15. Santa */
			case 43:
				switch (endurance) {
					case 1:		cost = 310000;
								break;
					case 2: 	cost = 950000;
        						break;
					case 3: 	cost = 3050000;
        						break;
					case 4: 	cost = 10500000;
        						break;
					case 5:		cost = 40000000;
        						break;
					case 6: 	cost = Long.parseLong("520000000");
        						break;
					default:	cost = -15;
        						break;
				}
				break;
			/* 16. Scientist */
			case 31:
				switch (endurance) {
					case 1:		cost = 60000;
								break;
					case 2: 	cost = 180000;
        						break;
					case 3: 	cost = 640000;
        						break;
					case 4: 	cost = 2400000;
        						break;
					case 5:		cost = 10000000;
        						break;
					case 6: 	cost = Long.parseLong("125000000");
        						break;
					default:	cost = -16;
        						break;
				}
			default:	cost = -1;
				break;
		}
		
		return cost;
	}
}
