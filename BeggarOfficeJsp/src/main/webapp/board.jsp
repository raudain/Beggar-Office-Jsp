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
						<input name="worker" type="image" src="images/101.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/102.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/103.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 2</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/201.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/202.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/203.png">
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
						<input name="worker" type="image" src="images/301.png">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/302.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/303.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 4</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/401.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/402.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/403.jpg">
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
						<input name="worker" type="image" src="images/501.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/502.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/503.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 6</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/601.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/602.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/603.jpg">
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
						<input name="worker" type="image" src="images/701.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/702.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/703.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 8</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/801.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/802.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/803.jpg">
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
						<input name="worker" type="image" src="images/901.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/902.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/903.png">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 10</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1001.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1002.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1003.jpg">
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
						<input name="worker" type="image" src="images/1101.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1102.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1103.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 12</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1201.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1202.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1203.png">
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
						<input name="worker" type="image" src="images/1301.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1302.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1303.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 14</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1401.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1402.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1401.jpg">
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
						<input name="worker" type="image" src="images/1501.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1502.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1503.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 16</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1601.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1602.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1603.jpg">
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
						<input name="worker" type="image" src="images/1701.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1702.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1703.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 18</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1801.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1802.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1803.jpg">
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
						<input name="worker" type="image" src="images/1901.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1902.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/1903.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 20</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2001.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2002.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2003.jpg">
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
						<input name="worker" type="image" src="images/2101.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2102.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2103.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 22</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2201.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2202.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2203.jpg">
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
						<input name="worker" type="image" src="images/2301.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2302.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2303.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 24</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2401.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2402.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2403.jpg">
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
						<input name="worker" type="image" src="images/2501.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2502.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2503.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 26</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2601.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2602.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2603.jpg">
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
						<input name="worker" type="image" src=images/2701.jpg>
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2702.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2703.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 28</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2801.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2802.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2803.jpg">
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
						<input name="worker" type="image" src="images/2901.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2902.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/2903.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 30</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3001.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3002.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3003.jpg">
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
						<input name="worker" type="image" src="images/3101.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3102.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3103.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 32</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3201.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3202.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3203.jpg">
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
						<input name="worker" type="image" src="images/3301.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3302.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3303.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 34</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3401.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3402.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3403.jpg">
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
						<input name="worker" type="image" src="images/3501.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3502.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3503.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 36</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3601.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3602.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3603.jpg">
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
						<input name="worker" type="image" src="images/3701.png">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3702.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3703.png">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 38</div>
				<figure class="left-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3801.jpg">
					</form>
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<form action="Overlay">
						<input name="worker" type="image" src="images/3802.jpg">
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
