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
	 * Using a WHILE LOOP, store each record in the result set returned in a Worker
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
	public ArrayList<Worker> getWorkersByRoom() {

		Statement statement = null;
		connection = DataConnection.createConnection();	
		try {
			statement = connection.createStatement();
		} catch (final SQLException e) {
			System.out.println("Error creating "
					+ "Statement in WorkerDAO.getWorkersByRoom()");
			e.printStackTrace();
		}
		
		final String sqlScript = sqlScripts.getWorkerListByRoom();
		try {
			resultSet = statement.executeQuery(sqlScript);
		} catch (final SQLException e) {
			System.out.println("Error creating "
					+ "ResultSet in WorkerDAO.getWorkersByRoom()");
			e.printStackTrace();
		}

		// Now we collect the data from the result in order to display them in
		// the Java Server Page
		ArrayList<Worker> workerList = new ArrayList<Worker>();
		try {
			while (resultSet.next()) {
				Worker worker = new Worker();

				short room = resultSet.getShort("WK.Room");
				worker.setRoom(room);

				String name = resultSet.getString("WK.Name");
				worker.setName(name);

				String profession = resultSet.getString("PR.ProfessionName");
				worker.setProfession(profession);

				String endurance = resultSet.getString("EN.EnduranceName");
				worker.setEndurance(endurance);

				long cost = resultSet.getLong("WK.Cost");
				worker.setCost(cost);

				workerList.add(worker);
			}
		} catch (final SQLException e) {
			System.out.println("Error. Problem getting workers.");
			e.printStackTrace();
		}
		try {
			DataConnection.closeConnection();
		} catch (final SQLException e) {
			System.out.println("Error. Problem with closing connection");
			e.printStackTrace();
		}
		return workerList;
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
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 *
	 */
	public ArrayList<Worker> getWorkersByCost() {

		Statement statement = null;
		connection = DataConnection.createConnection();	
		try {
			statement = connection.createStatement();
		} catch (final SQLException e) {
			System.out.println("Error creating "
					+ "Statement in getWorkers WorkerDAO");
			e.printStackTrace();
		}
		
		final String sqlScript = sqlScripts.getWorkerListByCost();
		try {
			resultSet = statement.executeQuery(sqlScript);
		} catch (final SQLException e) {
			System.out.println("Error creating "
					+ "ResultSet in getWorkers WorkerDAO");
			e.printStackTrace();
		}

		// Now we collect the data from the result in order to display them in
		// the Java Server Page
		ArrayList<Worker> workerList = new ArrayList<Worker>();
		try {
			while (resultSet.next()) {
				Worker worker = new Worker();

				short room = resultSet.getShort("WK.Room");
				worker.setRoom(room);

				String name = resultSet.getString("WK.Name");
				worker.setName(name);

				String profession = resultSet.getString("PR.ProfessionName");
				worker.setProfession(profession);

				String endurance = resultSet.getString("EN.EnduranceName");
				worker.setEndurance(endurance);

				long cost = resultSet.getLong("WK.Cost");
				worker.setCost(cost);

				workerList.add(worker);
			}
		} catch (final SQLException e) {
			System.out.println("Error. Problem getting workers.");
			e.printStackTrace();
		}
		try {
			DataConnection.closeConnection();
		} catch (final SQLException e) {
			System.out.println("Error. Problem with closing connection");
			e.printStackTrace();
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
		} catch (final SQLException e) {
			System.out.println("Error creating "
					+ "Statement in getNextRoom WorkerDAO");
			e.printStackTrace();
		}
		
		final String sqlScript = sqlScripts.getLastRoom();
		try {
			resultSet = statement.executeQuery(sqlScript);
			resultSet.next();
		} catch (final SQLException e) {
			System.out.println("Error creating "
					+ "ResultSet in getNextRoom WorkerDAO");
			e.printStackTrace();
		}
		short lastRoom = -1;
		try {
			lastRoom = resultSet.getShort("LastRoom");
		} catch (final SQLException e) {
			System.out.println("Error. Problem getting next free room.");
			e.printStackTrace();
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
	 * DAO for inserting a new worker into the worker Table in the Database <br/>
	 *
	 * @return void
	 * 
	 */
	public void insertWorker(Worker worker) {

		short room = worker.getRoom();
		String name = worker.getName();
		String workerProfession = worker.getProfession();
		byte profession = Byte.parseByte(workerProfession);
		String workerEndurance = worker.getEndurance();
		byte endurance = Byte.parseByte(workerEndurance);
		long cost = calculateCost(profession, endurance);
		
		connection = DataConnection.createConnection();
		final String insertSqlStatement = sqlScripts.getInsert();
		try {
			// Prepare a statement object using the connection for provided worker room
			preparedStatement = connection.prepareStatement(insertSqlStatement);
			
			preparedStatement.setShort(1, room);
			preparedStatement.setString(2, name);
			preparedStatement.setByte(3, profession);
			preparedStatement.setByte(4, endurance);
			preparedStatement.setLong(5, cost);
			
			preparedStatement.executeUpdate();
			connection.close();
		} catch (final SQLException e) {
			e.printStackTrace();
		}
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
	private static Long calculateCost(byte profession, byte endurance) {
		
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					case 6: 	cost = Long.parseLong("48000000000") ;
        						break;
					default:	cost = 0;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
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
					default:	cost = -1;
        						break;
				}
		}
		
		return cost;
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
	 * Return the ArrayList to the calling method. <br/>
	 *
	 * @return All of the worker's names
	 * 
	 */
	public ArrayList<String> getWorkerNames() {

		Statement statement = null;

		connection = DataConnection.createConnection();

		try {
			statement = connection.createStatement();
		} catch (final SQLException e) {
			System.out.println("Error. Can not create the statement: " + e);
		}

		final String sqlScript = sqlScripts.getWorkerNameList();
		try {
			resultSet = statement.executeQuery(sqlScript);
		} catch (final SQLException e) {
			System.out.println("Error. Problem with executeQuery: " + e);
		}

		// Now we collect the data from the result in order to display them in
		// the Java Server Page

		ArrayList<String> namesList = new ArrayList<String>();
		try {
			while (resultSet.next()) {
				String name = resultSet.getString("name");
				namesList.add(name);
			}
		} catch (final SQLException e) {
			System.out.println("Error. Problem reading data: " + e);
		}
		try {
			DataConnection.closeConnection();
		} catch (final SQLException e) {
			System.out.println("Error. Problem with closing connection: " + e);
		}
		return namesList;
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
	 * Return the ArrayList to the calling method. <br/>
	 *
	 * @return Collection of Events
	 *
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 *
	 */
	public Worker getWorker(short room) {

		connection = DataConnection.createConnection();
		final String searchString = "SELECT * FROM workers WHERE room=?;";
		Worker worker = new Worker();
		try {
			preparedStatement = connection.prepareStatement(searchString);
			preparedStatement.setShort(1, room);
			resultSet = preparedStatement.executeQuery();

			// Now we collect the data from the result in order to display them in
			// the Java Server Page

			while (resultSet.next()) {
				worker.setRoom(room);

				String name = resultSet.getString("name");
				worker.setName(name);

				String profession = resultSet.getString("profession");
				worker.setProfession(profession);

				String endurance = resultSet.getString("endurance");
				worker.setEndurance(endurance);

				long cost = resultSet.getLong("cost");
				worker.setCost(cost);
			}
			DataConnection.closeConnection();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
		}
		return worker;
	}

	/**
	 * This method updates a worker
	 *
	 * PSEUDOCODE: <br/>
	 * Create a new connection to the database. <br/>
	 * Prepare a statement object using the connection that get a worker from the
	 * worker table for provided worker id. <br/>
	 * Execute the SQL statement and keep a reference to the result set. <br/>
	 * Update the event object by calling getUpdateEventSession method Event is
	 * updated in database. <br/>
	 *
	 * @param A worker that need to be updated
	 * @return void
	 */
	public void updateWorker(Worker updatedWorker) {

		// Create a new connection to the database
		connection = DataConnection.createConnection();

		String sqlScript = sqlScripts.getUpdateWorker();
		short room = updatedWorker.getRoom();
		String name = updatedWorker.getName();
		String profession = updatedWorker.getProfession();
		String endurance = updatedWorker.getEndurance();
		Long cost = updatedWorker.getCost();
		try {
			// Prepare a statement object using the connection for provided worker room
			preparedStatement = connection.prepareStatement(sqlScript);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, profession);
			preparedStatement.setString(3, endurance);
			preparedStatement.setLong(5, cost);;
			preparedStatement.setInt(6, room);
			preparedStatement.executeUpdate();
			connection.close();
		} catch (final SQLException e) {
			e.printStackTrace();
		}
	}
}
