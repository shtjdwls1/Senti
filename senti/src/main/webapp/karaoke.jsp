<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/karaoke.css">
<title>Document</title>
</head>
<body>
	<div class="p-3 mb-2" id="top">
		<h1 id="pitch">내 음역대</h1>
		<a href="./playList.jsp">
			<h1 id="senti">
				<img src="img/facebook.png" id="logo"> Senti
			</h1>
		</a>
	</div>
	<br>
	<div class="musicInfo">
		<h3 id="title">never ending story</h3>
		<span id="singer">부활</span> <img id="albumimg" src="img/album.jpg">
		<audio id="music" src="music/neverendingstory.mp3" controls></audio>
	</div>
	<div class="shadow-sm p-1 mb-1 bg-body rounded" id="lyrics">
		<span>손 닿을 수 없는 저기 어딘가 오늘도 넌 숨쉬고 있지만 너와 머물던 작은 의자위엔 같은 모습의 바람이
			지나네 <br> 너는 떠나며 마치 날 떠나가듯이 멀리 손을 흔들며 언젠간 추억에 남겨져 갈꺼라고 <br>
			그리워하면 언젠간 만나게 되는 어느 영화와 같은 일들이 이뤄져가기를 힘겨워한 날에 너를 지킬수 없었던 아름다운 시절속에 머문
			그대이기에 <br> 너는 떠나며 마치 날 떠나가듯이 멀s리 손을 흔들며 언젠간 추억에 남겨져 갈 거라고 <br>
			그리워하면 언젠간 만나게 되는 어느 영화와 같은 일들이 이뤄져가기를 힘겨워한 날에 너를 지킬 수 없었던 아름다운 시절속에
			머문 그대여 <br> 그리워하면 언젠간 만나게 되는 어느 영화와 같은 일들이 이뤄져가기를 힘겨워한 날에 너를 지킬수
			없었던 아름다운 시절속에 머문 그대여 <br> 그리워하면 언젠간 만나게 되는 어느 영화와 같은 일들이 이뤄져가기를
			힘겨워한 날에 너를 지킬수 없었던 아름다운 시절속에 머문 그대이기에
		</span>
	</div>
	<div class="record">
		<input type=checkbox id="chk-hear-mic"> <label
			for="chk-hear-mic">마이크 소리 듣기</label>
		<button id="recordStart">녹음</button>
		<button id="recordStop">녹음 정지/저장</button>
		<div id="sound-clips"></div>
	</div>
	<br>
	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/karaoke.js"></script>
</body>
</html>