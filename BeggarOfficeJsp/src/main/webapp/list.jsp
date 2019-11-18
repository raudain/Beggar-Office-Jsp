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
	
	<style>
		th {
			border-bottom-style: solid;
		}
	</style>
</head>

<body style="margin: 13px 0px 10px 0px; background-color: #ffffff; font-family: Arial, Helvetica, sans-serif; color: #660000;">
  
  <div id="aa-preloader-area">
  		<div class="pulse"></div>
  </div>
  
  <section>
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a style="background-color: white; color: #D99F4D;" href="List">List Workers</a></li>
			<li><a href="Board">Worker Board</a></li>
		</ul>
	</section>
	
	<script src="javascript/top.js"></script>

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
	
	<script>
		window.addEventListener("load", function () {
			const loader = document.querySelector("#aa-preloader-area");
			loader.style.display = "none";
		})
	</script>
</body>
</html>
