var section = document.querySelector("section");

// Pane
var pane = document.createElement("div");
pane.id = "pane";
pane.addEventListener("click", returnFromOverlay);
document.body.insertBefore(pane, section);

// Brand
var brand = document.createElement("div");
brand.id = "brand";
brand.addEventListener("click", appSwitcherOn);
section.appendChild(brand);

var logo = document.createElement("h1");
logo.id = "logo";
var logoText = document.createTextNode("V.B. Tower");
logo.appendChild(logoText);
brand.appendChild(logo);

var caret = document.createElement("span");
brand.appendChild(caret);


/* 
 *	***************** Application Switcher ****************
 */
var figures = document.querySelectorAll("figure");

//                       Virtual Beggar
var beggarFigure = figures[0];

// Virtual Beggar Icon
var virtualBeggarIcon = document.createElement("img");
virtualBeggarIcon.src = "images/virtual-beggar.png";
beggarFigure.appendChild(virtualBeggarIcon);

// Virtual Beggar Caption
var virtualBeggarCaption = document.createElement("figcaption");
var virtualBeggarCaptionText = document.createTextNode("Change Inc");
virtualBeggarCaption.appendChild(virtualBeggarCaptionText);
beggarFigure.appendChild(virtualBeggarCaption);

//                       Calendar
var calendarFigure = figures[0];
var todaysDate = new Date();
var todaysWeekDay= todaysDate.getDay()

// Calendar Icon
var calendarIcon = document.createElement("div");
calendarIcon.id = "icon";
calendarFigure.appendChild(calendarIcon);
var dayOfTheWeek = document.createElement("div");
dayOfTheWeek.id = "dayOfWeek";
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
