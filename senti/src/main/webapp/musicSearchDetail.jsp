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
    <!-- Bootstrap Icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/musicSearchDetail.css">
    <title>Document</title>
</head>

<body>
    <div class="p-3 mb-2" id="top">
        <h1 id="pitch">내 음역대</h1>
        <h1 id="senti"><img src="img/facebook.png" id="logo"> Senti</h1>
    </div>
    <br>
    <button type="button" class="btn-close" aria-label="Close" onclick="location.href='musicSearch.jsp'"></button>
    <br>
    <!-- <div>
        <input id="musicSearch" class="form-control me-2 w-75 h-25 d-inline-block" type="search"
            placeholder="노래, 아티스트 검색" aria-label="Search" style="visibility: hidden;">
    </div> -->
    <!-- 노래 검색하면 뜸 -->
    
    <!-- 노래 디테일 -->
    <main>
        <hr style="visibility: hidden;">
        <div class="card" style="width: 18rem;">
            <img src="img/album.jpg" class="card-img-top" alt="...">

            <div class="card-body">
                <h5 class="card-title"  id= "title">봄여름가을겨울</h5>
                <p class="card-text" id= "singer">빅뱅</p>
                <p class="card-text"  id= "genre">장르 : </p>
                <p class="card-text"  id= "singer">음역대 : </p>
                <p class="card-text">내 음역대와 비교 : </p>
                
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    가사
                </button>

                <!-- Modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">봄여름가을겨울</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                이듬해 질 녘 꽃 피는 봄 한여름 밤의 꿈
                                가을 타 겨울 내릴 눈 일 년 네 번 또다시 봄
                                정들었던 내 젊은 날 이제는 안녕
                                아름답던 우리의 봄 여름 가을 겨울
                                (Four seasons with no reason)
                                비 갠 뒤에 비애 대신 a happy end
                                비스듬히 씩 비웃듯 칠색 무늬의 무지개
                                철없이 철 지나 철들지 못해 (still)
                                철부지에 철 그른지 오래
                                Marchin' 비발디, 차이코프스키
                                오늘의 사계를 맞이해 (boy)
                                마침내, 마치 넷이 못내
                                저 하늘만 바라보고서
                                사계절 잘 지내고 있어, goodbye
                                떠난 사람 또 나타난 사람
                                머리 위 저세상, 난 떠나 영감의 amazon
                                지난 밤의 트라우마 다 묻고
                                목숨 바쳐 달려올 새 출발 하는 왕복선
                                변할래 전보다는 더욱더
                                좋은 사람 더욱더, 더 나은 사람 더욱더
                                아침 이슬을 맞고 (내 안에)
                                내 안에 분노 과거에 묻고
                                For life, do it away, away, away
                                울었던 웃었던 소년과 소녀가 그리워 나
                                찬란했던 사랑했던 그 시절만 자꾸 기억나
                                계절은 날이 갈수록 속절없이 흘러
                                붉게 물들이고 파랗게 멍들어 가슴을 훑고
                                언젠가 다시 올 그날 그때를 위하여 (그대를 위하여)
                                아름다울 우리의 봄 여름 가을 겨울
                                La, la-la-la-la, la-la-la-la, la, la
                                La, la-la-la-la, la-la-la-la, la, la
                                La, la-la-la-la, la-la-la-la, la, la
                                La, la-la-la-la, la-la-la-la, la, la
                                이듬해 질 녘 꽃 피는 봄 한여름 밤의 꿈 (음)
                                가을 타 겨울 내린 눈 봄 여름 가을 겨울 (우)
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
        <audio src="봄여름가을겨울.mp3" controls></audio>
    </main>
    <!-- 하단 네비게이션 -->
    <ul class="nav fixed-bottom nav-pills justify-content-center">
        <li class="nav-item">
            <a class="nav-link" href="playList.html">플레이리스트</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">음역대측정</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="musicSearch.html" aria-current="page">노래검색</a>
        </li>
        <li class="nav-item">
            <a class="nav-link">프로필</a>
        </li>
    </ul>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/musicSearchDetail.js"></script>
</body>

</html>