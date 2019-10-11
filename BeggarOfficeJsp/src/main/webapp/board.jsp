<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
	<meta charset="UTF-8">
	<meta name="description" content="Worker tracker for the Virtual Beggar mobile clicker game">
	<meta name="author" content="Roody Audain">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="images/favicon.png">
	<title>Change Inc | Board</title>
	<link rel="stylesheet" href="style/common.css">
	<link rel="stylesheet" href="style/board.css">
</head>

<body>

	<section class="wide center-element menu">
		<a id="logo" class="links text" href="index.html">V.B Tower</a>
		<ul class="links">
			<li><a class="text top" href="index.html">Home</a></li>
			<li><a class="text top" href="newProduct.html">Add Book</a></li>
			<li><a class="text top" href="ListProducts">Book Collection</a></li>
			<li><a class="text top" href="ListWorkers">List Workers</a></li>
			<li><a class="text top" href="Board">Worker Board</a></li>
			<li><a class="text top" href="Home Property/index.html">Home
					Property</a></li>
		</ul>
	</section>
	<img id="clock" class="center-element below-top"
		src="images/board/clok.png" style="margin-bottom: 1.2%; width: 7.7vw;">
	<img class="wide center-element" src="images/board/cork-board-top.jpg">
	<div id="cork-board" class="wide"
		style="height: 648.5vh; margin-right: auto; margin-left: auto;">
		<div class="floor board-floor colum1 row1">
			<div class="text label floor-label">FLOOR 1</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor1/left-tammy.jpg">
				<div class="text label endurance-label">${workerList.get(0).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor1/middle-vernon.jpg">
				<div class="text label endurance-label">${workerList.get(1).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor1/right-jeff.jpg">
				<div class="text label endurance-label">${workerList.get(2).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row1">
			<div class="text label floor-label">FLOOR 2</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor2/left-jeremy.jpg">
				<div class="text label endurance-label">${workerList.get(3).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor2/middle-marvin.jpg">
				<div class="text label endurance-label">${workerList.get(4).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor2/right-christine.png">
				<div class="text label endurance-label">${workerList.get(5).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row2">
			<div class="text label floor-label">FLOOR 3</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor3/left-sherry.png">
				<div class="text label endurance-label">${workerList.get(6).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor3/middle-david.jpg">
				<div class="text label endurance-label">${workerList.get(7).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor3/right-jeanette.jpg">
				<div class="text label endurance-label">${workerList.get(8).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row2">
			<div class="text label floor-label">FLOOR 4</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor4/left-anne.jpg">
				<div class="text label endurance-label">${workerList.get(9).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor4/middle-mary.jpg">
				<div class="text label endurance-label">${workerList.get(10).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor4/right-leo.jpg">
				<div class="text label endurance-label">${workerList.get(11).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row3">
			<div class="text label floor-label">FLOOR 5</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor5/left-sharon.jpg">
				<div class="text label endurance-label">${workerList.get(12).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor5/middle-amanda.jpg">
				<div class="text label endurance-label">${workerList.get(13).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor5/right-sam.jpg">
				<div class="text label endurance-label">${workerList.get(14).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row3">
			<div class="text label floor-label">FLOOR 6</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor6/left-nathan.jpg">
				<div class="text label endurance-label">${workerList.get(15).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor6/middle-thomas.jpg">
				<div class="text label endurance-label">${workerList.get(16).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor6/right-marjorie.jpg">
				<div class="text label endurance-label">${workerList.get(17).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row4">
			<div class="text label floor-label">FLOOR 7</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor7/left-derrick.jpg">
				<div class="text label endurance-label">${workerList.get(18).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor7/middle-tammy.jpg">
				<div class="text label endurance-label">${workerList.get(19).getEndurance()}ess</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor7/right-regina.jpg">
				<div class="text label endurance-label">${workerList.get(20).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row4">
			<div class="text label floor-label">FLOOR 8</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor8/left-heather.jpg">
				<div class="text label endurance-label">${workerList.get(21).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor8/middle-willie.jpg">
				<div class="text label endurance-label">${workerList.get(22).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor8/right-philip.jpg">
				<div class="text label endurance-label">${workerList.get(23).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row5">
			<div class="text label floor-label">FLOOR 9</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor9/left-vivian.jpg">
				<div class="text label endurance-label">${workerList.get(24).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor9/middle-lewis.jpg">
				<div class="text label endurance-label">${workerList.get(25).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor9/right-katherine.png">
				<div class="text label endurance-label">${workerList.get(26).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row5">
			<div class="text label floor-label">FLOOR 10</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor10/left-larry.jpg">
				<div class="text label endurance-label">${workerList.get(27).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor10/middle-david.jpg">
				<div class="text label endurance-label">${workerList.get(28).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor10/right-dustin.jpg">
				<div class="text label endurance-label">${workerList.get(29).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row6">
			<div class="text label floor-label">FLOOR 11</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor11/left-anthony.jpg">
				<div class="text label endurance-label">${workerList.get(30).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor11/middle-paula.jpg">
				<div class="text label endurance-label">${workerList.get(31).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor11/right-amber.jpg">
				<div class="text label endurance-label">${workerList.get(32).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row6">
			<div class="text label floor-label">FLOOR 12</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor12/left-billy.jpg">
				<div class="text label endurance-label">${workerList.get(33).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor12/middle-danna.jpg">
				<div class="text label endurance-label">${workerList.get(34).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor12/right-billy.png">
				<div class="text label endurance-label">${workerList.get(35).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row7">
			<div class="text label floor-label">FLOOR 13</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor13/left-connie.jpg">
				<div class="text label endurance-label">${workerList.get(36).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor13/middle-darrel.jpg">
				<div class="text label endurance-label">${workerList.get(37).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor13/right-kathryn.jpg">
				<div class="text label endurance-label">${workerList.get(38).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row7">
			<div class="text label floor-label">FLOOR 14</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor14/left-bradley.jpg">
				<div class="text label endurance-label">${workerList.get(39).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor14/middle-danielle.jpg">
				<div class="text label endurance-label">${workerList.get(40).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor14/right-rose.jpg">
				<div class="text label endurance-label">${workerList.get(41).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row8">
			<div class="text label floor-label">FLOOR 15</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor15/left-martin.jpg">
				<div class="text label endurance-label">${workerList.get(44).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor15/middle-veronica.jpg">
				<div class="text label endurance-label">${workerList.get(43).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor15/right-james.jpg">
				<div class="text label endurance-label">${workerList.get(44).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row8">
			<div class="text label floor-label">FLOOR 16</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor16/left-jamie.jpg">
				<div class="text label endurance-label">${workerList.get(45).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor16/middle-earl.jpg">
				<div class="text label endurance-label">${workerList.get(46).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor16/right-nicholas.jpg">
				<div class="text label endurance-label">${workerList.get(47).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row9">
			<div class="text label floor-label">FLOOR 17</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor17/left-martin.jpg">
				<div class="text label endurance-label">${workerList.get(48).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor17/middle-tyler.jpg">
				<div class="text label endurance-label">${workerList.get(49).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor17/right-steve.jpg">
				<div class="text label endurance-label">${workerList.get(50).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row9">
			<div class="text label floor-label">FLOOR 18</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor18/left-emma.jpg">
				<div class="text label endurance-label">${workerList.get(51).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor18/middle-carlos.jpg">
				<div class="text label endurance-label">${workerList.get(52).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor18/right-fransisco.jpg">
				<div class="text label endurance-label">${workerList.get(53).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row10">
			<div class="text label floor-label">FLOOR 19</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor19/left-ryan.jpg">
				<div class="text label endurance-label">${workerList.get(54).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor19/middle-janice.jpg">
				<div class="text label endurance-label">${workerList.get(55).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor19/right-jeanette.jpg">
				<div class="text label endurance-label">${workerList.get(56).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row10">
			<div class="text label floor-label">FLOOR 20</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor20/left-gilbert.jpg">
				<div class="text label endurance-label">${workerList.get(57).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor20/middle-kristen.jpg">
				<div class="text label endurance-label">${workerList.get(58).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor20/right-zachary.jpg">
				<div class="text label endurance-label">${workerList.get(59).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row11">
			<div class="text label floor-label">FLOOR 21</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor21/left-mario.jpg">
				<div class="text label endurance-label">${workerList.get(60).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor21/middle-frank.jpg">
				<div class="text label endurance-label">${workerList.get(61).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor21/right-rick.jpg">
				<div class="text label endurance-label">${workerList.get(62).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row11">
			<div class="text label floor-label">FLOOR 22</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor22/left-mario.jpg">
				<div class="text label endurance-label">${workerList.get(63).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor22/middle-juan.jpg">
				<div class="text label endurance-label">${workerList.get(64).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor22/right-sam.jpg">
				<div class="text label endurance-label">${workerList.get(65).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row12">
			<div class="text label floor-label">FLOOR 23</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor23/left-willie.jpg">
				<div class="text label endurance-label">${workerList.get(66).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor23/middle-karen.jpg">
				<div class="text label endurance-label">${workerList.get(67).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor23/right-john.jpg">
				<div class="text label endurance-label">${workerList.get(68).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row12">
			<div class="text label floor-label">FLOOR 24</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor24/left-terry.jpg">
				<div class="text label endurance-label">${workerList.get(69).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor24/middle-wanda.jpg">
				<div class="text label endurance-label">${workerList.get(70).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor24/right-jeffery.jpg">
				<div class="text label endurance-label">${workerList.get(71).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row13">
			<div class="text label floor-label">FLOOR 25</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor25/left-justin.jpg">
				<div class="text label endurance-label">${workerList.get(72).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor25/middle-gene.jpg">
				<div class="text label endurance-label">${workerList.get(73).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor25/right-samantha.jpg">
				<div class="text label endurance-label">${workerList.get(74).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row13">
			<div class="text label floor-label">FLOOR 26</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor26/left-dana.jpg">
				<div class="text label endurance-label">${workerList.get(75).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor26/middle-ronnie.jpg">
				<div class="text label endurance-label">${workerList.get(76).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor26/right-jonathan.jpg">
				<div class="text label endurance-label">${workerList.get(77).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row14">
			<div class="text label floor-label">FLOOR 27</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor27/left-timothy.jpg">
				<div class="text label endurance-label">${workerList.get(78).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor27/middle-peter.jpg">
				<div class="text label endurance-label">${workerList.get(79).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor27/right-willie.jpg">
				<div class="text label endurance-label">${workerList.get(80).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row14">
			<div class="text label floor-label">FLOOR 28</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor28/left-nicholas.jpg">
				<div class="text label endurance-label">${workerList.get(81).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor28/middle-diane.jpg">
				<div class="text label endurance-label">${workerList.get(82).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor28/right-todd.jpg">
				<div class="text label endurance-label">${workerList.get(83).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row15">
			<div class="text label floor-label">FLOOR 29</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor29/left-frederick.jpg">
				<div class="text label endurance-label">${workerList.get(84).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor29/middle-victor.jpg">
				<div class="text label endurance-label">${workerList.get(85).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor29/right-wanda.jpg">
				<div class="text label endurance-label">${workerList.get(86).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row15">
			<div class="text label floor-label">FLOOR 30</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor30/left-jack.jpg">
				<div class="text label endurance-label">${workerList.get(87).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor30/middle-marilyn.jpg">
				<div class="text label endurance-label">${workerList.get(88).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor30/right-samuel.jpg">
				<div class="text label endurance-label">${workerList.get(89).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row16">
			<div class="text label floor-label">FLOOR 31</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor31/left-amy.jpg">
				<div class="text label endurance-label">${workerList.get(90).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor31/middle-keith.jpg">
				<div class="text label endurance-label">${workerList.get(91).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor31/right-chad.jpg">
				<div class="text label endurance-label">${workerList.get(92).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row16">
			<div class="text label floor-label">FLOOR 32</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor32/left-melvin.jpg">
				<div class="text label endurance-label">${workerList.get(93).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor32/middle-howard.jpg">
				<div class="text label endurance-label">${workerList.get(94).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor32/right-darlene.jpg">
				<div class="text label endurance-label">${workerList.get(95).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row17">
			<div class="text label floor-label">FLOOR 33</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor33/left-ronnie.jpg">
				<div class="text label endurance-label">${workerList.get(96).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor33/middle-jeffrey.jpg">
				<div class="text label endurance-label">${workerList.get(97).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor33/right-amanda.jpg">
				<div class="text label endurance-label">${workerList.get(98).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row17">
			<div class="text label floor-label">FLOOR 34</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor34/left-april.jpg">
				<div class="text label endurance-label">${workerList.get(99).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor34/middle-bradley.jpg">
				<div class="text label endurance-label">${workerList.get(100).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor34/right-leonard.jpg">
				<div class="text label endurance-label">${workerList.get(101).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row18">
			<div class="text label floor-label">FLOOR 35</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor35/left-lloyd.jpg">
				<div class="text label endurance-label">${workerList.get(102).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor35/middle-carol.jpg">
				<div class="text label endurance-label">${workerList.get(103).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor35/right-marcus.jpg">
				<div class="text label endurance-label">${workerList.get(104).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row18">
			<div class="text label floor-label">FLOOR 36</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor36/left-emily.jpg">
				<div class="text label endurance-label">${workerList.get(105).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor36/middle-scott.jpg">
				<div class="text label endurance-label">${workerList.get(106).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor36/right-chris.jpg">
				<div class="text label endurance-label">${workerList.get(107).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum1 row19">
			<div class="text label floor-label">FLOOR 37</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor37/left-jon.png">
				<div class="text label endurance-label">${workerList.get(108).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor37/middle-maria.jpg">
				<div class="text label endurance-label">${workerList.get(109).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor37/right-ryan.png">
				<div class="text label endurance-label">${workerList.get(110).getEndurance()}</div>
			</figure>
		</div>
		<div class="floor board-floor colum2 row19">
			<div class="text label floor-label">FLOOR 38</div>
			<figure class="cubicle left-worker">
				<img src="images/board/floor38/left-dan.jpg">
				<div class="text label endurance-label">${workerList.get(111).getEndurance()}</div>
			</figure>
			<figure class="cubicle middle-worker">
				<img src="images/board/floor38/middle-jorge.jpg">
				<div class="text label endurance-label">${workerList.get(112).getEndurance()}</div>
			</figure>
			<figure class="cubicle right-worker">
				<img src="images/board/floor38/right-jeanette.jpg">
				<div class="text label endurance-label">${workerList.get(113).getEndurance()}</div>
			</figure>
		</div>
	</div>
	<img class="wide center-element"
		src="images/board/cork-board-bottom.jpg">

</body>

</html>
