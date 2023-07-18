/*
// Pane
var pane = document.createElement("div");
pane.id = "pane";
if (isOverlayOn()) {
	pane.style.zIndex = 2;
	pane.style.backgroundColor = "rgba(0, 0, 0, 0.5)";
}
pane.addEventListener("click", returnFromOverlay);
document.body.insertBefore(pane, section);

function isOverlayOn() {
	var documentlink = document.baseURI;
	var linkString = documentlink.toString();
	var searchSeed = "http://localhost:8080/BeggarOfficeJsp/overlay";
	var pos = linkString.indexOf(searchSeed);
	if (pos == 0) {
		return true;
	}
}

function returnFromOverlay() {
	appSwitcher.style.display = "none";
	pane.style.backgroundColor = "";
	pane.style.zIndex = 0;
	var workerOverlay = document.getElementById("worker-overlay");
	if (workerOverlay != null) {
		workerOverlay.style.display = "none";
	}
}
*/

var formElements = document.forms;
var workerClassNames = ".left-worker, .middle-worker, .right-worker";
var workerNodeList = document.querySelectorAll(workerClassNames);
var i = 0;
var imageInput;
var roomNumber = 100;
var imageURL = "images/" + roomNumber +".jpg";
var workerElement;
var caption;
while (i < workerNodeList.length) {
	imageInput = document.createElement("input");
	imageInput.type = "submit";
	imageInput.name = "room";
	roomNumber = getNextRoom(roomNumber);
	imageInput.value = roomNumber;
	imageUrl = "images/" + roomNumber +".jpg";
	imageInput.style.backgroundImage = "url('" + imageUrl + "')";
	workerElement = workerNodeList[i];
	caption = workerElement.getElementsByTagName("figcaption")[0];
	workerElement.insertBefore(imageInput, caption);
	++i;
}

function getNextRoom(room) {
	var roomString = room.toString();
	var positionIndex = roomString.length - 1;
	var position = roomString.charAt(positionIndex);
	var rightPosition = 3;
	if (position < rightPosition) {
		var nextRoom = ++room;
	} else {
		var nextRoom = room + 98;
	}
	return nextRoom;
}

// Cork Board Bottom Image
var cbb = document.createElement("img");
cbb.id = "cbb";
cbb.src = "images/board/cork-board-bottom.jpg";
document.body.appendChild(cbb);

function setScrollCookie() {
	var d = new Date();
	d.setTime(d.getTime() + (24*60*60*1000));
	var expires = "expires="+ d.toUTCString();
	cvalue = window.scrollY;
	document.cookie = "scrollheight=" + cvalue + ";" + expires + ";path=/";
}

function getScrollHeight(cname) {
	var name = cname + "=";
	var decodedCookie = decodeURIComponent(document.cookie);
	var ca = decodedCookie.split(';');
	for(var i = 0; i <ca.length; i++) {
		var c = ca[i];
	    while (c.charAt(0) == ' ') {
	      c = c.substring(1);
	    }
	    if (c.indexOf(name) == 0) {
	      return c.substring(name.length, c.length);
	    }
	  }
	return "";
}

var scrollHeight = getScrollHeight("scrollheight");
document.cookie = "scrollheight=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
window.scrollTo(0, scrollHeight);