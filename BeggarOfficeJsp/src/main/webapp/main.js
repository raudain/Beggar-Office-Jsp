var workers;
workers = document.querySelectorAll(".left-worker, .middle-worker, .right-worker");


for (i = 0; i < workers.length; i++) {
	  workers[i].addEventListener("click", overlayOn);
}

function overlayOn() {
	pane.style.zIndex = 2;
	pane.style.backgroundColor = "rgba(0, 0, 0, 0.5)";
	var workerOverlay = document.getElementById("worker-overlay");
	workerOverlay.style.display = "block";
}