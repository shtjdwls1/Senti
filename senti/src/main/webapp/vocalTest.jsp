<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/vocalTest.css">
    <title>Document</title>
</head>

<body>
    <div class="col-md-7 col-lg-8">
        <div class="p-3 mb-2" id="top">
            <h4 class="mb-3 col-lg-6">ìì­ë íì¤í¸</h4>
        </div>
    </div>
    <div class="test1">
        <button type="button" class="btn btn-success btn-lg">ì§ì  íì¤í¸</button>
    </div>
    <div class="test2">
        <input type="file" id="upload" style="display: none;">
        <button id="upload" type="button" class="btn btn-success btn-lg" onclick="onClickUpload()">ë¹ìí íì¼ ì¬ë¦¬ê¸°</button>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/vocalTest.js"></script>
</body>

</html>