<%@page import="Model.songinfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DAO"%>
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
	<%
	String keys = request.getParameter("keys");

	DAO dao = new DAO();
	ArrayList<songinfoDTO> dto = new ArrayList<songinfoDTO>();
	dto = dao.detail(keys);
	%>
	
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
		<h3 id="title"><%=dto.get(0).getTitle()%></h3>
		<span id="singer"><%=dto.get(0).getSinger()%></span> <img id="albumimg" src="<%=dto.get(0).getAlbumimg()%>">
		<audio id="music" src="music/neverendingstory.mp3" controls></audio>
	</div>
	<div class="shadow-sm p-1 mb-1 bg-body rounded" id="lyrics">
		<span>
		<%=dto.get(0).getLyrics()%>
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