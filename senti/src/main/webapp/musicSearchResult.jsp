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
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/musicSearchResult.css">
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
		<div>
			<form class="musicSearch" action="musicSearchResult.jsp">
				<input id="musicSearchInput"
					class="form-control me-2 d-inline-block" type="search"
					name="search" placeholder="노래, 아티스트 검색" aria-label="Search">
				<input id="musicSearchSubmit" type="submit"
					class="btn btn-outline-primary h-25 d-inline-block" value="입력"></input>
			</form>
		</div>
		<!-- 노래 검색하면 뜸 -->
		<% String search = request.getParameter("search");
               System.out.println("검색 키워드 :"+search);
               DAO dao = new DAO();
               ArrayList<songinfoDTO> playList = dao.SearchSong(search);
                 
              %>

		<hr>
		<!-- 노래 -->
		<% for(int i = 0 ; i < playList.size() ; i++) {%>
		<div id="music1" class="h-50 shadow-none p-1 mb-1 bg-light rounded">
			<div class="d-flex text-muted pt-3">
				<a href="musicSearch.jsp"><img
					class="bd-placeholder-img flex-shrink-0 me-2 rounded"
					src="<%=playList.get(i).getAlbumimg() %>" width="40" height="40"></a>
				<div class="pb-3 mb-0 small lh-sm w-100">
					<div class="d-flex justify-content-between">
						<a href="musicSearchDetail.html"> <strong
							class="text-gray-dark" id="title"><%=playList.get(i).getTitle() %></strong>
						</a>
					</div>
					<span class="d-block" id="singer" style="float: left;"> <%=playList.get(i).getSinger() %>
					</span>
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button class="btn btn-primary w-25" type="button">Button</button>
					</div>
				</div>
			</div>
		</div>
		<% } %>

		<!-- 하단 네비게이션 -->
		<ul class="nav fixed-bottom nav-pills justify-content-center">
			<li class="nav-item"><a class="nav-link" href="playList.jsp">플레이리스트</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">음역대측정</a></li>
			<li class="nav-item"><a class="nav-link active"
				href="musicSearch.jsp" aria-current="page">노래검색</a></li>
			<li class="nav-item"><a class="nav-link">프로필</a></li>
		</ul>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/musicSearchResult.js"></script>
</body>

</html>