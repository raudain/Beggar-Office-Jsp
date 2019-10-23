<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="description" content="Worker tracker for the Virtual Beggar mobile clicker game">
	<meta name="author" content="Roody Audain">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Change Inc | List</title>
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<link rel="stylesheet" href="style/common.css">
	<link rel="stylesheet" href="style/list.css">
</head>

<body>
  
  <section class="wide navigation">
  		<div id="brand">
  		</div>
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a style="background-color: white; color: #D99F4D;" href="ListWorkers">List Workers</a></li>
			<li><a href="Board">Worker Board</a></li>
		</ul>
	</section>
	<c:choose>
		<c:when test="${workerList == null or workerList.isEmpty()}">
                The List is empty.
              </c:when>
		<c:otherwise>
			<table class="below-top" style="display: table;">
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
	<div id="app-switcher">
		<a href="http://localhost:8080/BeggarOfficeJsp">
			<figure>
				<img src="images/virtual-beggar.png">
				<figcaption>Change Inc</figcaption>
			</figure>
		</a>
		<a href="http://localhost:8080/Calendar">
			<figure>
				<div id="icon">
					<div id="dayOfWeek"></div>
					<div id="dayNumber"></div>
				</div>
				<figcaption>Calendar</figcaption>
			</figure>
		</a>
		<a href="http://localhost:8080/FestivalPortalR2_Participant">
			<figure>
				<img src="images/event-registration.png">
				<figcaption>Event Portal</figcaption>
			</figure>
		</a>
		<a href="http://localhost:8080/HomeProperty">
			<figure>
				<img src="images/home-property.png">
				<figcaption>Real Estate</figcaption>
			</figure>
		</a>
	</div>
	
	<script src="main.js"></script>

</body>
</html>
