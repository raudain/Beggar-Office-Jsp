package raudain.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import raudain.Book;
import raudain.doa.DatabaseCredentials;

/**
 * Servlet implementation class ListProducts
 */
@WebServlet("/ListProducts")
public class ListProducts extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListProducts() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doGet(final HttpServletRequest request,
                         final HttpServletResponse response) throws ServletException, IOException {

        final ArrayList<Book> bookList = new ArrayList<>();
        // Adding the (at this moment empty) bookList to the session
        request.setAttribute("bookList", bookList);

        Connection connection;
        Statement statement;
        ResultSet result = null;

        final String dbURL = DatabaseCredentials.getURL();
        final String user = DatabaseCredentials.getUser();
        final String password = DatabaseCredentials.getPassword();

        try {
            Class.forName(DatabaseCredentials.getDriver());
        } catch (final ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            connection = DriverManager.getConnection(dbURL, user, password);
        } catch (final SQLException e) {
            return;
        }

        try {
            statement = connection.createStatement();
        } catch (final SQLException e) {
            System.out.println("Error. Can not create the statement: " + e);
            return;
        }

        final String searchString = "SELECT * FROM products";
        try {
            result = statement.executeQuery(searchString);
        } catch (final SQLException e) {
            System.out.println("Error. Problem with executeUpdate: " + e);
            return;
        }

        // Now we collect the data from the result in order to display them in
        // the Java Server Page

        try {
            while (result.next()) {
                final Book book = new Book();
                final String title = result.getString("title");
                book.setTitle(title);

                final String description = result.getString("description");
                book.setDescription(description);

                final float price = result.getFloat("price");
                book.setPrice(price);
                bookList.add(book);
            }
        } catch (final SQLException e) {
            System.out.println("Error. Problem reading data: " + e);
            return;
        }

        try {
            connection.close();
        } catch (final SQLException e) {
            System.out.println("Error. Problem with closing connection: " + e);
            return;
        }

        final RequestDispatcher disp = request
            .getRequestDispatcher("/showBookList.jsp");
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
