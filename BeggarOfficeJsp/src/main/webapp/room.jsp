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
	<link rel="stylesheet" href="style/room.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body>
<!--  
<div class="w3-container w3-top"> -->
	<nav class="w3-pale-blue w3-top">
		<ul class ="w3-bar">
			<li class="w3-bar-item w3-round-large w3-margin-right w3-margin-left w3-yellow w3-hover-white w3-mobile"><a href=".">Tower</a></li>
			<li class="w3-bar-item w3-hover-white w3-round-large w3-margin-right w3-mobile"><a href="List">List Workers</a></li>
			<li id="board" class="w3-bar-item w3-hover-white w3-round-large w3-margin-right w3-mobile"><a href="Board">Worker Board</a></li>
		</ul>
	</nav>
<!-- </div> -->

<script src="https://kit.fontawesome.com/6a7805bc60.js" crossorigin="anonymous"></script>	
<script src="javascript/nav.js"></script>

<form id="worker-overlay" class="w3-container w3-card-4 w3-light-grey">
  <h2>Bordered Input</h2>
  <p>Add the w3-border class to create bordered inputs.</p>

  <p><label>First Name</label>
  <input class="w3-input w3-border" name="first" type="text"></p>

  <p><label>Last Name</label>
  <input class="w3-input w3-border" name="last" type="text"></p>
</form>
<!--
<div id="worker-overlay" class="w3-display-topmiddle">
	<form action="Onboarding" method="post" autocomplete="on">
		<table class="w3-table">
			<tr>
				<th class="w3-right-align">Room</th>
				<td><input type="text" name="room"
				     value="${room}"></td>
			</tr>
			<tr>
				<th class="w3-right-align">Name</th>
				<td><input type="text" name="name" autocomplete="on"></td>
			</tr>
			<tr>
				<th class="w3-right-align">Profession</th>
				<td><input type="text" name="profession"></td>
			</tr>
			<tr>
				<th class="w3-right-align">Endurance</th>
				<td><input type="text" name="endurance"></td>
			</tr>
		</table>
			<input id="save" type="submit" value="Hire">
	</form>
</div>
-->	
</html>