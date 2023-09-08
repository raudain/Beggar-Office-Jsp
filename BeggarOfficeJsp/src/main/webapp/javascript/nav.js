/* 
 *	***************** Menu Section Header ****************
 */

// Create Worker Button
var lastButton = document.createElement("li");
lastButton.className = "w3-bar-item w3-margin-right w3-right w3-mobile";
var navigation = document.querySelector("ul");
var insertWorkerButton = document.createElement("button");
insertWorkerButton.type = "button";
if  (location.href == 'http://localhost:8080/BeggarOfficeJsp/Room')
    insertWorkerButton.className = "w3-button w3-yellow w3-hover-red w3-round-large";
else
	insertWorkerButton.className = "w3-button w3-hover-red w3-round-large";
lastButton.appendChild(insertWorkerButton);
var icon = document.createElement("i");
icon.className = "fa-regular fa-plus";
insertWorkerButton.appendChild(icon);
var buttonText = document.createTextNode("Onboard Worker");
insertWorkerButton.addEventListener("click", newPage);
insertWorkerButton.appendChild(buttonText);

/*
 * ***************** New Worker Onboarding ****************
 */
function newPage() {
	location.href="Room";
}
