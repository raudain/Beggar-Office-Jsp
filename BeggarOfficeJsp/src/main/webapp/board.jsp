<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	info="Edit Worker JSP" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="description" content="Worker Editer for the Virtual Beggar mobile clicker game">
	<meta name="author" content="Roody Audain">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<title>Change Inc | Board</title>
	<link rel="stylesheet" href="style/nav.css">
	<link rel="stylesheet" href="style/board.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body>

<div class="w3-top">
	<nav class="w3-bar w3-pale-blue">
		<ul>
			<li class="w3-bar-item w3-button w3-mobile w3-yellow w3-hover-white">
				<a href=".">Home</a>
			</li>
			<li class="w3-bar-item w3-button w3-mobile w3-hover-white">
				<a href="ListRoom">List Workers</a>
			</li>
			<li class="w3-bar-item w3-button w3-mobile w3-hover-white">
				<a href="Board">Worker Board</a>
			</li>
		</ul>
	</nav>
</div>

<script src="https://kit.fontawesome.com/6a7805bc60.js" crossorigin="anonymous"></script>	
<script src="javascript/nav.js"></script>

<img class="below-top" src="images/board/cork-board-top.jpg">
<div id="cork-board">
	<form action="overlay.htm">
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 1</div>
				<figure class="left-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="middle-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="right-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 2</div>
				<figure class="left-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="middle-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="right-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 3</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 4</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 5</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 6</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 7</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 8</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 9</div>
				<figure class="left-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="middle-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="right-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 10</div>
				<figure class="left-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 11</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 12</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 13</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 14</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 15</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 16</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 17</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 18</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 19</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 20</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 21</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 22</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 23</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 24</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 25</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 26</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
					<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 27</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 28</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 29</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 30</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 31</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 32</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 33</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 34</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 35</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
		<div class="board-column2">
			<div class="floor-label">FLOOR 36</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
	</div>
	<div class="row">
		<div class="board-column1">
			<div class="floor-label">FLOOR 37</div>
			<figure class="left-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="middle-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
			<figure class="right-worker">
				<c:choose>
					<c:when test = "${nameIterator.hasNext()}">
						<figcaption>${nameIterator.next()}</figcaption>
					</c:when>
					<c:otherwise>
						<figcaption>No Name</figcaption>
					</c:otherwise>
				</c:choose>
			</figure>
		</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 38</div>
				<figure class="left-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="middle-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
				<figure class="right-worker">
					<c:choose>
						<c:when test = "${nameIterator.hasNext()}">
							<figcaption>${nameIterator.next()}</figcaption>
						</c:when>
						<c:otherwise>
							<figcaption>No Name</figcaption>
						</c:otherwise>
					</c:choose>
				</figure>
			</div>
		</div>
	</form>
</div>

	<script src="javascript/board.js"></script>

</body>

</html>
