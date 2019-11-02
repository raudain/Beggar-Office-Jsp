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

	<script src="top.js"></script>
	<img class="below-top" src="images/board/cork-board-top.jpg">
	<div id="cork-board">
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 1</div>
				<figure class="left-worker">
					<img src="images/board/floor1/left-tammy.jpg">
					<figcaption>${nameList.get(0)}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor1/middle-vernon.jpg">
					<figcaption>${nameList.get(1)}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor1/right-jeff.jpg">
					<figcaption>${workerList.get(2).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 2</div>
				<figure class="left-worker">
					<img src="images/board/floor2/left-jeremy.jpg">
					<figcaption>${workerList.get(3).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor2/middle-marvin.jpg">
					<figcaption>${workerList.get(4).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor2/right-christine.png">
					<figcaption>${workerList.get(5).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 3</div>
				<figure class="left-worker">
					<img src="images/board/floor3/left-sherry.png">
					<figcaption>${workerList.get(6).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor3/middle-david.jpg">
					<figcaption>${workerList.get(7).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor3/right-jeanette.jpg">
					<figcaption>${workerList.get(8).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 4</div>
				<figure class="left-worker">
					<img src="images/board/floor4/left-anne.jpg">
					<figcaption>${workerList.get(9).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor4/middle-mary.jpg">
					<figcaption>${workerList.get(10).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor4/right-leo.jpg">
					<figcaption>${workerList.get(11).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 5</div>
				<figure class="left-worker">
					<img src="images/board/floor5/left-sharon.jpg">
					<figcaption>${workerList.get(12).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor5/middle-amanda.jpg">
					<figcaption>${workerList.get(13).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor5/right-sam.jpg">
					<figcaption>${workerList.get(14).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 6</div>
				<figure class="left-worker">
					<img src="images/board/floor6/left-nathan.jpg">
					<figcaption>${workerList.get(15).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor6/middle-thomas.jpg">
					<figcaption>${workerList.get(16).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor6/right-marjorie.jpg">
					<figcaption>${workerList.get(17).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 7</div>
				<figure class="left-worker">
					<img src="images/board/floor7/left-derrick.jpg">
					<figcaption>${workerList.get(18).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor7/middle-tammy.jpg">
					<figcaption>${workerList.get(19).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor7/right-regina.jpg">
					<figcaption>${workerList.get(20).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 8</div>
				<figure class="left-worker">
					<img src="images/board/floor8/left-heather.jpg">
					<figcaption>${workerList.get(21).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor8/middle-willie.jpg">
					<figcaption>${workerList.get(22).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor8/right-philip.jpg">
					<figcaption>${workerList.get(23).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 9</div>
				<figure class="left-worker">
					<img src="images/board/floor9/left-vivian.jpg">
					<figcaption>${workerList.get(24).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor9/middle-lewis.jpg">
					<figcaption>${workerList.get(25).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor9/right-katherine.png">
					<figcaption>${workerList.get(26).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 10</div>
				<figure class="left-worker">
					<img src="images/board/floor10/left-larry.jpg">
					<figcaption>${workerList.get(27).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor10/middle-david.jpg">
					<figcaption>${workerList.get(28).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor10/right-dustin.jpg">
					<figcaption>${workerList.get(29).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 11</div>
				<figure class="left-worker">
					<img src="images/board/floor11/left-anthony.jpg">
					<figcaption>${workerList.get(30).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor11/middle-paula.jpg">
					<figcaption>${workerList.get(31).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor11/right-amber.jpg">
					<figcaption>${workerList.get(32).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 12</div>
				<figure class="left-worker">
					<img src="images/board/floor12/left-billy.jpg">
					<figcaption>${workerList.get(33).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor12/middle-danna.jpg">
					<figcaption>${workerList.get(34).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor12/right-billy.png">
					<figcaption>${workerList.get(35).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 13</div>
				<figure class="left-worker">
					<img src="images/board/floor13/left-connie.jpg">
					<figcaption>${workerList.get(36).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor13/middle-darrel.jpg">
					<figcaption>${workerList.get(37).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor13/right-kathryn.jpg">
					<figcaption>${workerList.get(38).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 14</div>
				<figure class="left-worker">
					<img src="images/board/floor14/left-bradley.jpg">
					<figcaption>${workerList.get(39).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor14/middle-danielle.jpg">
					<figcaption>${workerList.get(40).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor14/right-rose.jpg">
					<figcaption>${workerList.get(41).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 15</div>
				<figure class="left-worker">
					<img src="images/board/floor15/left-martin.jpg">
					<figcaption>${workerList.get(44).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor15/middle-veronica.jpg">
					<figcaption>${workerList.get(43).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor15/right-james.jpg">
					<figcaption>${workerList.get(44).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 16</div>
				<figure class="left-worker">
					<img src="images/board/floor16/left-jamie.jpg">
					<figcaption>${workerList.get(45).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor16/middle-earl.jpg">
					<figcaption>${workerList.get(46).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor16/right-nicholas.jpg">
					<figcaption>${workerList.get(47).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 17</div>
				<figure class="left-worker">
					<img src="images/board/floor17/left-martin.jpg">
					<figcaption>${workerList.get(48).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor17/middle-tyler.jpg">
					<figcaption>${workerList.get(49).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor17/right-steve.jpg">
					<figcaption>${workerList.get(50).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 18</div>
				<figure class="left-worker">
					<img src="images/board/floor18/left-emma.jpg">
					<figcaption>${workerList.get(51).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor18/middle-carlos.jpg">
					<figcaption>${workerList.get(52).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor18/right-fransisco.jpg">
					<figcaption>${workerList.get(53).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 19</div>
				<figure class="left-worker">
					<img src="images/board/floor19/left-ryan.jpg">
					<figcaption>${workerList.get(54).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor19/middle-janice.jpg">
					<figcaption>${workerList.get(55).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor19/right-jeanette.jpg">
					<figcaption>${workerList.get(56).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 20</div>
				<figure class="left-worker">
					<img src="images/board/floor20/left-gilbert.jpg">
					<figcaption>${workerList.get(57).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor20/middle-kristen.jpg">
					<figcaption>${workerList.get(58).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor20/right-zachary.jpg">
					<figcaption>${workerList.get(59).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 21</div>
				<figure class="left-worker">
					<img src="images/board/floor21/left-mario.jpg">
					<figcaption>${workerList.get(60).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor21/middle-frank.jpg">
					<figcaption>${workerList.get(61).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor21/right-rick.jpg">
					<figcaption>${workerList.get(62).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 22</div>
				<figure class="left-worker">
					<img src="images/board/floor22/left-mario.jpg">
					<figcaption>${workerList.get(63).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor22/middle-juan.jpg">
					<figcaption>${workerList.get(64).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor22/right-sam.jpg">
					<figcaption>${workerList.get(65).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 23</div>
				<figure class="left-worker">
					<img src="images/board/floor23/left-willie.jpg">
					<figcaption>${workerList.get(66).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor23/middle-karen.jpg">
					<figcaption>${workerList.get(67).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor23/right-john.jpg">
					<figcaption>${workerList.get(68).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 24</div>
				<figure class="left-worker">
					<img src="images/board/floor24/left-terry.jpg">
					<figcaption>${workerList.get(69).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor24/middle-wanda.jpg">
					<figcaption>${workerList.get(70).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor24/right-jeffery.jpg">
					<figcaption>${workerList.get(71).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 25</div>
				<figure class="left-worker">
					<img src="images/board/floor25/left-justin.jpg">
					<figcaption>${workerList.get(72).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor25/middle-gene.jpg">
					<figcaption>${workerList.get(73).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor25/right-samantha.jpg">
					<figcaption>${workerList.get(74).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 26</div>
				<figure class="left-worker">
					<img src="images/board/floor26/left-dana.jpg">
					<figcaption>${workerList.get(75).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor26/middle-ronnie.jpg">
					<figcaption>${workerList.get(76).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor26/right-jonathan.jpg">
					<figcaption>${workerList.get(77).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 27</div>
				<figure class="left-worker">
					<img src="images/board/floor27/left-timothy.jpg">
					<figcaption>${workerList.get(78).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor27/middle-peter.jpg">
					<figcaption>${workerList.get(79).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor27/right-willie.jpg">
					<figcaption>${workerList.get(80).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 28</div>
				<figure class="left-worker">
					<img src="images/board/floor28/left-nicholas.jpg">
					<figcaption>${workerList.get(81).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor28/middle-diane.jpg">
					<figcaption>${workerList.get(82).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor28/right-todd.jpg">
					<figcaption>${workerList.get(83).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 29</div>
				<figure class="left-worker">
					<img src="images/board/floor29/left-frederick.jpg">
					<figcaption>${workerList.get(84).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor29/middle-victor.jpg">
					<figcaption>${workerList.get(85).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor29/right-wanda.jpg">
					<figcaption>${workerList.get(86).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 30</div>
				<figure class="left-worker">
					<img src="images/board/floor30/left-jack.jpg">
					<figcaption>${workerList.get(87).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor30/middle-marilyn.jpg">
					<figcaption>${workerList.get(88).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor30/right-samuel.jpg">
					<figcaption>${workerList.get(89).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 31</div>
				<figure class="left-worker">
					<img src="images/board/floor31/left-amy.jpg">
					<figcaption>${workerList.get(90).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor31/middle-keith.jpg">
					<figcaption>${workerList.get(91).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor31/right-chad.jpg">
					<figcaption>${workerList.get(92).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 32</div>
				<figure class="left-worker">
					<img src="images/board/floor32/left-melvin.jpg">
					<figcaption>${workerList.get(93).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor32/middle-howard.jpg">
					<figcaption>${workerList.get(94).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor32/right-darlene.jpg">
					<figcaption>${workerList.get(95).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 33</div>
				<figure class="left-worker">
					<img src="images/board/floor33/left-ronnie.jpg">
					<figcaption>${workerList.get(96).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor33/middle-jeffrey.jpg">
					<figcaption>${workerList.get(97).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor33/right-amanda.jpg">
					<figcaption>${workerList.get(98).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 34</div>
				<figure class="left-worker">
					<img src="images/board/floor34/left-april.jpg">
					<figcaption>${workerList.get(99).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor34/middle-bradley.jpg">
					<figcaption>${workerList.get(100).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor34/right-leonard.jpg">
					<figcaption>${workerList.get(101).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 35</div>
				<figure class="left-worker">
					<img src="images/board/floor35/left-lloyd.jpg">
					<figcaption>${workerList.get(102).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor35/middle-carol.jpg">
					<figcaption>${workerList.get(103).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor35/right-marcus.jpg">
					<figcaption>${workerList.get(104).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 36</div>
				<figure class="left-worker">
					<img src="images/board/floor36/left-emily.jpg">
					<figcaption>${workerList.get(105).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor36/middle-scott.jpg">
					<figcaption>${workerList.get(106).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor36/right-chris.jpg">
					<figcaption>${workerList.get(107).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 37</div>
				<figure class="left-worker">
					<img src="images/board/floor37/left-jon.png">
					<figcaption>${workerList.get(108).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor37/middle-maria.jpg">
					<figcaption>${workerList.get(109).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor37/right-ryan.png">
					<figcaption>${workerList.get(110).getEndurance()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 38</div>
				<figure class="left-worker">
					<img src="images/board/floor38/left-dan.jpg">
					<figcaption>${workerList.get(111).getEndurance()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor38/middle-jorge.jpg">
					<figcaption>${workerList.get(112).getEndurance()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor38/right-jeanette.jpg">
					<figcaption>${workerList.get(113).getEndurance()}</figcaption>
				</figure>
			</div>
		</div>
	</div>
	<img class="below-top" src="images/board/cork-board-bottom.jpg">
	
	<div id="worker-overlay">
		<figure id="profile">
			<img src="images/board/floor1/left-tammy.jpg">
			<div>
				<figcaption>Tireless</figcaption>
			</div>
		</figure>
	</div>
	
	<script src="main.js"></script>

</body>

</html>
