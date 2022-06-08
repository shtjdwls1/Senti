<%@page import="Model.playListDTO"%>
<%@page import="Model.DTO"%>
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
		<%
		String search = request.getParameter("search");
		System.out.println("검색 키워드 : " + search);
		DAO dao = new DAO();
		ArrayList<songinfoDTO> playList = dao.SearchSong(search);
		
		DTO info = (DTO)session.getAttribute("info");
		   
		   DAO mdao = new DAO();
		   ArrayList<playListDTO> mlist = new ArrayList<playListDTO>();
		   
		   if(info != null){
				mlist = mdao.playListAdd(info);
			}
		   %>
		<hr>
		<!-- 노래 -->
		<%
		for (int i = 0; i < playList.size(); i++) {
		%>
		<div id="music1" class="shadow-sm p-1 mb-1 bg-body rounded">
			<div class="d-flex text-muted pt-1">
				<a href="musicSearchDetail.jsp?keys=<%=playList.get(i).getKeys()%>"><img
					class="bd-placeholder-img flex-shrink-0 me-2 rounded"
					src="<%=playList.get(i).getAlbumimg()%>" width="64" height="64"></a>
				<div class="pb-3 mb-0 small lh-sm w-100">
					<div class="d-flex justify-content-between">
						<a
							href="musicSearchDetail.jsp?keys=<%=playList.get(i).getKeys()%>">
							<strong class="text-gray-dark" id="title" name=""> <%=playList.get(i).getTitle()%></strong>
						</a>
					</div>
					<div class="d-flex justify-content-between">
						<span class="d-block" id="singer"> <%=playList.get(i).getSinger()%>
						</span>
					</div>
					<!-- <button id="playListAdd" class="btn btn-primary w-25"  type="button">Button</button> -->
				</div>
				<!-- 플레이리스트 추가 modal -->
				<button type="button" class="bi bi-plus-lg fs-1" data-bs-toggle="modal"
					data-bs-target="#playList"></button>
				<!-- Modal -->
				<div class="modal fade" id="playList" data-bs-backdrop="static"
					data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">플레이리스트 목록</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
							<%for(int p=0; p<mlist.size(); p++){ %>
								<div id="music" class="my-1 p-1 bg-body rounded shadow-sm">
									<div class="d-flex text-muted pt-3">
										<a href=""> <img
											class="bd-placeholder-img flex-shrink-0 me-2 rounded"
											src="img/add.png" id="musicAdd">
										</a>
										<div class="pb-3 mb-0 small lh-sm w-100">
											<div class="d-flex justify-content-between">
												<a href=""> <strong class="text-gray-dark" id="title"><%= mlist.get(p).getPname() %></strong>
												</a>
											</div>
											<span class="d-block" id="singer" style="float: left;">노래
												: 0곡 </span>
										</div>
										<div>
											<button id="musicPlus" class="bi bi-plus-lg fs-1"></button>
										</div>
									</div>
								</div>
							<%} %>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%
		}
		%>
		<!-- 하단 네비게이션 -->
		<ul class="nav fixed-bottom nav-pills justify-content-center">
			<li class="nav-item"><a class="nav-link" href="playList.jsp">플레이리스트</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="vocalTest.jsp">음역대측정</a></li>
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