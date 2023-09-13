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
 * A Data Access Object (DAO) class for handling and managing <br\>
 * event related data requested, updated, and processed in the <br\>
 * application and maintained in the database. The interface <br\>
 * between the application and event data persisting in the <br\>
 * database. <br/>
 *
 * @author Roody Audain
 *
 */
public class WorkerDAO {

	// JDBC API classes for data persistence
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private DatabaseQuerysBean sqlScripts;

	/*
	 *  Default constructor for injecting Spring dependencies for SQL
	 *  queries
	 */
	public WorkerDAO() {
		try (ClassPathXmlApplicationContext context =
				new ClassPathXmlApplicationContext("applicationContext.xml"))
		{
			sqlScripts =
					(DatabaseQuerysBean) context.getBean("SqlBean");
		}
	}

	/**
	 * @return worker data
	 *
	 */
	public ArrayList<Worker> getWorkers(byte page) {
			
		String selectStatement = null;
		final int decrementPage = 899;
		int minimum = 0;
		int maximum = 0;
		final short nextRoom = getNextRoom();
		connection = DataConnection.createConnection();
		final byte offset1 = 97;
		final short offset2 = offset1 + 100;
		final short offset3 = offset1 + 99;
		try {
			switch (page) {
				case 1:
					selectStatement =
					sqlScripts.getWorkerListByRoom1();
					minimum = nextRoom - decrementPage;
					if (nextRoom % 10 > 1) {
						maximum = nextRoom - 1;
					}
					else {
						maximum = nextRoom - (offset1 + 1);
					}
					break;
				case 2:
					selectStatement =
					sqlScripts.getWorkerListByRoom2();
					minimum = nextRoom - (decrementPage * 2);
					maximum = nextRoom - (decrementPage + 1);
					break;
				case 3:
					selectStatement =
					sqlScripts.getWorkerListByRoom3();
					minimum =
							nextRoom - ((decrementPage * 3) - offset1);
					maximum = nextRoom - ((decrementPage * 2) + 1);
				  	break;
				case 4:
					selectStatement =
					sqlScripts.getWorkerListByRoom4();
					minimum =
							nextRoom - ((decrementPage * 4) - offset2);
					maximum =
							nextRoom -
							(((decrementPage * 3) - offset1)) + 3;
					break;
				case 5:
					selectStatement =
					sqlScripts.getWorkerListByRoom5();
					minimum =
							nextRoom - ((decrementPage * 5) - offset2);
					maximum = nextRoom -
							((decrementPage * 4) - offset3);
					break;
				case 6:
					selectStatement =
					sqlScripts.getWorkerListByRoom6();
					minimum = 
							nextRoom -
							((decrementPage * 6) - offset2);
					maximum = nextRoom -
							((decrementPage * 5) - offset3);
				  break;
				case 7:
					selectStatement =
					sqlScripts.getWorkerListByRoom7();
					minimum =
							nextRoom -
							((decrementPage * 7) - offset2);
					maximum = nextRoom -
							((decrementPage * 6) - offset3);
			      break;
				case 69:
					selectStatement =
					sqlScripts.getWorkerListByCost();
					minimum = 101;
					maximum = nextRoom;
			      break;
			}
			preparedStatement =
					connection.prepareStatement(selectStatement);
			preparedStatement.setInt(1, minimum);
			preparedStatement.setInt(2, maximum);
			preparedStatement.execute();
			final ResultSet resultSet =
					preparedStatement.getResultSet();
			final ArrayList<Worker> workerList =
					getWorkerList(resultSet);
			closeConnection(connection);
			return workerList;
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			exception.printStackTrace();
		}
		return null;
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

				String profession =
						resultSet.getString("ProfessionName");
				worker.setProfession(profession);

				String endurance =
						resultSet.getString("EnduranceName");
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
			
		short lastRoom = -1;
		
		connection = DataConnection.createConnection();	
		Statement statement = getStatement(connection);
		final String selectStatement = sqlScripts.getLastRoom();
		final ResultSet resultSet =
				getResultSet(statement, selectStatement);
		try {
			resultSet.next();
			lastRoom = resultSet.getShort("LastRoom");
			closeConnection(connection);
		} catch (final SQLException exception) {
			System.out.println(exception.getMessage());
			exception.printStackTrace();
		}
		if (lastRoom % 10 < 3) {
			final Integer nextRoom = lastRoom + 1;
			return Short.parseShort(nextRoom.toString());
		}
		else {
			final Integer nextRoom = lastRoom + 98;
			return Short.parseShort(nextRoom.toString());
		}
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
	 * DAO for inserting a new worker into the worker table in <br\>
	 * the Database <br/>
	 *
	 * @return void
	 * 
	 */
	public void insertWorker(Worker worker) {
		
		connection = DataConnection.createConnection();
		final String insertSqlStatement = sqlScripts.getInsert();
		try {
			preparedStatement =
					connection.prepareStatement(insertSqlStatement);
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
	 * This method updates a worker in the worker table in the <br\>
	 * database <br/>
	 *
	 * @param A worker that need to be updated
	 * @return void
	 */
	public void updateWorker(Worker worker) {

		// Create a new connection to the database
		connection = DataConnection.createConnection();
		final String updateStatement = sqlScripts.getUpdateWorker();
		try {
			preparedStatement =
					connection.prepareStatement(updateStatement);
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
