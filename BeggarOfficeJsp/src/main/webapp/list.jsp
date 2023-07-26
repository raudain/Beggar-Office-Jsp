<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	info="Sort Workers" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>

	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="description" content="Worker sorter for the Virtual Beggar mobile clicker game">
	<meta name="author" content="Roody Audain">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<title>Change Inc | List</title>
	<link rel="stylesheet" href="style/nav.css">
	<link rel="stylesheet" href="style/design.css">
	
</head>

<body>
  
	<nav>
		<ul>
			<li><a href=".">Home</a></li>
			<li><a style="background-color: white; color: #D99F4D;" href="List">List Workers</a></li>
			<li><a href="Board">Worker Board</a></li>
		</ul>
	</nav>
	
	<script src="https://kit.fontawesome.com/6a7805bc60.js" crossorigin="anonymous"></script>
	<script src="javascript/nav.js"></script>

	<c:choose>
		<c:when test="${workerList == null or workerList.isEmpty()}">
                The List is empty.
              </c:when>
		<c:otherwise>
			<table id="big-table">
				<tr>
					<th>Room</th>
					<th>Name</th>
					<th>Profession</th>
					<th>Endurance</th>
					<th>Cost</th>
				</tr>
				<c:forEach var="worker" items="${workerList}">
					<tr>
						<td>${worker.room}</td>
						<td>${worker.name}</td>
						<td>${worker.profession}</td>
						<td>${worker.endurance}</td>
						<td>${worker.cost}</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>

</body>

</html>
