<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
	<meta http-equiv="Content-Type"
		content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="description"
		content="Worker tracker for the Virtual Beggar mobile clicker game">
	<meta name="author" content="Roody Audain">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Worker List</title>
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<link rel="stylesheet" href="stylesheets/stylesheet.css">
	<link rel="stylesheet" href="stylesheets/board.css">
</head>

<body>
	<header style="background-color: #fff; width: 100%; height: 8.5vh;">
		<h1 id="title" class="text top">V.B Desktop</h1>
		<a id="link" class="text top top-right" href="index.html">Tower</a>
		<form action="getEmployee">
			<input id="search-box" class="text top banner-search top-right"
				type="text" name="position" placeholder="Search"> <input
				id="magnifying-glass" class="top top-right banner-search"
				type="image" src=images/search.gif>
		</form>
	</header>
	${workerList.get(0)}
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
