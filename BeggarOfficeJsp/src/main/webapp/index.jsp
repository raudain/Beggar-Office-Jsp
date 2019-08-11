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
    #cork-board-top {
      background-image: url("images/cork-board.jpg");
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
    <img id="clock" src="images/clok.png" style="display: block; margin-top: .8%; margin-right: auto; margin-bottom: .8%; margin-left: auto; width: 7.7vw;">
    <div id="cork-board-top" style="width: 76.6vw; height: 1100vh; margin-right: auto; margin-left: auto;">
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
      <div class="floor colum2 row3">
        <div class="text floor-label">FLOOR 6</div>
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
      <div class="floor colum1 row4">
        <div class="text floor-label">FLOOR 7</div>
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
      <div class="floor colum2 row4">
        <div class="text floor-label">FLOOR 8</div>
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
      <div class="floor colum1 row5">
        <div class="text floor-label">FLOOR 9</div>
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
      <div class="floor colum2 row5">
        <div class="text floor-label">FLOOR 10</div>
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
      <div class="floor colum1 row6">
        <div class="text floor-label">FLOOR 11</div>
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
      <div class="floor colum2 row6">
        <div class="text floor-label">FLOOR 12</div>
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
      <div class="floor colum1 row7">
        <div class="text floor-label">FLOOR 13</div>
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
      <div class="floor colum2 row7">
        <div class="text floor-label">FLOOR 14</div>
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
      <div class="floor colum1 row8">
        <div class="text floor-label">FLOOR 15</div>
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
      <div class="floor colum2 row8">
        <div class="text floor-label">FLOOR 16</div>
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
      <div class="floor colum1 row9">
        <div class="text floor-label">FLOOR 17</div>
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
      <div class="floor colum2 row9">
        <div class="text floor-label">FLOOR 18</div>
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
      <div class="floor colum1 row10">
        <div class="text floor-label">FLOOR 19</div>
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
      <div class="floor colum2 row10">
        <div class="text floor-label">FLOOR 20</div>
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
      <div class="floor colum1 row11">
        <div class="text floor-label">FLOOR 21</div>
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
      <div class="floor colum2 row11">
        <div class="text floor-label">FLOOR 22</div>
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
      <div class="floor colum1 row12">
        <div class="text floor-label">FLOOR 23</div>
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
      <div class="floor colum2 row12">
        <div class="text floor-label">FLOOR 24</div>
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
      <div class="floor colum1 row13">
        <div class="text floor-label">FLOOR 25</div>
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
      <div class="floor colum2 row13">
        <div class="text floor-label">FLOOR 26</div>
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
      <div class="floor colum1 row14">
        <div class="text floor-label">FLOOR 27</div>
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
      <div class="floor colum2 row14">
        <div class="text floor-label">FLOOR 28</div>
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
      <div class="floor colum1 row15">
        <div class="text floor-label">FLOOR 29</div>
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
      <div class="floor colum2 row15">
        <div class="text floor-label">FLOOR 30</div>
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
      <div class="floor colum1 row16">
        <div class="text floor-label">FLOOR 31</div>
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
      <div class="floor colum2 row16">
        <div class="text floor-label">FLOOR 32</div>
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
      <div class="floor colum1 row17">
        <div class="text floor-label">FLOOR 33</div>
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
      <div class="floor colum2 row17">
        <div class="text floor-label">FLOOR 34</div>
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
      <div class="floor colum1 row18">
        <div class="text floor-label">FLOOR 35</div>
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
      <div class="floor colum2 row18">
        <div class="text floor-label">FLOOR 36</div>
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
    </div>
  </body>
</html>
