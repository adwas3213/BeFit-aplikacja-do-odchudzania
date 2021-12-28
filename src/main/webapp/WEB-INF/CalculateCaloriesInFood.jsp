<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 28.12.2021
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styles3.css">
    <title>Sprawdź kaloryczność posiłków</title>
    <style>
        .row>.card {
            width: 19.1rem;
        }
    </style>
</head>


<body style="overflow-x: hidden;">
<jsp:include page="/WEB-INF/navbar.jspf"/>

<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
        <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 mb-3">Sprawdź kaloryczność swojego posiłku</h1>
            <p class="col-lg-10 fs-4">Jeśli kiedykolwiek zastanawiałeś się ile zjadasz kalorii w jednej porcji
                pożywienia to to jest odpowiednie miejsce gdzie możesz to sprawdzić.
                Na bazie informacji które podasz czyli ile znajduje się gramów białka , tłuszczu oraz węglowodanów w
                porcji pożywienia oraz jaka duża jest porcja posiłku obliczę dla ciebie sumaryczną ilość kalorii oraz ich
                skład procentowy w tym produkcie </p>
        </div>
        <div class="col-md-10 mx-auto col-lg-5">
            <form class="p-4 p-md-5 border rounded-3 bg-light" name="dataForm" onsubmit="return checkIfPercentageSumUpToProductWeight()" method="post" action="${pageContext.request.contextPath}/sprawdzKalorycznoscPosilkow">
                <p>Podaj ile danych składników znajduje się w 100 gram produktu</p>
                <div class="form-floating mb-3">
                    <input type="text" name="name"  required class="form-control" id="name"  placeholder="chleb">
                    <label for="name">Nazwa produktu</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="number" name="carbohydrates" step="0.1"  required class="form-control" id="carbohydrates" min="0" max="100" placeholder="40.0">
                    <label for="carbohydrates">Ilość węglowodanów</label>

                </div>
                <div class="form-floating mb-3">
                    <input type="number" name="fat" step="0.1" required class="form-control" id="fat" min="0" max="100" placeholder="20.0">
                    <label for="fat">Ilość tłuszczy</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="number" name="nutreins" step="0.1" required class="form-control" id="nutreins" min="0" max="100" placeholder="40.0">
                    <label for="nutreins">Ilość białek</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="number" name="grams" step="0.1" required class="form-control" id="grams" min="0.1" placeholder="250.0">
                    <label for="grams">Ilość produktu w gramach</label>
                </div>
                <input id="submitButton" class="w-100 btn btn-lg btn-primary" type="submit">
            </form>
        </div>
    </div>
</div>
<c:if test="${requestScope.dish!=null}">
<div class="container ">
    <div class="card ">
        <div class="card-body">
            <h5 class="card-title text-center">Twój posiłek który wprowadziłeś to <strong>${requestScope.dish.nameOfProduct}</strong> </h5>
            <p class="card-text text-center">Z danych wprowadzonych przez ciebie wynika że wartość energetyczna produktu
                składa się w ${requestScope.dish.percentageOfCarbohydrantes}% z węglowodanów , w ${requestScope.dish.percentageOfFat}% z tłuszczu
              oraz  w ${requestScope.dish.percentageOfNutreins}% z białek. Poniżej będziesz miał dokładniejsze informację odnośnie liczby kalorii przypadających na dany makroskładnik w tym produkcie</p>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Wartość energetyczna produktu składa się w ${requestScope.dish.percentageOfNutreins}% z białek to posiada tylko z tych białek ${requestScope.dish.caloriesInNutreinsInThatPeaceOfFood} kalorii w ${requestScope.dish.weightOfProduct} gramach</li>
            <li class="list-group-item">Wartość energetyczna produktu składa się w ${requestScope.dish.percentageOfCarbohydrantes}% z węglowodanów to posiada tylko z tych węglowodanów ${requestScope.dish.caloriesInCarbohydratesInThatPeaceOfFood} kalorii w ${requestScope.dish.weightOfProduct} gramach</li>
            <li class="list-group-item">Wartość energetyczna produktu składa się w ${requestScope.dish.percentageOfFat}% z tłuszczu to posiada tylko z tego tłuszczu ${requestScope.dish.caloriesInFatInThatPeaceOfFood} kalorii w ${requestScope.dish.weightOfProduct} gramach</li>


        </ul>
        <div class="card-body">
            <p>Suma kalorii w takim wypadku jest równa ${requestScope.dish.summaryCalories} w ${requestScope.dish.weightOfProduct} gramach</p>
        </div>
    </div>
