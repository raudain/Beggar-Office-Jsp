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
	public ArrayList<Worker> getWorkersByRoom(byte page) {

		connection = DataConnection.createConnection();
		Statement statement = getStatement(connection);
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
		ResultSet resultSet = getResultSet(statement, selectStatement);
		ArrayList<Worker> workerList = getWorkerList(resultSet);
		closeConnection(connection);
		
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
	 */
	public ArrayList<Worker> getWorkersByCost() {
		
		connection = DataConnection.createConnection();
		Statement statement = getStatement(connection);
		final String selectStatment = sqlScripts.getWorkerListByCost();
		ResultSet resultSet = getResultSet(statement, selectStatment);
		ArrayList<Worker> workerList = getWorkerList(resultSet);
		closeConnection(connection);
		return workerList;
	}
	
	/**
	 * <br/>
	 * Collect worker data from the result
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
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			exception.printStackTrace();
		}
		return workerList;
	}
	
	/**
	 *
	 * @return The number of the next available room for a new worker
	 *
	 */
	public short getNextRoom() {
		
		connection = DataConnection.createConnection();
		final String selectStatement = sqlScripts.getLastRoom();
		Statement statement = getStatement(connection);
		final ResultSet resultSet =
				getResultSet(statement, selectStatement);
		try {
			resultSet.next();
			short lastRoom = -1;
			lastRoom = resultSet.getShort("LastRoom");
			closeConnection(connection);
			if (lastRoom % 10 == 3) {
				final Integer nextRoom = lastRoom + 98;
				return Short.parseShort(nextRoom.toString());
			}
			else {
				final Integer nextRoom = lastRoom + 1;
				return Short.parseShort(nextRoom.toString());
			}
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			exception.printStackTrace();
		}
		return -1;
	}
	
	private Statement getStatement(Connection connection) {
		
		Statement statement = null;
		try {
			statement = connection.createStatement();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			System.out.println("Error creating "
					+ "Statement WorkerDAO");
			exception.printStackTrace();
		}
		return statement;
	}
	
	private ResultSet getResultSet(Statement statement, 
								   String selectStatement) {
		
		ResultSet resultSet = null;
		try {
			resultSet = statement.executeQuery(selectStatement);
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			exception.printStackTrace();
		}
		return resultSet;
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
			closeConnection(connection);
			
			preparedStatement.setShort(1, worker.getRoom());
			preparedStatement.setString(2, worker.getName());
			byte profession = Byte.parseByte(worker.getProfession());
			preparedStatement.setByte(3, profession);
			byte endurance = Byte.parseByte(worker.getEndurance());
			preparedStatement.setByte(4, endurance);
			preparedStatement.setLong(5, worker.getCost());
			
			preparedStatement.executeUpdate();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
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
			closeConnection(connection);
			
			preparedStatement.setString(1, worker.getName());
			byte profession = Byte.parseByte(worker.getProfession());
			preparedStatement.setByte(2, profession);
			byte endurance = Byte.parseByte(worker.getEndurance());
			preparedStatement.setByte(3, endurance);
			preparedStatement.setLong(4, worker.getCost());
			preparedStatement.setShort(5, worker.getRoom());
			
			preparedStatement.executeUpdate();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			exception.printStackTrace();
		}
	}
	
	private void closeConnection(Connection Connection) {
		
		try {
			DataConnection.closeConnection();
			connection.close();
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			exception.printStackTrace();
		}
	}
}
