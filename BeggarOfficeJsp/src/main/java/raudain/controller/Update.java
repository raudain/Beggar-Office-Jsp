package raudain.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import raudain.doa.WorkerDAO;

@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for queuing up the next <br/>
	 * open room for a new worker<br/>
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
		short room = doa.getNextRoom();
		request.setAttribute("room", room);

		final RequestDispatcher disp = request.getRequestDispatcher("/update.jsp");
		disp.forward(request, response);
	}
}
