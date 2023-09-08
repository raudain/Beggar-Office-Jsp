/* 
 *	***************** Sort by Room Number Accending ****************
 */

const room = document.getElementById("room");
room.addEventListener("click", sortByRoom);

function sortByRoom() {
	location.href="ListRoom1";
}


/* 
 *	***************** Sort by Worker's Cost Accending ****************
 */

const cost = document.getElementById("cost");
cost.addEventListener("click", sortByCost);

function sortByCost() {
	location.href="ListCost";
}

/* 
 *	***************** Highlight Pagnation ****************
 */

const page = location.href;
const pageNumber = page.substring(46, 47);
switch (pageNumber) {
  case "1":
      let link1 = document.getElementById("page1");
      link1.className = "w3-button w3-yellow w3-hover-red";
      break;
  case "2":
    let link2 = document.getElementById("page2");
    link2.className = "w3-button w3-yellow w3-hover-red";
    break;
  case "3":
     let link3 = document.getElementById("page3");
     link3.className = "w3-button w3-yellow w3-hover-red";
    break;
  case "4":
    let link4 = document.getElementById("page4");
    link4.className = "w3-button w3-yellow w3-hover-red";
    break;
  case "5":
    let link5 = document.getElementById("page5");
    link5.className = "w3-button w3-yellow w3-hover-red";
    break;
}

if  (location.href == 'http://localhost:8080/BeggarOfficeJsp/Room')
    changeListButton.className = "w3-button w3-yellow w3-hover-red w3-round-large";
else
	changeListButton.className = "w3-button w3-hover-red w3-round-large";