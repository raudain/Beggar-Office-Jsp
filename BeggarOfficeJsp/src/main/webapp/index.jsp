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
    <div id="cork-board-top" style="width: 76.6vw; height: 100vh; margin-right: auto; margin-left: auto;">
      <div class="floor odd-row row1">
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
      <div class="floor even-row row1">
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
      <div class="floor odd-row row2">
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
    </div>
  </body>
</html>
