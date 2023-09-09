package raudain.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * <br/>
 * CLASS DESCRIPTION: <br/>
 * A Data Access Object (DAO) class for handling and managing event related data
 * requested, updated, and processed in the application and maintained in the
 * database. The interface between the application and event data persisting in
 * the database. <br/>
 *
 * @author Roody Audain
 *
 */
public class WorkerDAO {

	// JDBC API classes for data persistence
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private DatabaseQuerysBean sqlScripts;
	private ResultSet resultSet = null;

	// Default constructor for injecting Spring dependencies for SQL queries
	public WorkerDAO() {
		try (ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml")) {
			sqlScripts = (DatabaseQuerysBean) context.getBean("SqlBean");
		}
	}

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * DAO for displaying all of the worker names in the worker Table in the
	 * Database <br/>
	 *
	 * PSEUDOCODE: <br/>
	 * Create a new connection to the database. <br/>
	 * Prepare a statement object using the connection that gets all the worker
	 * names from the worker table. <br/>
	 * Execute the SQL statement and keep a reference to the result set.<br/>
	 * Return the ArrayList to the calling method. <br/>
	 *
	 * @return List of workers for page one
	 *
	 */
	public ArrayList<Worker> getWorkersByRoom(int page) {

		Statement statement = null;
		connection = DataConnection.createConnection();	
		try {
			statement = connection.createStatement();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error creating "
					+ "Statement in WorkerDAO.getWorkersByRoom()");
			exception.printStackTrace();
		}
		
		String selectStatement = sqlScripts.getWorkerListByRoom1();
		switch (page) {
		  case 2:
			  selectStatement = sqlScripts.getWorkerListByRoom2();
			  break;
		  case 3:
			  selectStatement = sqlScripts.getWorkerListByRoom3();
			  break;
		  case 4:
			  selectStatement = sqlScripts.getWorkerListByRoom4();
			  break;
		  case 5:
			  selectStatement = sqlScripts.getWorkerListByRoom5();
			  break;
		  case 6:
			  selectStatement = sqlScripts.getWorkerListByRoom6();
			  break;
		  case 7:
			  selectStatement = sqlScripts.getWorkerListByRoom7();
		      break;
		}
		
