const upload = document.querySelector("#image");
const preview = document.querySelector("div#image_container");
const thumbnail = document.querySelector("#thumbnail");
const join = document.querySelector(".container");
const form = document.querySelector("form");
const title = document.querySelector("#title");
const span = document.querySelector("span");
const result = document.querySelector(".hidden");
const profileImg = document.querySelector("#profileImg");
let profile = "";

function setThumbnail(event) {
  const reader = new FileReader();

  reader.onload = function (event) {
    profile = event.target.result;
    thumbnail.setAttribute("src", profile);
  };

  reader.readAsDataURL(event.target.files[0]);
}

function checkJoin(event) {
  event.preventDefault();
  form.classList.add("hidden");
  span.classList.add("hidden");
  preview.classList.add("hidden");
  result.classList.remove("hidden");
  join.classList.add("hidden");
  profileImg.setAttribute("src", profile);
}

upload.addEventListener("change", setThumbnail);
preview.addEventListener("click", () => upload.click());
form.addEventListener("submit", checkJoin);
