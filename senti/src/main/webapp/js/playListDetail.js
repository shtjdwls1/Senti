const colors = ["#4e4376", "#2b5876"];
const button = document.querySelector("#top");
const btnUpdate = document.querySelector("#btnUpdate");
const btnDelete = document.querySelector("#btnDelete");
const playListTitle = document.querySelector("#playListTitle");
const playListTitleUpdate = document.querySelector(".playListTitleUpdate ");

let update = false;


// 맨 위쪽
function topColor() {
	const color1 = colors[0];
	const color2 = colors[1];
	button.style.background = `linear-gradient(${color1},${color2})`;
}
function paintPlayListTitleUpdate() {
	if (update == true) {
		update = false;
		playListTitle.classList.add("hidden");
		playListTitleUpdate.classList.remove("hidden");
	} else {
		update = true;
		playListTitle.classList.remove("hidden");
		playListTitleUpdate.classList.add("hidden");
	}
}
function paintPlayListTitle() {
	playListTitle.classList.remove("hidden");
	playListTitleUpdate.classList.add("hidden");
}

btnUpdate.addEventListener("click", paintPlayListTitleUpdate);
playListTitleUpdate.addEventListener("submit", paintPlayListTitle);
topColor();

