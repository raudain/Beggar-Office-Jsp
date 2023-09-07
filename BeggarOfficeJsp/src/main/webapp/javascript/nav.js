/* 
 *	***************** Menu Section Header ****************
 */

// Create Worker Button
var lastButton = document.createElement("li");
lastButton.className = "w3-bar-item w3-margin-right w3-right w3-mobile";
var navigation = document.querySelector("ul");
var boardLink = document.getElementById("board");
navigation.insertBefore(lastButton, boardLink);
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

/*
 * ***************** Application Switcher ****************
 */
/*
var appSwitcher = document.createElement("div");
appSwitcher.id = "app-switcher";
document.body.appendChild(appSwitcher);

function appSwitcherOn() {
	appSwitcher.style.display = "block";
	appSwitcher.style.zIndex = 9;
	pane.style.zIndex = 2;
}


// Virtual Beggar

// VIRTUAL BEGGAR LINK
var beggarLink = document.createElement("a");
beggarLink.href = "http://localhost:8080/BeggarOfficeJsp"
appSwitcher.appendChild(beggarLink);

// VIRTUAL BEGGAR FIGURE
var beggarFigure = document.createElement("figure");
beggarLink.appendChild(beggarFigure);

// VIRTUAL BEGGAR ICON
var beggarIcon = document.createElement("img");
beggarIcon.src = "images/beggar.png";
beggarFigure.appendChild(beggarIcon);

// VIRTUAL BEGGAR CAPTION
var beggarCaption = document.createElement("figcaption");
var beggarCaptionText = document.createTextNode("Change Inc");
beggarCaption.appendChild(beggarCaptionText);
beggarFigure.appendChild(beggarCaption);

// Calendar

// CALENDAR LINK
var calendarLink = document.createElement("a");
calendarLink.href = "http://localhost:8080/Calendar"
appSwitcher.appendChild(calendarLink);

// CALENDAR FIGURE
var calendarFigure = document.createElement("figure");
calendarLink.appendChild(calendarFigure);
var todaysDate = new Date();

// CALENDAR ICON
var calendarIcon = document.createElement("div");
calendarIcon.id = "icon";
calendarFigure.appendChild(calendarIcon);
// Day of The Week
var dayOfTheWeek = document.createElement("div");
dayOfTheWeek.id = "dayOfWeek";
var todaysWeekDay = todaysDate.getDay()
var dayString = getWeekDayString(todaysWeekDay);
var dayOfTheWeekText = document.createTextNode(dayString);
dayOfTheWeek.appendChild(dayOfTheWeekText);
calendarIcon.appendChild(dayOfTheWeek);
// Day Number
var dayNumber = document.createElement("div");
dayNumber.id = "dayNumber";
var todaysDayNumber = todaysDate.getDate();
var dayNumberText = document.createTextNode(todaysDayNumber);
dayNumber.appendChild(dayNumberText);
calendarIcon.appendChild(dayNumber);

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

// CALENDAR CAPTION
var calendarCaption = document.createElement("figcaption");
var calendarCaptionText = document.createTextNode("Calendar");
calendarCaption.appendChild(calendarCaptionText);
calendarFigure.appendChild(calendarCaption);

// Event Registration Portal

// EVENT REGISTRATION PORTAL LINK
var portalLink = document.createElement("a");
portalLink.href = "http://localhost:8080/FestivalPortalR2_Participant"
appSwitcher.appendChild(portalLink);

// EVENT REGISTRATION PORTAL FIGURE
var portalFigure = document.createElement("figure");
portalLink.appendChild(portalFigure);

// EVENT REGISTRATION PORTAL ICON
var portalIcon = document.createElement("img");
portalIcon.src = "images/event-registration.png";
portalFigure.appendChild(portalIcon);

// EVENT REGISTRATION PORTAL CAPTION
var portalCaption = document.createElement("figcaption");
var portalCaptionText = document.createTextNode("Event Portal");
portalCaption.appendChild(portalCaptionText);
portalFigure.appendChild(portalCaption);

// Home Property

// HOME PROPERTY LINK
var propertyLink = document.createElement("a");
propertyLink.href = "http://localhost:8080/HomeProperty"
appSwitcher.appendChild(propertyLink);

// HOME PROPERTY FIGURE
var propertyFigure = document.createElement("figure");
propertyLink.appendChild(propertyFigure);

// HOME PROPERTY ICON
var propertyIcon = document.createElement("img");
propertyIcon.src = "images/home-property.png";
propertyFigure.appendChild(propertyIcon);

// HOME PROPERTY CAPTION
var propertyCaption = document.createElement("figcaption");
var propertyCaptionText = document.createTextNode("Real Estate");
propertyCaption.appendChild(propertyCaptionText);
propertyFigure.appendChild(propertyCaption);
*/
