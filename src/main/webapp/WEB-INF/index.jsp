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
    <title>BeFit- twoja aplikacja do odchudzania</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styles3.css">
</head>

<body>
<jsp:include page="/WEB-INF/navbar.jspf"/>
<div style="padding-top: 100px"></div>
<div class="container">



    <div id="slider" class="carousel slide" data-bs-ride="carousel" style="width: 100%;height: 100%;">


        <div class="carousel-indicators">
            <button type="button" data-bs-target="#slider" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#slider" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#slider" data-bs-slide-to="2"></button>

        </div>


        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://image.freepik.com/free-photo/sportswoman-sportswear-training-gym_1157-30349.jpg" class="d-block" style="height: 100%;width: 100%" >
                <div class="carousel-caption">
                    <h3>Odkryj co sprawia ci przyjemno???? i gdzie chcesz wraca?? </h3>
                    <p>Nowe miejca daj?? nowe mo??liwo??ci - warto pozna?? je wszystkie wraz z nasz?? aplikacj?? </p>
                </div>
            </div>
            <div class="carousel-item">

                <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fsbgi-pdx.com%2Fwp-content%2Fuploads%2F2019%2F01%2FSelf-Defense-vs-Krav-Maga-Portland.jpg&f=1&nofb=1" style="height: 100%;width: 100%" class="d-block" >

                <div class="carousel-caption">
                    <h3>Obro?? si?? oraz wyjd?? poza stref?? komfortu by zrealizowa?? marzenia !</h3>
                    <p>B??d?? got??w fizycznie by m??c si?? obroni?? w chwili zagro??enia ??ycia . Znaj oraz poszerzaj swoje granice staj??c si?? ci??gle lepszym ! </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://fitnessinterests.com/wp-content/uploads/2017/10/jogging_fitness_tips_by_gripped_fiteness_audio_wireless_gym_headphones_3.jpg" style="height: 100%;width: 100%" class="d-block" >
                <div class="carousel-caption">
                    <h3>Znajd?? innych kt??rzy wsp????dziel?? z tob?? twoj?? pasj??</h3>
                    <p>Ka??dy potrzebuje kogo?? bliskiego - znajomego , przyjaciela , drug?? po????wk?? kt??rzy s?? szcz????liwi gdy wsp????dziel?? w??asne pasje. Zapro?? swoich bliskich do naszej aplikacji i wsp??lnie osi??gajcie cele! </p>
                </div>
            </div>

        </div>


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
            <p class="container">Marzysz o zredukowaniu lub zwi??kszeniu swojej wagi ? Chcia??by?? zrzuci?? kilka kilogram??w jednak nie masz wiedzy oraz motywacji by to zrobi?? ? Nic nie szkodzi . Nasza aplikacja da ci motywacj?? , pozwoli obliczy?? zapotrzebowanie oraz przeliczymy
                ci na aktywno???? wprowadzon?? liczb?? kalorii . Wszystko w jednym miejscu !
            </p>
            <div class=" justify-content-sm-center">
                <a href="${pageContext.request.contextPath}/register">
                    <button type="button" class="btn btn-primary btn-lg ">Zarejestruj si??</button>
                </a>
                <a href="${pageContext.request.contextPath}/login">
                    <button type="button" class="btn btn-outline-secondary btn-lg ">Zaloguj si??</button>
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
            <h2>Lista si??owni</h2>
            <p>Wiele miast wiele miejsc wiele opinii . Nasza aplikacja pozwoli Ci wybra?? najlepsz?? z si??owni lub miejsc przeznaczonych do ??wicze?? w twoim mie??cie</p>
            <a href="${pageContext.request.contextPath}/silownie" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawd??
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#people-circle"></use></svg>
            </div>
            <h2>Sprawd?? zapotrzebowanie</h2>
            <p>Nie wiesz ile mo??esz zje???? bez obaw gdy jeste?? na redukcji ? Nic nie szkodzi . Po wpisaniu swoich danych i aktywno??ci w trakcie dnia obliczymy za ciebie twoje przybli??one zapotrzebowanie kaloryczne i Body Mass Index (BMI)</p>
            <a href="${pageContext.request.contextPath}/kalkulatorBMI" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawd??
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"></use></svg>
            </div>
            <h2>Sprawd?? kaloryczno???? posi??k??w</h2>
            <p>W tej zak??adce sprawdzisz na bazie t??uszczu bia??ka oraz cukr??w ile dany produkt ma w przybli??eniu kalorii oraz ich udzia?? procentowy w tym produkcie </p>
            <a href="#" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawd??
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
    </div>


    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#collection"></use></svg>
            </div>
            <h2>Przelicz kalori?? na aktywno????</h2>
            <p>Zjad??e?? zbyt du??o i nie wiesz ile musisz wykonywa?? ??wicze?? fizycznych by nie przybra?? na wadze ? Obliczymy to za Ciebie . Wystarczy ??e podasz ilo???? kalorii</p>
            <a href="${pageContext.request.contextPath}/kalkulatorAktywnosci" class="icon-link keychainify-checked steem-keychain-checked">
                Sprawd??
                <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"></use></svg>
            </a>
        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#people-circle"></use></svg>
            </div>
            <h2>Mierzenie swojej wagi - Tylko dla zalogowanych </h2>
            <p>Mo??esz na przestrzenii ustalonego przez ciebie czasu monitorowa?? wzrosty i spadki swojej wagi na interatywnym wykresie</p>

        </div>
        <div class="feature col">
            <div class="feature-icon bg-primary bg-gradient">
                <svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"></use></svg>
            </div>
            <h2>Plan progresu dla swojej wagi - Tylko dla zalogowanych </h2>
            <p>Masz plan do redukcji lub przybrania na wadze ? Okre??l sw??j cel i wpisuj co dziennie swoj?? wage a na interatywnym wykresie zobaczysz sw??j progres</p>

        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/footer.jspf"/>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>

</html>