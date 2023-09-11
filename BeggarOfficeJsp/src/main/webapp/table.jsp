<%@ page language = "java" contentType = "text/html; charset=ISO-8859-1"
	info = "Sort Workers" isELIgnored = "false" pageEncoding = "ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html lang = "en" dir = "ltr">

<head>

	<meta charset = "ISO-8859-1">
	<meta http-equiv="Content-Type" content = "text/html; charset=ISO-8859-1">
	<meta name = "description" content = "Worker table for the Virtual Beggar mobile clicker game">
	<meta name = "author" content = "Roody Audain">
	<meta name = "viewport" content = "width=device-width, initial-scale=1.0">
	<link rel = "shortcut icon" type = "image/png" href = "images/favicon.png">
	<title>Table</title>
	<link rel = "stylesheet" href = "style/nav.css">
	<link rel = "stylesheet" href = "style/list.css">
	<link rel = "stylesheet" href = "https://www.w3schools.com/w3css/4/w3.css">

</head>

<body>

<script src = "https://kit.fontawesome.com/6a7805bc60.js" crossorigin = "anonymous">
</script>

<nav class = "w3-pale-blue">

<ul class  = "w3-ul w3-large w3-bar">
	
	<li class = "w3-hover-red w3-round-large w3-bar-item w3-margin-right w3-margin-left w3-mobile navigation">
		<a href = ".">Tutorial</a>
	</li>
	<li class = "w3-yellow w3-hover-red w3-round-large w3-bar-item  w3-margin-right w3-mobile navigation">
		<a href = "Table?page=1">Workers Table</a>
	</li>
	
</ul>
	
</nav>




<c:choose>

<c:when test = "${workerList == null or workerList.isEmpty()}">
	No workers are hired yet.
</c:when>

<c:otherwise>

<div class = "w3-container w3-display-container w3-margin-top">

	<table class = "w3-table-all">
		<thead>
			<tr class = "w3-light-grey">
				<th class = "w3-border">
					Room
					<i id = "room" class = "fa-solid fa-arrow-down-9-1"></i>
				</th>
				
				<th class = "w3-border">Name</th>
				<th class = "w3-border">Profession</th>
				<th class = "w3-border">Endurance</th>
				<th class = "w3-border">Cost<i id = "cost" class = "fa-solid fa-arrow-up-1-9"></i>
				</th>
			</tr>
		</thead>
		<c:forEach var = "worker" items = "${workerList}">
			<tr class = "w3-hover-red">
				<td class = "w3-border">${worker.room}</td>
				<td class = "w3-border">${worker.name}</td>
				<td class = "w3-border">${worker.profession}</td>
				<td class = "w3-border">${worker.endurance}</td>
				<td class = "w3-border">
					<fmt:formatNumber type = "number" groupingUsed = "true" value = "${worker.cost}" />
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class = "w3-bar w3-margin-top w3-display-bottommiddle w3-center">
		<script src = "javascript/nav.js"></script>
		  <a href = "Table?page=1"
		  	 class = "w3-button w3-hover-red w3-mobile">&laquo;
		  </a>
		  <a id = "arrowPrevious"
		  	 class = "w3-button w3-hover-red w3-mobile">&#60;
		  </a>
		  <a id = page1
		  	 href = "Table?page=1"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 1
		  </a>
		  <a id = page2
		  	 href = "Table?page=2"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 2
		  </a>
		  <a id = page3
		  	 href = "Table?page=3"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 3
		  </a>
		  <a id = page4
		  	 href = "Table?page=4"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 4
		  </a>
		  <a id = page5
		  	 href = "List?page=5"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 5
		  </a>
		  <a id = page6
		  	 href = "Table?page=6"
		  	 class = "w3-button w3-hover-red w3-mobile">
			 6
		  </a>
		  <a id = page7
		  	 href = "Table?page=7"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 7
		  </a>
		  <a id = "arrowNext"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 &#62;
		  </a>
		  <script src = "javascript/list.js"></script>
		  <a href = "Table?page=7"
		  	 class = "w3-button w3-hover-red w3-mobile">
		  	 &raquo;
		  </a>
	</div>

</div>
</c:otherwise>
	
</c:choose>

</body>

</html>
