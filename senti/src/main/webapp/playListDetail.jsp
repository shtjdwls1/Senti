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
<link rel="stylesheet" href="css/playListDetail.css">
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<title>Document</title>
</head>

<body>
	<main>
		<div class="p-3 mb-2" id="top">
			<h1 id="pitch">내 음역대</h1>
			<h1 id="senti">
				<img src="img/facebook.png" id="logo"> Senti
			</h1>
		</div>
		<br>
		<button type="button" class="btn-close" aria-label="Close"
			onclick="location.href='playList.jsp'"></button>
		<br>
		<div class="shadow p-3 mb-5 bg-body rounded" id="main">
			<img id="playListThumbNail" src="img/add.png" alt="">
			<div class="d-flex justify-content-between">
				<strong class="text-gray-dark" id="playListTitle">재생목록이름</strong>
				<!-- 재생목록 수정  -->
				<form class="playListTitleUpdate hidden" action="">
					<input id="playListTitleUpdateInput"
						class="form-control me-2 d-inline-block" type="search"
						name="search" placeholder="" aria-label="Search"> <input
						id="playListTitleUpdateSubmit" type="submit"
						class="btn btn-outline-primary d-inline-block" value="입력"></input>
				</form>
				
			</div>
			<div class="d-flex justify-content-between">
				<span class="d-block" id="">노래 : 0곡</span>
			</div>
			<div>
				<a id="musicPlus" href="musicSearch.jsp">
					<button type="button" class="bi bi-plus-lg fs-1"
						title="노래 추가"></button>
				</a>
				<button type="button" class="bi bi-pencil fs-2" id="btnUpdate"
					title="재생목록이름 수정"></button>
			</div>
		</div>
		<br>
		<hr>
		<!-- 노래 -->
		<div id="music1" class="my-1 p-1 bg-body rounded shadow-sm">
			<div class="d-flex text-muted pt-3">
				<a href="musicSearchDetail.jsp"> <img
					class="bd-placeholder-img flex-shrink-0 me-2 rounded"
					src="img/add.png" width="40" height="40">
				</a>
				<div class="pb-3 mb-0 small lh-sm w-100">
					<div class="d-flex justify-content-between">
						<a href="musicSearchDetail.jsp"> <strong
							class="text-gray-dark" id="title">노래제목</strong>
						</a>
					</div>
					<span class="d-block" id="singer" style="float: left;">가수이름
						· </span> <span class="d-block" id="times">&nbsp;노래길이</span>
				</div>

			</div>
		</div>
		<!-- 하단 네비게이션 -->
		<ul class="nav fixed-bottom nav-pills justify-content-center">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="playList.jsp">플레이리스트</a></li>
			<li class="nav-item"><a class="nav-link" href="#">음역대측정</a></li>
			<li class="nav-item"><a class="nav-link" href="musicSearch.jsp">노래검색</a>
			</li>
			<li class="nav-item"><a class="nav-link">프로필</a></li>
		</ul>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/playListDetail.js"></script>
</body>

</html>