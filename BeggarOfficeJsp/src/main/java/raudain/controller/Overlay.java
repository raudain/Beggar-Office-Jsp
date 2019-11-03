package raudain.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.ListIterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import raudain.doa.DatabaseCredentials;
import raudain.doa.WorkerDAO;
import raudain.entity.Worker;

/**
 * Servlet implementation class ListWorkersServlet
 */
@WebServlet("/Overlay")
public class Overlay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static Logger log = LogManager.getLogger(Overlay.class);

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
	protected void doGet(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {

		if (request == null || response == null) {
			log.info("Request or Response failed for doGet METHOD..");
		}
		
		WorkerDAO doa = new WorkerDAO();
		ArrayList<Worker> workerList = new ArrayList<>();
		ArrayList<String> nameList = new ArrayList<>();
		workerList = doa.listWorkers();
		nameList = doa.listNames();
		request.setAttribute("workerList", workerList);
		ListIterator<String> nameIterator = nameList.listIterator();
		request.setAttribute("nameIterator", nameIterator);

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
