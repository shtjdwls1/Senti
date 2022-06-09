const colors = ["#4e4376", "#2b5876"];
const button = document.querySelector("#top");
const btnLow = document.querySelector("#btnLow");
const btnHigh = document.querySelector("#btnHigh");
const videoLow = document.querySelector(".vocalTestLow");
const videoHigh = document.querySelector(".vocalTestHigh");
const body = document.querySelector("body");

function topColor() {
	const color1 = colors[0];
	const color2 = colors[1];
	button.style.background = `linear-gradient(${color1},${color2})`;
}

function paintVideoLow() {
	videoLow.classList.remove("hidden");
	videoHigh.classList.add("hidden");
}
function paintVideoHigh() {
	videoLow.classList.add("hidden");
	videoHigh.classList.remove("hidden");
}

btnLow.addEventListener("click", paintVideoLow);
btnHigh.addEventListener("click", paintVideoHigh);

topColor();


