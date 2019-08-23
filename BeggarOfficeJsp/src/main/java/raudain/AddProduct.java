package raudain;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doGet(final HttpServletRequest request,
                         final HttpServletResponse response) throws ServletException, IOException {

        Connection connection;
        PreparedStatement statement;

        final String title = request.getParameter("title");
        final String description = request.getParameter("description");
        final float price = Float.parseFloat(request.getParameter("price"));

        final String dbURL = DatabaseCredentials.getURL();
        final String user = DatabaseCredentials.getUser();
        final String password = DatabaseCredentials.getPassword();

        try {

            Class.forName(DatabaseCredentials.getDriver());
        } catch (final ClassNotFoundException e) {
            System.out.println("Error. Driver class not found: " + e);
        }

        try {
            connection = DriverManager.getConnection(dbURL, user, password);
        } catch (final SQLException e) {
            System.out.println("Error. Connection problem: " + e);
            return;
        }


        try {
            statement = connection.prepareStatement("INSERT INTO products (id, title, description, price) VALUES (0,?,?,?)");

            statement.setString(1,title);
            statement.setString(2, description);
            statement.setFloat(3, price);
        } catch (final SQLException e) {
            System.out.println("Error. Can not create the statement: " + e);
            return;
        }



        try {

            statement.executeUpdate();
        } catch (final SQLException e) {
            System.out.println("Error. Problem with executeUpdate: " + e);
            return;
        }

        try {
            connection.close();
        } catch (final SQLException e) {
            System.out.println("Error. Problem with closing connection: " + e);
            return;
        }

        final RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/addingOk.jsp");
        disp.forward(request, response);





    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doPost(final HttpServletRequest request,
                          final HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
