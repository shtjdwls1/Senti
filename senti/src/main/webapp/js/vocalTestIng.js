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
function deleteBoard(seq) {
	Swal.fire({
		title: '글을 삭제하시겠습니까???',
		text: "삭제하시면 다시 복구시킬 수 없습니다.",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: '삭제',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.value) {
			//"삭제" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
		}
	})
}

btnLow.addEventListener("click", paintVideoLow);
btnHigh.addEventListener("click", paintVideoHigh);

topColor();
deleteBoard();


