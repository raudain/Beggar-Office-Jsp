<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
</head>
<body>
    <h1>These are the books from the database </h1>
    <hr>
    <c:choose>
        <c:when test="${bookList == null or bookList.isEmpty()}">
            The List is empty.
        </c:when>
        <c:otherwise>
            <table border=1>
                <tr><th>Title</th><th>Desription</th><th>Price</th></tr>
                <c:forEach var="book" items="${bookList}">
                    <tr><td>${book.title}</td><td>${book.description}</td><td>${book.price}</td></tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
    <hr>
    <a href='index.html'>Main Page</a>
    <br>
</body>
</html>
