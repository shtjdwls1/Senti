<%@page import="Model.DTO"%>
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
<link rel="stylesheet" href="css/vocalTestResult.css">
<title>Document</title>
</head>
<body>
	<%
	DTO info = (DTO) session.getAttribute("info");
	%>
	<div class="p-3 mb-2" id="top">
		<a href="./playList.jsp">
			<h1 id="senti">
				<img src="img/facebook.png" id="logo"> Senti
			</h1>
		</a>
	</div>
	<div class="container col-xxl-8 px-4 py-5">
		<div class="row flex-lg-row-reverse align-items-center g-5 py-4">
			<div class="vocalTestResult">
				<div>
					<h2><%=info.getNick()%>님의 음역대는
					</h2>
				</div>
				<div id="Result">
					<h1>
						<strong><%=info.getLow()%>~<%=info.getHigh()%></strong>
					</h1>
					<span> 남자의 평균 음역대(2옥타브 라(A4))<br> 보다 높습니다!
					</span>
					<!-- <span> 여자의 평균 음역대(3옥타브 레(D5))<br> 보다 높습니다!</span> -->
				</div>
			</div>
			<h1 style="font-size: 27px; text-align: center; margin-top: 15px;">추천
				노래</h1>
			<!-- 최저음 테스트 -->
			<div class="musicRecom shadow p-1 mb-1 bg-body rounded">
				<div id="music" class="my-1 p-1 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<a href=""> <img
							class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							src="img/add.png" id="musicAdd">
						</a>
						<div class="pb-3 mb-0 small lh-sm w-100">
							<div class="d-flex justify-content-between">
								<a href=""> <strong class="text-gray-dark" id="title">노래제목</strong>
								</a>
							</div>
							<span class="d-block" id="singer" style="float: left;">가수이름</span>
							<span class="d-block" id="singer" style="float: left;">&nbsp﻿·&nbsp﻿</span>
							<span class="d-block" id="times" style="float: left;">노래길이</span>
						</div>
						<div>
							<button id="musicDelete" class="bi bi-x-lg fs-1 hidden"></button>
						</div>
					</div>
				</div>
				<div id="music" class="my-1 p-1 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<a href=""> <img
							class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							src="img/add.png" id="musicAdd">
						</a>
						<div class="pb-3 mb-0 small lh-sm w-100">
							<div class="d-flex justify-content-between">
								<a href=""> <strong class="text-gray-dark" id="title">노래제목</strong>
								</a>
							</div>
							<span class="d-block" id="singer" style="float: left;">가수이름</span>
							<span class="d-block" id="singer" style="float: left;">&nbsp﻿·&nbsp﻿</span>
							<span class="d-block" id="times" style="float: left;">노래길이</span>
						</div>
						<div>
							<button id="musicDelete" class="bi bi-x-lg fs-1 hidden"></button>
						</div>
					</div>
				</div>
				<div id="music" class="my-1 p-1 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<a href=""> <img
							class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							src="img/add.png" id="musicAdd">
						</a>
						<div class="pb-3 mb-0 small lh-sm w-100">
							<div class="d-flex justify-content-between">
								<a href=""> <strong class="text-gray-dark" id="title">노래제목</strong>
								</a>
							</div>
							<span class="d-block" id="singer" style="float: left;">가수이름</span>
							<span class="d-block" id="singer" style="float: left;">&nbsp﻿·&nbsp﻿</span>
							<span class="d-block" id="times" style="float: left;">노래길이</span>
						</div>
						<div>
							<button id="musicDelete" class="bi bi-x-lg fs-1 hidden"></button>
						</div>
					</div>
				</div>
				<div id="music" class="my-1 p-1 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<a href=""> <img
							class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							src="img/add.png" id="musicAdd">
						</a>
						<div class="pb-3 mb-0 small lh-sm w-100">
							<div class="d-flex justify-content-between">
								<a href=""> <strong class="text-gray-dark" id="title">노래제목</strong>
								</a>
							</div>
							<span class="d-block" id="singer" style="float: left;">가수이름</span>
							<span class="d-block" id="singer" style="float: left;">&nbsp﻿·&nbsp﻿</span>
							<span class="d-block" id="times" style="float: left;">노래길이</span>
						</div>
						<div>
							<button id="musicDelete" class="bi bi-x-lg fs-1 hidden"></button>
						</div>
					</div>
				</div>
				<div id="music" class="my-1 p-1 bg-body rounded shadow-sm">
					<div class="d-flex text-muted pt-3">
						<a href=""> <img
							class="bd-placeholder-img flex-shrink-0 me-2 rounded"
							src="img/add.png" id="musicAdd">
						</a>
						<div class="pb-3 mb-0 small lh-sm w-100">
							<div class="d-flex justify-content-between">
								<a href=""> <strong class="text-gray-dark" id="title">노래제목</strong>
								</a>
							</div>
							<span class="d-block" id="singer" style="float: left;">가수이름</span>
							<span class="d-block" id="singer" style="float: left;">&nbsp﻿·&nbsp﻿</span>
							<span class="d-block" id="times" style="float: left;">노래길이</span>
						</div>
						<div>
							<button id="musicDelete" class="bi bi-x-lg fs-1 hidden"></button>
						</div>
					</div>
				</div>
			</div>
			<!-- 최고음 테스트 -->
			<div class="col-lg-6" style="margin-top: 25px;">
				<div class="d-flex gap-2 d-md-flex justify-content-md-start"
					style="width: 77%; margin: auto;">
					<button type="button" class="btn btn-warning col-6"
						style="color: white;">다시 추천받기</button>
					<button type="button" class="btn btn-primary col-6">플레이리스트
						만들기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 하단 네비게이션 -->
	<div class="nav fixed-bottom"
		style="font-size: 13; background-color: white; border: 1px solid darkgray; font-size: 14px;">
		<ul class="nav nav-pills justify-content-center">
			<li class="nav-item"><a class="nav-link  active"
				href="vocalTest.jsp">음역대측정</a></li>
			<li class="nav-item"><a class="nav-link" href="playList.jsp">플레이리스트</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="musicSearch.jsp"
				aria-current="page">노래검색</a></li>
			<li class="nav-item"><a class="nav-link" href="myPage.jsp">마이페이지</a></li>
		</ul>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/vocalTestResult.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>