<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 04.12.2021
  Time: 21:11
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
    <title>Lista siłowni</title>
    <style>
        h1 {
            text-align: center;
        }
    </style>
</head>

<body>
<jsp:include page="/WEB-INF/navbar.jspf"/>
<div style="padding-top: 200px;"></div>
<div class="container rounded" style="border: solid 2px; background-color: lightgray">
    <h1>Lista Siłowni</h1>
    <h5 style="text-align: center;">Do posortowania wyników użyj filtru</h5>

    <form action="${pageContext.request.contextPath}/silownie" method="post" class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4"><select class="form-select" name="sortingPredicate" aria-label="Default select example">

            <option selected value="NONE">Wybierz rodzaj sortowania</option>
            <option value="LOCATION_DECREASING">Posortuj malejąco po mieście</option>
            <option value="LOCATION_INCREASING">Posortuj rosnąco po mieście</option>
            <option value="DATE_DECREASING">Posortuj malejąco po dacie dodania</option>
            <option value="DATE_INCREASING">Posortuj rosnąco po dacie dodania</option>
            <option value="NOTE_DECREASING">Posortuj malejąco po ocenie</option>
            <option value="NOTE_INCREASING">Posortuj rosnąco po ocenie</option>
            <option value="TICKETPRICE_DECREASING">Posortuj malejąco po cenie karnetu</option>
            <option value="TICKETPRICE_INCREASING">Posortuj rosnąco po cenie karnetu</option>
        </select></div>
        <div class="col-sm-4"><button class="form-control">Posortuj</button></div>
    </form>
    <c:forEach items="${sessionScope.silownie}" var="silownie">
        <article class="rounded" style="border: solid 2px; background-color: lightblue">
            <div class="container">
                <strong>
                    <!--Tutaj zmienić na adres do servletu danej siłki -->
                    <h3 style="text-align: center;">${silownie.name}</h3>
                </strong>
                <div class="container">
                    <div class="col-sm-4 "> Dodane o ${silownie.dateOfCreate} przez ${silownie.creatorOfGym}
                    </div>
                </div>
                <div class="container">
                    <div class="col-sm-4 "> ${silownie.shortDescription}
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="well bg bg-danger">
                            Ocena : ${silownie.note}/5
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="well bg bg-warning">
                            cena miesięcznego karnetu : ${silownie.priceForOneMonth}
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="well bg bg-secondary">
                            Lokalizacja -> ${silownie.adress.city}:  , ${silownie.adress.street} nr. ${silownie.adress.number}
                        </div>
                    </div>
                </div>
            </div>
        </article>
        <div class="container"><br></div>
    </c:forEach>
</div>


<jsp:include page="/WEB-INF/footer.jspf"/>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>

</html>