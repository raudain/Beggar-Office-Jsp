const page = location.href;

/* 
 *	***************** Sort by Room Number Accending ****************
 */

let pageNumber = page.substring(49, 50);
const arrowP = document.getElementById("arrowPrevious");
const urlBase = "Table?page="
const arrowN = document.getElementById("arrowNext");

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
 *	***************** Arrow First Page ****************
 */

if (page == "http://localhost:8080/BeggarOfficeJsp/Table?page=1"){
	const arrowF = document.getElementById("first");
	arrowF.style.color = "lightgray";
	arrowF.style.pointerEvents = "none";
	arrowP.style.color = "lightgray";
}

/* 
 *	***************** Arrow Previous ****************
 */

arrowP.addEventListener("click", onePageBack);
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

arrowN.addEventListener("click", onePageForward);
function onePageForward() {
	if (pageNumber != 7) {
		pageNumber++;
		const pageNumberNext = pageNumber;
		const pageNext = urlBase + pageNumberNext;
		location.href = pageNext;
	}
}

/* 
 *	***************** Arrow Last Page ****************
 */

if (page == "http://localhost:8080/BeggarOfficeJsp/Table?page=7"){
	const arrowL = document.getElementById("last");
	arrowL.style.color = "lightgray";
	arrowL.style.pointerEvents = "none";
	arrowN.style.color = "lightgray";
}

/* 
 *	***************** Sort by Worker's Cost Accending ****************
 */

if (page == "http://localhost:8080/BeggarOfficeJsp/Table?page=69"){
	const pagination = document.querySelector(".w3-display-bottommiddle");
	pagination.style.display = "none";
}
