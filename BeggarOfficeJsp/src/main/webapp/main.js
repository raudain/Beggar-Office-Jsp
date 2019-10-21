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
	document.getElementById("app-switcher").style.display = "block";
	document.getElementById("pane").style.zIndex = 2;
}
function returnFromOverlay() {
	document.getElementById("app-switcher").style.display = "none";
	document.getElementById("pane").style.zIndex = 0;
}
