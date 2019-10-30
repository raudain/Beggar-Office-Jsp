package raudain.doa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * <br/>
 * CLASS DESCRIPTION: <br/>
 * 
 * A helper class that centralizes the management of data connections in the
 * underlying database. <br/>
 * 
 * @author krishna.kishore, Roody Audain
 * 
 */
public class DataConnection {

	// LOGGER for logging connection details
	private static Logger logger = LogManager.getLogger(DataConnection.class);

	// New instance of Connection
	private static Connection connection = null;

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * 
	 * Open connection to access the underlying database. <br/>
	 * 
	 * @return Connection
	 * 
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * 
	 */

	public static Connection createConnection() {
		
		try {
            Class.forName(DatabaseCredentials.getDriver());
        } catch (final ClassNotFoundException exception) {
        	logger.info("Exception is :" + exception.getMessage());
        	exception.printStackTrace();
        }
		
        final String databaseURL = DatabaseCredentials.getURL();
        final String user = DatabaseCredentials.getUser();
        final String password = DatabaseCredentials.getPassword();
        try {
            connection = DriverManager.getConnection(databaseURL, user, password);
        } catch (final SQLException exception) {
        	logger.info("Exception is :" + exception.getMessage());
        	exception.printStackTrace();
        } 
        logger.info("----Connection established with MYSQL database----");
		return connection;
	}

	/**
	 * <br/>
	 * METHOD DESCRIPTION: <br/>
	 * 
	 * Close connection accessing the underlying database. <br/>
	 * 
	 * @return Connection
	 * 
	 * @throws SQLException
	 * 
	 */
	public static void closeConnection() throws SQLException {
		logger.info("----Connection closed with MYSQL database----");
		connection.close();
	}
}
