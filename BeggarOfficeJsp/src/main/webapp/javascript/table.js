/* 
 *	***************** Sort by Room Number Accending ****************
 */

const page = location.href;
let pageNumber = page.substring(49, 50);
const urlBase = "Table?page="

/* 
 *	***************** Arrow Previous ****************
 */

const arrowP = document.getElementById("arrowPrevious");
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

const arrowN = document.getElementById("arrowNext");
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
 *	***************** Sort by Worker's Cost Accending ****************
 */

if (location.href == "http://localhost:8080/BeggarOfficeJsp/Table?page=69"){
	const pagination = document.querySelector(".w3-display-bottommiddle");
	pagination.style.display = "none";
}
