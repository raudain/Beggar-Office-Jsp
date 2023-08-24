/* 
 *	***************** Sort by Room Number Accending ****************
 */

const room = document.getElementById("room");
room.addEventListener("click", sortByRoom);

function sortByRoom() {
	location.href="ListRoom";
}


/* 
 *	***************** Sort by Worker's Cost Accending ****************
 */

const cost = document.getElementById("cost");
cost.addEventListener("click", sortByCost);

function sortByCost() {
	location.href="ListCost";
}