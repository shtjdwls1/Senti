<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/playListDetail.css">
    <!-- Bootstrap Icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <title>Document</title>
</head>

<body>
    <main>
        <div class="p-3 mb-2" id="top">
            <h1 id="pitch">내 음역대</h1>
            <h1 id="senti"><img src="img/facebook.png" id="logo"> Senti</h1>
        </div>
        <br>
        <button type="button" class="btn-close" aria-label="Close" onclick="location.href='playList.jsp'"></button>
        <br>
        <div class="p-3 mb-5 bg-body rounded" id="main">
            <img id="playListThumbNail" src="img/add.png" alt="">
            <div class="d-flex">
                <strong class="text-gray-dark" id="playListTitle">재생목록이름</strong>
            </div>
            <span class="d-block" id="playListNick">소유자 : 시원</span>
            <!-- 노래 추가-->
            <div id="playListAdd" class="my-3 p-1 bg-body rounded shadow-sm">
                <div class="d-flex text-muted pt-3">
                    <a href="musicSearch.jsp"><img class="bd-placeholder-img flex-shrink-0 me-2 rounded"
                            src="img/plus.png" width="40" height="40"></a>
                    <div class="pb-3 mb-0 small lh-sm w-100">
                        <div class="d-flex justify-content-between">
                            <strong class="text-gray-dark" style="margin-top: 2%;">노래 추가</strong>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 노래 -->
        <div id="music1" class="my-1 p-1 bg-body rounded shadow-sm">
            <div class="d-flex text-muted pt-3">
                <a href="musicSearchDetail.html">
                    <img class="bd-placeholder-img flex-shrink-0 me-2 rounded" src="img/add.png" width="40" height="40">
                </a>
                <div class="pb-3 mb-0 small lh-sm w-100">
                    <div class="d-flex justify-content-between">
                        <a href="musicSearchDetail.html">
                            <strong class="text-gray-dark" id="title">노래제목</strong>
                        </a>
                    </div>
                    <span class="d-block" id="singer" style="float: left;">가수이름 · </span>
                    <span class="d-block" id="times">&nbsp;노래길이</span>
                </div>

            </div>
        </div>
        <!-- 하단 네비게이션 -->
        <ul class="nav fixed-bottom nav-pills justify-content-center">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="playList.jsp">플레이리스트</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">음역대측정</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="musicSearch.jsp">노래검색</a>
            </li>
            <li class="nav-item">
                <a class="nav-link">프로필</a>
            </li>
        </ul>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/playListDetail.js"></script>
</body>

</html>