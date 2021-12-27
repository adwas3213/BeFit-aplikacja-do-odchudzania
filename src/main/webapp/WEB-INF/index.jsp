<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 27.12.2021
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styles3.css">
</head>

<body>
<jsp:include page="/WEB-INF/navbar.jspf"/>
<div style="padding-top: 100px"></div>
<div class="container">


    <!-- Carousel -->
    <div id="slider" class="carousel slide" data-bs-ride="carousel">

        <!-- Indicators/dots -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#slider" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#slider" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#slider" data-bs-slide-to="2"></button>

        </div>

        <!-- The slideshow/carousel -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://image.freepik.com/free-photo/sportswoman-sportswear-training-gym_1157-30349.jpg" class="d-block" style="width:100%">
                <div class="carousel-caption">
                    <h3>Odkryj co sprawia ci przyjemność i gdzie chcesz wracać </h3>
                    <p>Nowe miejca dają nowe możliwości - warto poznać je wszystkie wraz z naszą aplikacją </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fsbgi-pdx.com%2Fwp-content%2Fuploads%2F2019%2F01%2FSelf-Defense-vs-Krav-Maga-Portland.jpg&f=1&nofb=1" class="d-block" style="width:100%">
                <div class="carousel-caption">
                    <h3>Obroń się oraz wyjdź poza strefę komfortu by zrealizować marzenia !</h3>
                    <p>Bądź gotów fizycznie by móc się obronić w chwili zagrożenia życia . Znaj oraz poszerzaj swoje granice stając się ciągle lepszym ! </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://fitnessinterests.com/wp-content/uploads/2017/10/jogging_fitness_tips_by_gripped_fiteness_audio_wireless_gym_headphones_3.jpg" class="d-block" style="width:100%">
                <div class="carousel-caption">
                    <h3>Znajdź innych którzy współdzielą z tobą twoją pasję</h3>
                    <p>Każdy potrzebuje kogoś bliskiego - znajomego , przyjaciela , drugą połówkę którzy są szczęśliwi gdy współdzielą własne pasje. Zaproś swoich bliskich do naszej aplikacji i wspólnie osiągajcie cele! </p>
                </div>
            </div>

        </div>

        <!-- Left and right controls/icons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#slider" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#slider" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>


    <div class="text-center " style="text-align: center; align-items: center;">

        <h1 class=" fw-bold text-center">BeFit - Twoja aplikacja do odchudzania! </h1>
        <div class=" text-center">
            <p class="container">Marzysz o zredukowaniu lub zwiększeniu swojej wagi ? Chciałbyś zrzucić kilka kilogramów jednak nie masz wiedzy oraz motywacji by to zrobić ? Nic nie szkodzi . Nasza aplikacja da ci motywację , pozwoli obliczyć zapotrzebowanie oraz przeliczymy
                ci na aktywność wprowadzoną liczbę kalorii . Wszystko w jednym miejscu !
            </p>
            <div class=" justify-content-sm-center">
                <a href="${pageContext.request.contextPath}/register">
                    <button type="button" class="btn btn-primary btn-lg ">Zarejestruj się</button>
                </a>
                <a href="${pageContext.request.contextPath}/login">
                    <button type="button" class="btn btn-outline-secondary btn-lg ">Zaloguj się</button>
                </a>

            </div>
        </div>

    </div>
</div>


<div class="container px-4 py-5" id="featured-3">

    <h2 class="pb-2 border-bottom">Nasze produkty</h2>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#collection"></use></svg>
            </div>
            <h2>Lista siłowni</h2>
            <p>Wiele miast wiele miejsc wiele opinii . Nasza aplikacja pozwoli Ci wybrać najlepszą z siłowni lub miejsc przeznaczonych do ćwiczeń w twoim mieście</p>
            <a href="${pageContext.request.contextPath}/silownie" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawdź
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#people-circle"></use></svg>
            </div>
            <h2>Sprawdź zapotrzebowanie</h2>
            <p>Nie wiesz ile możesz zjeść bez obaw gdy jesteś na redukcji ? Nic nie szkodzi . Po wpisaniu swoich danych i aktywności w trakcie dnia obliczymy za ciebie twoje przybliżone zapotrzebowanie kaloryczne i Body Mass Index (BMI)</p>
            <a href="${pageContext.request.contextPath}/kalkulatorBMI" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawdź
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"></use></svg>
            </div>
            <h2>Sprawdź kaloryczność posiłków</h2>
            <p>W tej zakładce sprawdzisz na bazie tłuszczu białka oraz cukrów ile dany produkt ma w przybliżeniu kalorii oraz ich udział procentowy w tym produkcie </p>
            <a href="#" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawdź
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
    </div>


    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#collection"></use></svg>
            </div>
            <h2>Przelicz kalorię na aktywność</h2>
            <p>Zjadłeś zbyt dużo i nie wiesz ile musisz wykonywać ćwiczeń fizycznych by nie przybrać na wadze ? Obliczymy to za Ciebie . Wystarczy że podasz ilość kalorii</p>
            <a href="${pageContext.request.contextPath}/kalkulatorAktywnosci" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawdź
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#people-circle"></use></svg>
            </div>
            <h2>Mierzenie swojej wagi - Tylko dla zalogowanych </h2>
            <p>Możesz na przestrzenii ustalonego przez ciebie czasu monitorować wzrosty i spadki swojej wagi na interatywnym wykresie</p>

        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"></use></svg>
            </div>
            <h2>Plan progresu dla swojej wagi - Tylko dla zalogowanych </h2>
            <p>Masz plan do redukcji lub przybrania na wadze ? Określ swój cel i wpisuj co dziennie swoją wage a na interatywnym wykresie zobaczysz swój progres</p>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/footer.jspf"/>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>

</html>