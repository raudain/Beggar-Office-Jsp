<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	info="Sort Workers" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>

	<meta charset="ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="description" content="Worker sorter for the Virtual Beggar mobile clicker game">
	<meta name="author" content="Roody Audain">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<title>Change Inc | List</title>
	<link rel="stylesheet" href="style/nav.css">
	<link rel="stylesheet" href="style/list.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="style/design.css">

</head>

<body>

<nav class="w3-pale-blue w3-cell-row">
	<ul class ="w3-ul w3-large w3-bar">
		<li class="w3-bar-item w3-round-large w3-margin-right w3-margin-left w3-hover-white w3-mobile navigation"><a href=".">Tower</a></li>
		<li class="w3-bar-item w3-yellow w3-round-large w3-hover-white w3-margin-right w3-mobile navigation"><a href="List">List Workers</a></li>
		<li class="w3-bar-item w3-round-large w3-hover-white w3-margin-right w3-mobile navigation"><a href="Board">Worker Board</a></li>
	</ul>
</nav>

<script src="https://kit.fontawesome.com/6a7805bc60.js" crossorigin="anonymous"></script>
<script src="javascript/nav.js"></script>

<c:choose>

<c:when test="${workerList == null or workerList.isEmpty()}">
	No workers are hired yet.
</c:when>

<c:otherwise>

<table class="w3-table-all">
	<thead>
		<tr>
			<th class="w3-border">Room</th>
			<th class="w3-border">Name</th>
			<th class="w3-border">Profession</th>
			<th class="w3-border">Endurance</th>
			<th class="w3-border w3-center">Cost</th>
		</tr>
	</thead>
	<c:forEach var="worker" items="${workerList}">
		<tr class="w3-hover-pale-blue">
			<td class="w3-border">${worker.room}</td>
			<td class="w3-border">${worker.name}</td>
			<td class="w3-border">${worker.profession}</td>
			<td class="w3-border">${worker.endurance}</td>
			<td class="w3-border w3-right-align">
				${
					String.valueOf(worker.cost)
				}
			</td>
		</tr>
	</c:forEach>
</table>
	
</c:otherwise>
	
</c:choose>

</body>

</html>
