<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">
</head>
<body>

<nav class="navbar navbar-expand-lg fixed-top index-nav" id="navbar-main">
    <a class="navbar-brand" href="#"><img src="resources/images/logo.png" id="logo"></a>
</nav>
<header class="header">
    <div class="container">
        <div class="description text-center">
            <h1 class="text-center">Классика в новом исполнении</h1>
            <p>
                Объемные терки НИКИС имеют четыре режущие поверхности. Они подходят для любых пищевых продуктов и не
                окисляют их. Так же в ассортименте компании НИКИС представлен широкий выбор плоских терок для
                овощей. Данные изделия удобны в использовании на даче, на природе, а также являются идеальными при
                проведении акционных мероприятий.
            </p>
            <button onclick="location.href='${pageContext.request.contextPath}/catalog'">Каталог</button>
        </div>
    </div>
</header>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
