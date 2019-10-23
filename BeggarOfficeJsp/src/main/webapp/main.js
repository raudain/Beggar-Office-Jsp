var pane = document.createElement("div");
pane.id = "pane";
pane.addEventListener("click", returnFromOverlay);

var section = document.querySelector("section");
document.body.insertBefore(pane, section);

var brand = document.getElementById("brand");
brand.addEventListener("click", appSwitcherOn);

var logo = document.createElement("h1");
logo.id = "logo";
var node = document.createTextNode("V.B. Tower");
logo.appendChild(node);
brand.appendChild(logo);

var caret = document.createElement("span");
brand.appendChild(caret);

var todaysDate = new Date();
var todaysWeekDay= todaysDate.getDay()
var dayString = getWeekDayString(todaysWeekDay);
var dayNumber = todaysDate.getDate();
document.getElementById("dayOfWeek").innerHTML = dayString;
document.getElementById("dayNumber").innerHTML = dayNumber;

function getWeekDayString(weekDayNumber) {
	var weekDayString;
	switch (weekDayNumber) {
	case 0:
		weekDayString = "Sunday";
		break;
	case 1:
		weekDayString = "Monday";
		break;
	case 2:
		weekDayString = "Tuesday";
		break;
	case 3:
		weekDayString = "Wednesday";
		break;
	case 4:
		weekDayString = "Thursday";
		break;
	case 5:
		weekDayString = "Friday";
		break;
	case 6:
		weekDayString = "Saturday";
		break;
	}
	return weekDayString;
}

function appSwitcherOn() {
	var appSwitcher = document.getElementById("app-switcher");
	appSwitcher.style.display = "block";
	appSwitcher.style.zIndex = 9;
	document.getElementById("pane").style.zIndex = 2;
}
function returnFromOverlay() {
	document.getElementById("app-switcher").style.display = "none";
	document.getElementById("pane").style.zIndex = 0;
}