</div>
</c:if>
<script>
    function checkIfPercentageSumUpToProductWeight() {
        let nutreins = parseFloat(document.forms["dataForm"]["nutreins"].value);
        let fat = parseFloat(document.forms["dataForm"]["fat"].value);
        let carbohydrates = parseFloat(document.forms["dataForm"]["carbohydrates"].value);
        let grams = parseFloat(document.getElementById("grams").value);
        console.log(nutreins+fat+carbohydrates);
        if (nutreins + fat + carbohydrates > 100) {
            alert("Suma składników pożywienia w 100 gramach jest większa od 100 gramów więc źle wprowadziłeś dane");
            return false;
        }
    }
</script>
<h2 class="pb-2 text-center border-bottom">Przykładowa kaloryczność składników :</h2>
<div class="card" style="width: fit-content;">


    <div class="row" style="width: fit-content;">
        <div class="card">
            <img src="https://agro-market24.pl/uploads/photos/1225/sprzedam_ziemniaki-%C5%9Bwie%C5%BCe-ziemniaki-_agromarket_gie%C5%82da%20rolna-564636-1225.JPG" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Ziemniaki</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 18 gram</li>
                <li class="list-group-item">Białko: 2 gram</li>
                <li class="list-group-item">Tłuszcz : 0 gram</li>
            </ul>

        </div>
        <div class="card">
            <img src="https://cdn.galleries.smcloud.net/t/galleries/gf-4Mo5-uPSk-WnPj_banany-wlasciwosci-i-wartosci-odzywcze-jakie-witaminy-maja-banany-1920x1080-nocrop.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Banany</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 23,5 gram</li>
                <li class="list-group-item">Białko: 1 gram</li>
                <li class="list-group-item">Tłuszcz : 0,3 gram</li>
            </ul>

        </div>

        <div class="card">
            <img src="http://sklep.swiatkwiatow.pl/images/detailed/28/brzoskwinia-harnas.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Brzoskwinia</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 11,9 gram</li>
                <li class="list-group-item">Białko: 1 gram</li>
                <li class="list-group-item">Tłuszcz : 0,2 gram</li>
            </ul>

        </div>

        <div class="card">
            <img src="https://s-shop.com.pl/img/products/79/2/1_max.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Chipsy paprykowe</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 50,4 gram</li>
                <li class="list-group-item">Białko: 6 gram</li>
                <li class="list-group-item">Tłuszcz : 40 gram</li>
            </ul>

        </div>

        <div class="card">
            <img src="https://e-delikatesydwojka.pl//app/uploads/2019/11/chleb-zwyk-bednarczyk-1.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Chleb zwykły</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 57 gram</li>
                <li class="list-group-item">Białko: 5,4 gram</li>
                <li class="list-group-item">Tłuszcz : 1,3 gram</li>
            </ul>

        </div>

        <div class="card">
            <img src="http://zdrowyszop.pl/img/czekolada-mleczna-milka.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Czekolada mleczna</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 54,7 gram</li>
                <li class="list-group-item">Białko: 9,8 gram</li>
                <li class="list-group-item">Tłuszcz : 32,8 gram</li>
            </ul>

        </div>

        <div class="card">
            <img src="https://www.przyslijprzepis.pl/media/cache/big/uploads/media/recipe/0008/20/kotlety-z-piersi-kurczaka-panierowane-w-platkach-drozdzowych.jpeg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Kotlet z kurczaka smażony panierowany</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 7,6 gram</li>
                <li class="list-group-item">Białko: 19,7 gram</li>
                <li class="list-group-item">Tłuszcz : 15,7 gram</li>
            </ul>

        </div>


        <div class="card">
            <img src="https://domowejroboty.pl/media/2018/07/lody-smietankowe.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Lody śmietankowe</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 17,6 gram</li>
                <li class="list-group-item">Białko: 3,2 gram</li>
                <li class="list-group-item">Tłuszcz : 8,5 gram</li>
            </ul>

        </div>
        <div class="card">
            <img src="https://twojekologiczny.pl/wp-content/uploads/2019/01/te-8.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Miód pszczeli</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany: 79,5 gram</li>
                <li class="list-group-item">Białko: 0 gram</li>
                <li class="list-group-item">Tłuszcz : 0 gram</li>
            </ul>

        </div>
        <div class="card">
            <img src="https://biurowe-zakupy.pl/images/p/3/2/2/322026.jpg" class="card-img-top" alt="potatos">
            <div class="card-body">
                <h5 class="card-title">Mleko spożywcze 2 %</h5>
                <p class="card-text">Wartości odżywcze w 100 gramach</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Węglowodany:4,9 gram</li>
                <li class="list-group-item">Białko: 3,4 gram</li>
                <li class="list-group-item">Tłuszcz : 2 gram</li>
            </ul>

        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/footer.jspf"/>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>

</html>