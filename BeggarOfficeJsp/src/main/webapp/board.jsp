<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<meta name="description"
	content="Worker tracker for the Virtual Beggar mobile clicker game">
<meta name="author" content="Roody Audain">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/png" href="images/favicon.png">
<title>Change Inc | Board</title>
<link rel="stylesheet" href="style/common.css">
<link rel="stylesheet" href="style/board.css">
</head>

<body>

	<section>
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="List">List Workers</a></li>
			<li><a style="background-color: white; color: #D99F4D;"
				href="Board">Worker Board</a></li>
		</ul>
	</section>

	<script src="javascript/top.js"></script>
	
	<img class="below-top" src="images/board/cork-board-top.jpg">
	<div id="cork-board">
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 1</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="101" style="background-image:url('images/101.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="102" style="background-image:url('images/102.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="103" style="background-image:url('images/103.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 2</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="201" style="background-image:url('images/201.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="202" style="background-image:url('images/202.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="203" style="background-image:url('images/203.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 3</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="301" style="background-image:url('images/301.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="302" style="background-image:url('images/302.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="303" style="background-image:url('images/303.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 4</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="401" style="background-image:url('images/401.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="402" style="background-image:url('images/402.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="403" style="background-image:url('images/403.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 5</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="501" style="background-image:url('images/501.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="502" style="background-image:url('images/502.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="503" style="background-image:url('images/503.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 6</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="601" style="background-image:url('images/601.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="602" style="background-image:url('images/602.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="603" style="background-image:url('images/603.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 7</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="701" style="background-image:url('images/701.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="702" style="background-image:url('images/702.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="703" style="background-image:url('images/703.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 8</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="801" style="background-image:url('images/801.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="802" style="background-image:url('images/802.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="803" style="background-image:url('images/803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 9</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="901" style="background-image:url('images/901.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="902" style="background-image:url('images/903.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="903" style="background-image:url('images/903.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 10</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1001" style="background-image:url('images/1001.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1002" style="background-image:url('images/1002.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1003" style="background-image:url('images/1003.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 11</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1101" style="background-image:url('images/1101.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1102" style="background-image:url('images/1102.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1103" style="background-image:url('images/1103.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 12</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1201" style="background-image:url('images/1201.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1202" style="background-image:url('images/1202.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1203" style="background-image:url('images/1203.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 13</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1301" style="background-image:url('images/1301.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1302" style="background-image:url('images/1302.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1303" style="background-image:url('images/1303.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 14</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1401" style="background-image:url('images/1401.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1402" style="background-image:url('images/1402.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1403" style="background-image:url('images/1403.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 15</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1501" style="background-image:url('images/1501.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1502" style="background-image:url('images/1502.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1503" style="background-image:url('images/1503.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 16</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1601" style="background-image:url('images/1601.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1602" style="background-image:url('images/1602.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1603" style="background-image:url('images/1603.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 17</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1701" style="background-image:url('images/1701.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1702" style="background-image:url('images/1702.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1703" style="background-image:url('images/1703.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 18</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1801" style="background-image:url('images/1801.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1802" style="background-image:url('images/1802.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1803" style="background-image:url('images/1803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 19</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1901" style="background-image:url('images/1901.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1902" style="background-image:url('images/1902.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="1903" style="background-image:url('images/1903.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 20</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2001" style="background-image:url('images/2001.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2002" style="background-image:url('images/2002.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2003" style="background-image:url('images/2003.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 21</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2101" style="background-image:url('images/2101.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2102" style="background-image:url('images/2102.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2103" style="background-image:url('images/2103.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 22</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2201" style="background-image:url('images/2201.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2202" style="background-image:url('images/2202.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="2203" style="background-image:url('images/2203.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 23</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 24</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 25</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 26</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 27</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" src=images/2701.jpg>
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 28</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 29</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 30</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 31</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 32</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 33</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 34</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 35</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 36</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 37</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3701" style="background-image:url('images/3701.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3703" style="background-image:url('images/3703.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 38</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input type="submit" name="id" value="3803" style="background-image:url('images/3803.jpg');">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
	</div>
	
	<script src="javascript/main.js"></script>
	
</body>

</html>
