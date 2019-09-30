<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="description"
	content="Worker tracker for the Virtual Beggar mobile clicker game">
<meta name="author" content="Roody Audain">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Inc | List</title>
<link rel="shortcut icon" type="image/png" href="images/favicon.png">
<link rel="stylesheet" href="stylesheets/common.css">
</head>

<body>

	<section class="wide center-element menu">
		<a id="logo" class="links text" href="index.html">V.B Tower</a>
		<ul class="links">
			<li><a class="text top" href="index.html">Home</a></li>
			<li><a class="text top" href="newProduct.html">Add Book</a></li>
			<li><a class="text top" href="ListProducts">Book Collection</a></li>
			<li><a class="text top" href="ListWorkers">List Workers</a></li>
			<li><a class="text top" href="Board">Worker Board</a></li>
			<li><a class="text top" href="Home Property/index.html">Home Property</a></li>
		</ul>
	</section>
	<h1>These are the workers from the database</h1>
	<hr>
	<c:choose>
		<c:when test="${workerList == null or workerList.isEmpty()}">
                The List is empty.
              </c:when>
		<c:otherwise>
			<table border="1">
				<tr>
					<th>Room</th>
					<th>Name</th>
					<th>Profession</th>
					<th>Endurance</th>
					<th>Level</th>
					<th>Cost</th>
				</tr>
				<c:forEach var="worker" items="${workerList}">
					<tr>
						<td>${worker.room}</td>
						<td>${worker.name}</td>
						<td>${worker.profession}</td>
						<td>${worker.endurance}</td>
						<td>${worker.level}</td>
						<td>${worker.cost}</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
	<hr>
	<a href='index.html'>Main Page</a>
	<br>
</body>
</html>
