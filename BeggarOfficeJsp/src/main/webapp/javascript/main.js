var formElements = document.forms;
var i = 0;
var imageInput;
var roomNumber = 100;
var imageURL = "images/" + roomNumber +".jpg";
while (i < formElements.length) {
	imageInput = document.createElement("input");
	imageInput.type = "submit";
	imageInput.name = "room";
	roomNumber = getNextRoom(roomNumber);
	imageInput.value = roomNumber;
	imageUrl = "images/" + roomNumber +".jpg";
	imageInput.style.backgroundImage = "url('" + imageUrl + "')";
	var form = formElements[i]
	form.appendChild(imageInput);
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