		try {
			resultSet = statement.executeQuery(selectStatement);
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error creating "
					+ "ResultSet in WorkerDAO.getWorkersByRoom()");
			exception.printStackTrace();
		}
		return getWorkerList(resultSet);
	}
	
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * DAO for displaying all of the worker names in the worker Table in the
	 * Database <br/>
	 *
	 * PSEUDOCODE: <br/>
	 * Create a new connection to the database. <br/>
	 * Prepare a statement object using the connection that gets all the worker
	 * names from the worker table. <br/>
	 * Execute the SQL statement and keep a reference to the result set.<br/>
	 * Using a WHILE LOOP, store each record in the result set returned in a Worker
	 * object by setting the values of the Event attributes as the corresponding
	 * values in the Result set.<br/>
	 * Return the ArrayList to the calling method. <br/>
	 *
	 * @return Collection of Events
	 *
	 */
	public ArrayList<Worker> getWorkersByCost() {

		Statement statement = null;
		connection = DataConnection.createConnection();	
		try {
			statement = connection.createStatement();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error creating "
					+ "Statement in getWorkers WorkerDAO");
			exception.printStackTrace();
		}
		
		final String sqlScript = sqlScripts.getWorkerListByCost();
		try {
			resultSet = statement.executeQuery(sqlScript);
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error creating "
					+ "ResultSet in getWorkers WorkerDAO");
			exception.printStackTrace();
		}

		return getWorkerList(resultSet);
	}
	
	/**
	 * <br/>
	 * Now we collect the data from the result in order to display them in
	 * the Java Server Page <br/>
	 * 
	 * @return ArrayList<Worker>
	 *
	 */
	private ArrayList<Worker> getWorkerList(ResultSet resultSet) {

		ArrayList<Worker> workerList = new ArrayList<Worker>();
		try {
			while (resultSet.next()) {
				Worker worker = new Worker();

				short room = resultSet.getShort("Room");
				worker.setRoom(room);

				String name = resultSet.getString("Name");
				worker.setName(name);

				String profession = resultSet.getString("ProfessionName");
				worker.setProfession(profession);

				String endurance = resultSet.getString("EnduranceName");
				worker.setEndurance(endurance);

				long cost = resultSet.getLong("Cost");
				worker.setCost(cost);

				workerList.add(worker);
			}
		} catch (final SQLException e) {
			System.out.println("Error. Problem getting workers.");
			e.printStackTrace();
		}
		try {
			DataConnection.closeConnection();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error. Problem with closing connection");
			exception.printStackTrace();
		}
		return workerList;
	}
	
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * DAO for displaying all the workers in the worker Table in the Database <br/>
	 *
	 * PSEUDOCODE: <br/>
	 * Create a new connection to the database. <br/>
	 * Prepare a statement object using the connection that gets all the workers
	 * from the worker table. <br/>
	 * Execute the SQL statement and keep a reference to the result set.<br/>
	 *
	 * @return The number of the next available room for a new worker
	 *
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 *
	 */
	public short getNextRoom() {
		
		Statement statement = null;
		connection = DataConnection.createConnection();
		try {
			statement = connection.createStatement();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error creating "
					+ "Statement in getNextRoom WorkerDAO");
			exception.printStackTrace();
		}
		
		final String sqlScript = sqlScripts.getLastRoom();
		try {
			resultSet = statement.executeQuery(sqlScript);
			resultSet.next();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error creating "
					+ "ResultSet in getNextRoom WorkerDAO");
			exception.printStackTrace();
		}
		short lastRoom = -1;
		try {
			lastRoom = resultSet.getShort("LastRoom");
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error. Problem getting next free room.");
			exception.printStackTrace();
		}
		if (lastRoom % 10 == 3) {
			final Integer nextRoom = lastRoom + 98;
			return Short.parseShort(nextRoom.toString());
		}
		else {
			final Integer nextRoom = lastRoom + 1;
			return Short.parseShort(nextRoom.toString());
		}
	}
	
	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * DAO for inserting a new worker into the worker table in the Database <br/>
	 *
	 * @return void
	 * 
	 */
	public void insertWorker(Worker worker) {
		
		// Create a new connection to the database
		connection = DataConnection.createConnection();
		final String insertSqlStatement = sqlScripts.getInsert();
		try {
			// Prepare a statement object using the connection for provided worker room
			preparedStatement = connection.prepareStatement(insertSqlStatement);		
			preparedStatement.setShort(1, worker.getRoom());
			preparedStatement.setString(2, worker.getName());
			byte profession = Byte.parseByte(worker.getProfession());
			preparedStatement.setByte(3, profession);
			byte endurance = Byte.parseByte(worker.getEndurance());
			preparedStatement.setByte(4, endurance);
			preparedStatement.setLong(5, worker.getCost());
			
			preparedStatement.executeUpdate();
			connection.close();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Problem created a prepared statement " +
							   "in WokerDAO.insertWorker");
			exception.printStackTrace();
		}
	}
	
	/**
	 * <br/>
	 * * METHOD DESCRIPTION: <br/>
	 * This method updates a worker in the worker table in the database <br/>
	 *
	 * @param A worker that need to be updated
	 * @return void
	 */
	public void updateWorker(Worker worker) {

		// Create a new connection to the database
		connection = DataConnection.createConnection();
		final String updateStatement = sqlScripts.getUpdateWorker();
		try {
			// Prepare a statement object using the connection for provided worker room
			preparedStatement = connection.prepareStatement(updateStatement);
			preparedStatement.setString(1, worker.getName());
			byte profession = Byte.parseByte(worker.getProfession());
			preparedStatement.setByte(2, profession);
			byte endurance = Byte.parseByte(worker.getEndurance());
			preparedStatement.setByte(3, endurance);
			preparedStatement.setLong(4, worker.getCost());
			preparedStatement.setShort(5, worker.getRoom());
			
			preparedStatement.executeUpdate();
			connection.close();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error with preparedStatement: " + exception);
			exception.printStackTrace();
		}
	}
}
