<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    info="New Worker Room" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>

	<meta charset="ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="description" content="Room creator for the Virtual Beggar mobile clicker game">
	<meta name="author" content="Roody Audain">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<title>Change Inc | Create Room</title>
	<link rel="stylesheet" href="style/nav.css">
	<link rel="stylesheet" href="style/design.css">

</head>

<body>

	<nav>
		<ul>
			<li><a style="background-color: white; color: #D99F4D;" href="index.html">Home</a></li>
			<li><a href="List">List Workers</a></li>
			<li><a href="Board">Worker Board</a></li>
		</ul>
	</nav>
	
	<script src="https://kit.fontawesome.com/6a7805bc60.js" crossorigin="anonymous"></script>
	
	<script src="javascript/nav.js"></script>
	
	<div id="worker-overlay">
		<form action="Onboarding" method="post">
			<table>
				<tr>
					<th>Room</th>
					<td><input type="text" name="room"
					     value="${room}"></td>
				</tr>
				<tr>
					<th>Name</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>Profession</th>
					<td><input type="text" name="profession"></td>
				</tr>
				<tr>
					<th>Endurance</th>
					<td><input type="text" name="endurance"></td>
				</tr>
			</table>
				<input id="save" type="submit" value="Hire">
			</form>
	</div>
</body>

</html>