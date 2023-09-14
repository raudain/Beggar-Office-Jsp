const page = location.href;

/* 
 *	***************** Sort by Room Number Accending ****************
 */

let pageNumber = page.substring(49, 50);
const arrowPrevious = document.getElementById("arrowPrevious");
const urlBase = "Table?page="
const arrowNext = document.getElementById("arrowNext");

/* 
 *	***************** Sort By Room ****************
 */

if (page == "http://localhost:8080/BeggarOfficeJsp/Table?page=69"){
	const sortByCost = document.querySelectorAll("th a")[1];
	sortByCost.style.color = "lightgray";
	sortByCost.style.pointerEvents = "none";
} else {
	const sortByRoom = document.querySelectorAll("th a")[0];
	sortByRoom.style.color = "lightgray";
	sortByRoom.style.pointerEvents = "none";
}

/* 
 *	***************** Highlight Pagnation ****************
 */

let link = document.getElementById("page1");
switch (pageNumber) {
  case "2":
    link = document.getElementById("page2");
    break;
  case "3":
     link = document.getElementById("page3");
    break;
  case "4":
    link = document.getElementById("page4");
    break;
  case "5":
    link = document.getElementById("page5");
    break;
  case "6":
    link = document.getElementById("page6");
    break;
  case "7":
    link = document.getElementById("page7");
    break;
}
link.className = "w3-button w3-yellow w3-hover-red";

/* 
 *	***************** Arrows Left ****************
 */

if (page == "http://localhost:8080/BeggarOfficeJsp/Table?page=1"){
	const arrowFirst = document.getElementById("pageFirst");
	arrowFirst.style.color = "lightgray";
	arrowFirst.style.pointerEvents = "none";
	arrowPrevious.style.color = "lightgray";
	arrowPrevious.className = "w3-button w3-hover-white w3-mobile";
}

/* 
 *	***************** Arrow Previous ****************
 */

arrowPrevious.addEventListener("click", onePageBack);
function onePageBack() {
	if (pageNumber != 1) {
		pageNumber--;
		const pageNumberPrevious = pageNumber;
		const pagePrevious = urlBase + pageNumberPrevious;
		location.href = pagePrevious;
	}
}

/* 
 *	***************** Arrow Next****************
 */

arrowNext.addEventListener("click", onePageForward);
function onePageForward() {
	if (pageNumber != 7) {
		pageNumber++;
		const pageNumberNext = pageNumber;
		const pageNext = urlBase + pageNumberNext;
		location.href = pageNext;
	}
}

/* 
 *	***************** Arrows Right ****************
 */

if (page == "http://localhost:8080/BeggarOfficeJsp/Table?page=7"){
	const arrowLast = document.getElementById("pageLast");
	arrowLast.style.color = "lightgray";
	arrowLast.style.pointerEvents = "none";
	arrowNext.style.color = "lightgray";
	arrowNext.className = "w3-button w3-hover-white w3-mobile";
}

/* 
 *	***************** Sort by Worker's Cost Accending ****************
 */

if (page == "http://localhost:8080/BeggarOfficeJsp/Table?page=69"){
	const pagination = document.querySelector(".w3-display-bottommiddle");
	pagination.style.display = "none";
}
