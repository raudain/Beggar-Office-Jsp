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
				<a href="Overlay">
					<figure class="left-worker">
						<img src="images/board/floor1/left-tammy.jpg">
						<figcaption>${nameIterator.next()}</figcaption>
					</figure>
				</a>
				<figure class="middle-worker">
					<img src="images/board/floor1/middle-vernon.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor1/right-jeff.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 2</div>
				<figure class="left-worker">
					<img src="images/board/floor2/left-jeremy.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor2/middle-marvin.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor2/right-christine.png">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 3</div>
				<figure class="left-worker">
					<img src="images/board/floor3/left-sherry.png">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor3/middle-david.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor3/right-jeanette.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 4</div>
				<figure class="left-worker">
					<img src="images/board/floor4/left-anne.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor4/middle-mary.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor4/right-leo.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 5</div>
				<figure class="left-worker">
					<img src="images/board/floor5/left-sharon.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor5/middle-amanda.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor5/right-sam.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 6</div>
				<figure class="left-worker">
					<img src="images/board/floor6/left-nathan.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor6/middle-thomas.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor6/right-marjorie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 7</div>
				<figure class="left-worker">
					<img src="images/board/floor7/left-derrick.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor7/middle-tammy.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor7/right-regina.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 8</div>
				<figure class="left-worker">
					<img src="images/board/floor8/left-heather.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor8/middle-willie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor8/right-philip.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 9</div>
				<figure class="left-worker">
					<img src="images/board/floor9/left-vivian.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor9/middle-lewis.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor9/right-katherine.png">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 10</div>
				<figure class="left-worker">
					<img src="images/board/floor10/left-larry.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor10/middle-david.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor10/right-dustin.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 11</div>
				<figure class="left-worker">
					<img src="images/board/floor11/left-anthony.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor11/middle-paula.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor11/right-amber.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 12</div>
				<figure class="left-worker">
					<img src="images/board/floor12/left-billy.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor12/middle-danna.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor12/right-billy.png">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 13</div>
				<figure class="left-worker">
					<img src="images/board/floor13/left-connie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor13/middle-darrel.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor13/right-kathryn.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 14</div>
				<figure class="left-worker">
					<img src="images/board/floor14/left-bradley.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor14/middle-danielle.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor14/right-rose.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 15</div>
				<figure class="left-worker">
					<img src="images/board/floor15/left-martin.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor15/middle-veronica.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor15/right-james.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 16</div>
				<figure class="left-worker">
					<img src="images/board/floor16/left-jamie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor16/middle-earl.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor16/right-nicholas.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 17</div>
				<figure class="left-worker">
					<img src="images/board/floor17/left-martin.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor17/middle-tyler.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor17/right-steve.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 18</div>
				<figure class="left-worker">
					<img src="images/board/floor18/left-emma.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor18/middle-carlos.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor18/right-fransisco.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 19</div>
				<figure class="left-worker">
					<img src="images/board/floor19/left-ryan.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor19/middle-janice.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor19/right-jeanette.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 20</div>
				<figure class="left-worker">
					<img src="images/board/floor20/left-gilbert.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor20/middle-kristen.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor20/right-zachary.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 21</div>
				<figure class="left-worker">
					<img src="images/board/floor21/left-mario.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor21/middle-frank.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor21/right-rick.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 22</div>
				<figure class="left-worker">
					<img src="images/board/floor22/left-mario.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor22/middle-juan.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor22/right-sam.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 23</div>
				<figure class="left-worker">
					<img src="images/board/floor23/left-willie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor23/middle-karen.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor23/right-john.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 24</div>
				<figure class="left-worker">
					<img src="images/board/floor24/left-terry.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor24/middle-wanda.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor24/right-jeffery.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 25</div>
				<figure class="left-worker">
					<img src="images/board/floor25/left-justin.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor25/middle-gene.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor25/right-samantha.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 26</div>
				<figure class="left-worker">
					<img src="images/board/floor26/left-dana.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor26/middle-ronnie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor26/right-jonathan.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 27</div>
				<figure class="left-worker">
					<img src="images/board/floor27/left-timothy.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor27/middle-peter.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor27/right-willie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 28</div>
				<figure class="left-worker">
					<img src="images/board/floor28/left-nicholas.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor28/middle-diane.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor28/right-todd.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 29</div>
				<figure class="left-worker">
					<img src="images/board/floor29/left-frederick.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor29/middle-victor.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor29/right-wanda.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 30</div>
				<figure class="left-worker">
					<img src="images/board/floor30/left-jack.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor30/middle-marilyn.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor30/right-samuel.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 31</div>
				<figure class="left-worker">
					<img src="images/board/floor31/left-amy.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor31/middle-keith.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor31/right-chad.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 32</div>
				<figure class="left-worker">
					<img src="images/board/floor32/left-melvin.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor32/middle-howard.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor32/right-darlene.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 33</div>
				<figure class="left-worker">
					<img src="images/board/floor33/left-ronnie.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor33/middle-jeffrey.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor33/right-amanda.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 34</div>
				<figure class="left-worker">
					<img src="images/board/floor34/left-april.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor34/middle-bradley.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor34/right-leonard.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 35</div>
				<figure class="left-worker">
					<img src="images/board/floor35/left-lloyd.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor35/middle-carol.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor35/right-marcus.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 36</div>
				<figure class="left-worker">
					<img src="images/board/floor36/left-emily.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor36/middle-scott.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor36/right-chris.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
		<div class="row">
			<div class="board-column1">
				<div class="floor-label">FLOOR 37</div>
				<figure class="left-worker">
					<img src="images/board/floor37/left-jon.png">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor37/middle-maria.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor37/right-ryan.png">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
			<div class="board-column2">
				<div class="floor-label">FLOOR 38</div>
				<figure class="left-worker">
					<img src="images/board/floor38/left-dan.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="middle-worker">
					<img src="images/board/floor38/middle-jorge.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
				<figure class="right-worker">
					<img src="images/board/floor38/right-jeanette.jpg">
					<figcaption>${nameIterator.next()}</figcaption>
				</figure>
			</div>
		</div>
	</div>
	<img class="below-top" src="images/board/cork-board-bottom.jpg">
	
	<div id="worker-overlay">
		<figure id="profile">
			<img src="images/board/floor1/left-tammy.jpg">
			<div>
				<figcaption>${nameIterator.next()}</figcaption>
			</div>
		</figure>
	</div>
</body>

</html>
