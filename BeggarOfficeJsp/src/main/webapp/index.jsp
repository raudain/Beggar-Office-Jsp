<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="description" content="Worker tracker for the Virtual Beggar mobile clicker game">
    <meta name="author" content="Roody Audain">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <title>CHANGE INC.</title>
    <link rel="stylesheet" href="stylesheets/stylesheet.css">
    <link rel="stylesheet" href="stylesheets/board.css">
  </head>
  <style>
    #cork-board {
      background-image: url("images/board/cork-board-top.jpg"), url("images/board/cork-board-middle.jpg");
      background-repeat: no-repeat, repeat;
      background-size: 76.6vw 100vh;
    }
  </style>
  <body>
    <header style ="background-color: #fff; width: 100%; height: 8.5vh;">
      <h1 id="title" class="text top">V.B Desktop</h1>
      <a id="link" class="text top top-right" href="index.jsp">Tower</a>
      <form action="getEmployee">
        <input id="search-box" class="text top banner-search top-right"type="text" name="position" placeholder="Search">
        <input id="magnifying-glass" class="top top-right banner-search" type="image" src=images/search.gif>
      </form>
    </header>
    <img id="clock" class="center-image" src="images/clok.png" style="margin-top: .8%; margin-bottom: .8%; width: 7.7vw;">
    <div id="cork-board" class="board" style="height: 626.7vh; margin-right: auto; margin-left: auto;">
      <div class="floor colum1 row1">
        <div class="text floor-label">FLOOR 1</div>
        <div class="employee left-worker">
          <img src="images/board/floor1/left-tammy.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor1/middle-vernon.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor1/right-jeff.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row1">
        <div class="text floor-label">FLOOR 2</div>
        <div class="employee left-worker">
          <img src="images/board/floor2/left-jeremy.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor2/middle-marvin.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor2/right-christine.png">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row2">
        <div class="text floor-label">FLOOR 3</div>
        <div class="employee left-worker">
          <img src="images/board/floor3/left-andrea.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor3/middle-david.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor3/right-jeanette.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row2">
        <div class="text floor-label">FLOOR 4</div>
        <div class="employee left-worker">
          <img src="images/board/floor4/left-anne.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor4/middle-mary.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor4/right-leo.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row3">
        <div class="text floor-label">FLOOR 5</div>
        <div class="employee left-worker">
          <img src="images/board/floor5/left-sharon.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor5/middle-amanda.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor5/right-helen.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row3">
        <div class="text floor-label">FLOOR 6</div>
        <div class="employee left-worker">
          <img src="images/board/floor6/left-nathan.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor6/middle-earl.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor6/right-marjorie.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row4">
        <div class="text floor-label">FLOOR 7</div>
        <div class="employee left-worker">
          <img src="images/board/floor7/left-lawrence.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor7/middle-tammy.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor7/right-regina.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row4">
        <div class="text floor-label">FLOOR 8</div>
        <div class="employee left-worker">
          <img src="images/board/floor8/left-heather.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor8/middle-willie.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor8/right-philip.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row5">
        <div class="text floor-label">FLOOR 9</div>
        <div class="employee left-worker">
          <img src="images/board/floor9/left-vivian.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor9/middle-lewis.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor9/right-jessica.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row5">
        <div class="text floor-label">FLOOR 10</div>
        <div class="employee left-worker">
          <img src="images/board/floor10/left-maria.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor10/middle-timmy.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor10/right-dustin.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row6">
        <div class="text floor-label">FLOOR 11</div>
        <div class="employee left-worker">
          <img src="images/board/floor11/left-anthony.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor11/middle-paula.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor11/right-amber.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row6">
        <div class="text floor-label">FLOOR 12</div>
        <div class="employee left-worker">
          <img src="images/board/floor12/left-billy.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor12/middle-danna.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor12/right-martha.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row7">
        <div class="text floor-label">FLOOR 13</div>
        <div class="employee left-worker">
          <img src="images/board/floor13/left-connie.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor13/middle-darrel.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor13/right-kathryn.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row7">
        <div class="text floor-label">FLOOR 14</div>
        <div class="employee left-worker">
          <img src="images/board/floor14/left-bradley.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor14/middle-danielle.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor14/right-rose.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row8">
        <div class="text floor-label">FLOOR 15</div>
        <div class="employee left-worker">
          <img src="images/board/floor15/left-martin.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor15/middle-veronica.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor15/right-james.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row8">
        <div class="text floor-label">FLOOR 16</div>
        <div class="employee left-worker">
          <img src="images/board/floor16/left-tammy.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor16/middle-earl.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor16/right-nicholas.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row9">
        <div class="text floor-label">FLOOR 17</div>
        <div class="employee left-worker">
          <img src="images/board/floor17/left-martin.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor17/middle-tyler.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor17/right-steve.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row9">
        <div class="text floor-label">FLOOR 18</div>
        <div class="employee left-worker">
          <img src="images/board/floor18/left-emma.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor18/middle-carlos.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor18/right-fransisco.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row10">
        <div class="text floor-label">FLOOR 19</div>
        <div class="employee left-worker">
          <img src="images/board/floor19/left-ryan.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor19/middle-janice.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor19/right-jeanette.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row10">
        <div class="text floor-label">FLOOR 20</div>
        <div class="employee left-worker">
          <img src="images/board/floor20/left-gilbert.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor20/middle-kristen.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor20/right-zackary.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row11">
        <div class="text floor-label">FLOOR 21</div>
        <div class="employee left-worker">
          <img src="images/board/floor21/left-mario.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor21/middle-frank.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor21/right-rick.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row11">
        <div class="text floor-label">FLOOR 22</div>
        <div class="employee left-worker">
          <img src="images/board/floor22/left-mario.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor22/middle-juan.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor22/right-sam.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row12">
        <div class="text floor-label">FLOOR 23</div>
        <div class="employee left-worker">
          <img src="images/board/floor23/left-willie.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor23/middle-karen.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor23/right-john.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row12">
        <div class="text floor-label">FLOOR 24</div>
        <div class="employee left-worker">
          <img src="images/board/floor24/left-terry.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor24/middle-wanda.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor24/right-jeffery.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row13">
        <div class="text floor-label">FLOOR 25</div>
        <div class="employee left-worker">
          <img src="images/board/floor25/left-justin.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor25/middle-gene.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor25/right-samantha.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row13">
        <div class="text floor-label">FLOOR 26</div>
        <div class="employee left-worker">
          <img src="images/board/floor26/left-dana.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor26/middle-ronnie.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor26/right-jonathan.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row14">
        <div class="text floor-label">FLOOR 27</div>
        <div class="employee left-worker">
          <img src="images/board/floor27/left-timothy.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor27/middle-peter.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor27/right-willie.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row14">
        <div class="text floor-label">FLOOR 28</div>
        <div class="employee left-worker">
          <img src="images/board/floor28/left-nicholas.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor28/middle-diane.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor28/right-todd.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row15">
        <div class="text floor-label">FLOOR 29</div>
        <div class="employee left-worker">
          <img src="images/board/floor29/left-frederick.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor29/middle-victor.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor29/right-wanda.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row15">
        <div class="text floor-label">FLOOR 30</div>
        <div class="employee left-worker">
          <img src="images/board/floor30/left-jack.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor30/middle-marilyn.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor30/right-samuel.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row16">
        <div class="text floor-label">FLOOR 31</div>
        <div class="employee left-worker">
          <img src="images/board/floor31/left-amy.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor31/middle-keith.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor31/right-chad.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row16">
        <div class="text floor-label">FLOOR 32</div>
        <div class="employee left-worker">
          <img src="images/board/floor32/left-melvin.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor32/middle-howard.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor32/right-darlene.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum1 row17">
        <div class="text floor-label">FLOOR 33</div>
        <div class="employee left-worker">
          <img src="images/board/floor33/left-ronnie.jpg">
          <div class="text endurance-label">PRODUCTIVE</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor33/middle-jeffrey.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor33/right-amanda.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
      <div class="floor colum2 row17">
        <div class="text floor-label">FLOOR 34</div>
        <div class="employee left-worker">
          <img src="images/board/floor34/left-april.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor34/middle-worker.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor34/right-leonard.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum1 row18">
        <div class="text floor-label">FLOOR 35</div>
        <div class="employee left-worker">
          <img src="images/board/floor35/left-lloyd.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor35/middle-carol.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor35/right-marcus.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
      </div>
      <div class="floor colum2 row18">
        <div class="text floor-label">FLOOR 36</div>
        <div class="employee left-worker">
          <img src="images/board/floor36/left-emily.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
        <div class="employee middle-worker">
          <img src="images/board/floor36/middle-scott.jpg">
          <div class="text endurance-label">HARD-WORKING</div>
        </div>
        <div class="employee right-worker">
          <img src="images/board/floor36/right-frances.jpg">
          <div class="text endurance-label">TIRELESS</div>
        </div>
      </div>
    </div>
    <img class="board center-image" src="images/board/cork-board-bottom.jpg">
  </body>
</html>
