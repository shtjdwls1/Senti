const playListForm = document.querySelector(".playList-form");
const playListInput = document.querySelector("#createPlayList");
const main = document.querySelector("main");

const colors = ["#4e4376", "#2b5876"];
const button = document.querySelector("#top");

// 맨 위쪽
function topColor() {
  const color1 = colors[0];
  const color2 = colors[1];
  button.style.background = `linear-gradient(${color1},${color2})`;
}

// 플레이리스트 화면에 보여주기
function paintPlayList(playListName) {
  const playList = document.createElement("div");
  playList.setAttribute("id", "playList1");
  playList.setAttribute("class", "my-3 p-1 bg-body rounded shadow-sm");

  const div = document.createElement("div");
  div.setAttribute("class", "d-flex text-muted pt-3");

  const img = document.createElement("img");
  img.setAttribute("class", "bd-placeholder-img flex-shrink-0 me-2 rounded");
  img.setAttribute("src", "img/add.png");

  const div2 = document.createElement("div");
  div2.setAttribute("class", "pb-3 mb-0 small lh-sm w-100");

  const div3 = document.createElement("div");
  div3.setAttribute("class", "d-flex justify-content-between");

  const strong = document.createElement("strong");
  strong.setAttribute("class", "text-gray-dark");
  strong.innerText = playListName;

  const a = document.createElement("a");
  a.setAttribute("href", "./playListDetail.jsp");
  a.innerText = "상세보기";

  const span = document.createElement("span");
  span.setAttribute("class", "d-block");
  span.innerText = "@닉네임";

  div3.appendChild(strong);
  div3.appendChild(a);
  div2.appendChild(div3);
  div2.appendChild(span);
  div.appendChild(img);
  div.appendChild(div2);

  playList.appendChild(div);
  main.appendChild(playList);
}

// 플레이리스트 만들기
function createPlayList() {
  //event.preventDefault();
  const playListName = playListInput.value;
  playListInput.value = "";
  paintPlayList(playListName);
}

playListForm.addEventListener("submit", createPlayList);

topColor();
