package raudain.doa;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import raudain.entity.Worker;

/**
 * <br/>
 * CLASS DESCRIPTION: <br/>
 * A Data Access Object (DAO) class for handling and managing event related data
 * requested, updated, and processed in the application and maintained in the
 * database. The interface between the application and event data persisting in
 * the database. <br/>
 * 
 * @author krishna.kishore
 * 
 */
public class WorkerDAO {

	// LOGGER for handling all transaction messages in EVENTDAO
	private static Logger log = LogManager.getLogger(WorkerDAO.class);

	// JDBC API classes for data persistence
	private Connection connection = null;
	private ResultSet resultSet = null;

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * DAO for displaying all the Events in the Event Table in the Database <br/>
	 * 
	 * PSEUDOCODE: <br/>
	 * Create a new connection to the database. <br/>
	 * Prepare a statement object using the connection that gets all the events from
	 * the event table. <br/>
	 * Execute the SQL statement and keep a reference to the result set.<br/>
	 * Using a WHILE LOOP, store each record in the result set returned in an Event
	 * object by setting the values of the Event attributes as the corresponding
	 * values in the Result set.<br/>
	 * Return the ArrayList to the calling method. <br/>
	 * 
	 * @return Collection of Events
	 * 
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * 
	 */
	public ArrayList<Worker> listWorkers() {
		
		Statement statement = null;
		
		connection = DataConnection.createConnection();
		
		try {
			statement = connection.createStatement();
		} catch (final SQLException e) {
			System.out.println("Error. Can not create the statement: " + e);
		}
		
		final String searchString = "SELECT * FROM workers";
		try {
			resultSet = statement.executeQuery(searchString);
		} catch (final SQLException e) {
			System.out.println("Error. Problem with executeQuery: " + e);
		}
		
		// Now we collect the data from the result in order to display them in
		// the Java Server Page
		
		ArrayList<Worker> workerList = new ArrayList<Worker>();
		try {
			while (resultSet.next()) {
				Worker worker = new Worker();

				short room = resultSet.getShort("Room");
				worker.setRoom(room);

				String name = resultSet.getString("Name");
				worker.setName(name);

				String profession = resultSet.getString("Profession");
				worker.setProfession(profession);

				String endurance = resultSet.getString("Endurance");
				worker.setEndurance(endurance);

				byte level = resultSet.getByte("Level");
				worker.setLevel(level);

				long cost = resultSet.getLong("Cost");
				worker.setCost(cost);

				workerList.add(worker);
			}
		} catch (final SQLException e) {
			System.out.println("Error. Problem reading data: " + e);
		}
		log.info("All workers retreived from Database");
		try {
			DataConnection.closeConnection();
		} catch (final SQLException e) {
			System.out.println("Error. Problem with closing connection: " + e);
		}
		
		
		return workerList;
	}
}
