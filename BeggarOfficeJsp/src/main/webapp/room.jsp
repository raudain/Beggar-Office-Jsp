<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    info="New Worker Room" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">

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
	<link rel="stylesheet" href="style/design.css">

</head>

<body>

<nav class="w3-pale-blue w3-cell-row">
	<ul class ="w3-ul w3-large w3-bar">
		<li class="w3-bar-item w3-round-large w3-hover-white w3-margin-right w3-margin-left w3-mobile navigation"><a href=".">Tower</a></li>
		<li class="w3-bar-item w3-round-large w3-hover-white w3-margin-right w3-mobile navigation"><a href="List">List Workers</a></li>
		<li class="w3-bar-item w3-round-large w3-hover-white w3-margin-right w3-mobile navigation"><a href="Board">Worker Board</a></li>
	</ul>
</nav>

<script src="https://kit.fontawesome.com/6a7805bc60.js" crossorigin="anonymous"></script>	
<script src="javascript/nav.js"></script>

<form>

	<div class="w3-container w3-khaki">
		<h2>Worker</h2>
	</div>

	<p class="w3-margin-left">
		<label>Room</label>
		<input name="room" type="text" value="${room}" class="field w3-input w3-border w3-hover-light-grey" readonly>
	</p>
	<p class="w3-margin-left">
		<label>Name</label>
		<input name="name" type="text" minlength="2" maxlength="255" autocomplete="on" class="field w3-input w3-border w3-hover-light-grey" required>
	</p>
	<div class="w3-display-container w3-margin-left">
		<div>
			<p class="w3-display-container">
				<label>Profession</label>
				<select class="field w3-select w3-border w3-display-bottomleft w3-hover-light-grey"" name="profession" required>
					<option value=""></option>
			    	<option value="11">Construction Worker</option>
			    	<option value="12">Postman</option>
			    	<option value="21">Artist</option>
			    	<option value="22">Cook</option>
			    	<option value="23">Magician</option>
			    	<option value="24">Firefighter</option>
			    	<option value="31">Scientist</option>
			    	<option value="32">Journalist</option>
			    	<option value="41">Doctor</option>
			    	<option value="42">Computer Engineer</option>
			    	<option value="43">Santa</option>
			    	<option value="44">Lawyer</option>
			    	<option value="51">Politician</option>
			    	<option value="52">Pilot</option>
			    	<option value="61">Mad Scientist</option>
			    	<option value="71">Businessman</option>
				</select>
			</p>
			<p class="w3-display-container">
				<label>Endurance</label>
				<select class="field w3-select w3-border w3-display-bottomleft w3-hover-light-grey"" name="endurance" required>
					<option value=""></option>
			    	<option value="1">Lazy</option>
			    	<option value="2">Sleepy</option>
			    	<option value="3">Diligent</option>
			    	<option value="4">Productive</option>
			    	<option value="5">Hard-working</option>
			    	<option value="6">Tireless</option>
				</select>
			</p>
		</div>
		<input id="save" class="w3-button w3-light-green w3-jumbo w3-round-large w3-border w3-border-lime w3-hover-green w3-ripple w3-display-bottomright" type="submit" value="Hire">
  	</div>
</form>

</html>