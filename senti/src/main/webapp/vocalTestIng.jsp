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
<link rel="stylesheet" href="css/vocalTestIng.css">
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
	<h1 class="display-5 fw-bold lh-1 mb-1" style="text-align: center;">음역대
		테스트</h1>
	<div class="container col-xxl-8 px-4 py-5">
		<div class="row flex-lg-row-reverse align-items-center g-5 py-5">
			<div class="controls__btns">
				<button id="btnLow">최저 음역 테스트</button>
				<button id="btnHigh">최고 음역 테스트</button>
			</div>
			<!-- 최저음 테스트 -->
			<div class="vocalTestLow shadow p-3 mb-2 bg-body rounded">
				<!-- 비디오  -->
				<video id="vocalTestLowVideo" src="video/low.mp4" controls></video>
			</div>
			<!-- 최고음 테스트 -->
			<div class="vocalTestHigh hidden shadow p-3 mb-2 bg-body rounded">
				<!-- 비디오 -->
				<video id="vocalTestHighVideo" src="video/high.mp4" controls></video>
			</div>
			<form action="" class="userInfo">
				<div id="select">
					<select name="lowSelect">
						<option selected>최저 음역 입력</option>
						<option value="25">C3</option>
						<option value="27">D3</option>
						<option value="29">E3</option>
						<option value="30">F3</option>
						<option value="32">G3</option>
						<option value="34">A3</option>
						<option value="36">B3</option>
						<option value="37">C4</option>
						<option value="39">D4</option>
						<option value="41">E4</option>
						<option value="42">F4</option>
						<option value="44">G4</option>
					</select> <select name="highSelect">
						<option selected>최고 음역 입력</option>
						<option value="37">C4</option>
						<option value="39">D4</option>
						<option value="41">E4</option>
						<option value="42">F4</option>
						<option value="44">G4</option>
						<option value="46">A4</option>
						<option value="48">B4</option>
						<option value="49">C5</option>
						<option value="51">D5</option>
						<option value="53">E5</option>
						<option value="54">F5</option>
						<option value="56">G5</option>
						<option value="58">A5</option>
						<option value="60">B5</option>
						<option value="61">C6</option>
					</select>
				</div>
				<div id="checkbox" class="shadow-sm p-1 mb-1 bg-body rounded">
					<h5>선호하는 장르</h5>
					<input type="checkbox" name='genres' value="ballad"> 발라드 <input
						type="checkbox" name='genres' value="soul"> R&B/소울 <input
						type="checkbox" name='genres' value="ost"> OST <input
						type="checkbox" name='genres' value="danse"> 댄스 <input
						type="checkbox" name='genres' value="rock"> 락
				</div>
				<button type="submit" class="btn btn-primary">음역대 측정하기</button>
			</form>
		</div>
	</div>
	<!-- 하단 네비게이션 -->
	<div class="nav fixed-bottom">
		<ul class="nav nav-pills justify-content-center">
			<li class="nav-item"><a class="nav-link" href="playList.jsp">플레이리스트</a></li>
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="vocalTest.jsp">음역대측정</a></li>
			<li class="nav-item"><a class="nav-link" href="musicSearch.jsp">노래검색</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="LogoutServiceCon">로그아웃</a></li>
		</ul>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/vocalTestIng.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>