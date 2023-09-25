/* 
 *	***************** Menu Section Header ****************
 */

// Create Worker Button
const rightButton = document.createElement("li");
if  (location.href == 'http://localhost:8080/BeggarOfficeJsp/Update')
    rightButton.className = "w3-bar-item w3-yellow w3-hover-red" + 
    "w3-round-large w3-margin-right w3-right w3-mobile navigation";
else
	rightButton.className = "w3-bar-item  w3-hover-red w3-round-large" +
	"w3-margin-right w3-right w3-mobile navigation";

const navigation = document.querySelector("ul");
navigation.insertBefore(rightButton, null);
const changeListButton = document.createElement("a");
rightButton.appendChild(changeListButton);
const icon = document.createElement("i");
icon.className = "fa-solid fa-keyboard w3-margin-right";
changeListButton.appendChild(icon);
const buttonText = document.createTextNode("Update");
changeListButton.addEventListener("click", changeListPage);
changeListButton.appendChild(buttonText);

/*
 * ***************** New Worker Onboarding ****************
 */
function changeListPage() {
	location.href="Update";
}
