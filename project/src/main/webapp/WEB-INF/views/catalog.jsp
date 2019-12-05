<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">
</head>
<body>

<nav class="navbar navbar-expand-lg" id="navbar-main">
    <a class="navbar-brand" href="index.html"><img src="resources/images/logo.png" id="logo"></a>
    <button class="navbar-toggler" onclick="location.href='catalog.html'">
        <i class="fa fa-th-list" aria-hidden="true"></i>
    </button>
    <div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-value="about" href="catalog.html">Каталог</a>
            </li>
        </ul>
    </div>
</nav>

<div class="blog">
    <div class="container">
        <div class="row">
            <c:forEach var="list" items="${list}">
                <div class="col-lg-3 col-md-4 col-6 mb-5">
                    <div class="card">
                        <p class="course-title">${list.title}</p>
                        <div class="text-center">
                            <img src="resources/images/products/${list.id}.jpg" class="catalog-image">
                        </div>
                        <div class="card-footer">
                            <a href="" class="card-link">Подробнее...</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-12 mb-4">
                Наш адрес: Республика Беларусь, 220036<br/>
                г. Минск, 3-й Загородный переулок, 4в<br/><br/>

                www.nikis.by<br/>
                www.nikis-product.ru
            </div>
            <div class="col-md-6 col-12">
                Партнеры<br/>
                <img src="resources/images/p15.png" class="partner">
                <img src="resources/images/p3.png" class="partner">
                <img src="resources/images/p4.png" class="partner">
                <img src="resources/images/p5.png" class="partner">
                <img src="resources/images/p6.png" class="partner">
                <img src="resources/images/p14.png" class="partner">
                <img src="resources/images/p8.png" class="partner">
                <br/>
                <img src="resources/images/p9.png" class="partner">
                <img src="resources/images/p10.png" class="partner">
                <img src="resources/images/p11.png" class="partner">
                <img src="resources/images/p12.png" class="partner">
                <img src="resources/images/p13.png" class="partner">
                <img src="resources/images/p7.png" class="partner">
                <img src="resources/images/p1.png" class="partner">
            </div>
        </div>
    </div>
</footer>


<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>