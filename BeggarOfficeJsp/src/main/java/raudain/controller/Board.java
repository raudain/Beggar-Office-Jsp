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

import raudain.doa.WorkerDAO;

/**
 * Servlet implementation class ListWorkersServlet
 */
@WebServlet("/Board")
public class Board extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * This method is for showing ...<br/>
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
