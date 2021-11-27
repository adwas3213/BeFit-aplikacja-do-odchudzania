<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 26.11.2021
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cssFiles/styleDoZapotrzebowania.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cssFiles/styles3.css">
    <title>Hello, world!</title>
</head>

<body>


<jsp:include page="/WEB-INF/navbar.jspf"/>

<div class="form-body">
    <div class="row">
        <div class="form-holder">
            <div class="form-content">
                <div class="form-items">
                    <h3>Kalkulator Zapotrzebowania i BMI</h3>
                    <p>Zaraz dowiesz się jakie masz BMI i zapotrzebowanie kaloryczne</p>
                    <form class="requires-validation" novalidate>

                        <div class="col-md-12">
                            <input class="form-control" type="number" name="weight" placeholder="Twoja waga" required>
                            <div class="valid-feedback">Waga wprowadzona prawidłowo</div>
                            <div class="invalid-feedback">Musisz podać wagę</div>
                        </div>

                        <div class="col-md-12">
                            <input class="form-control" type="number" name="height" placeholder="Twój wzrost" required>
                            <div class="valid-feedback">Wzrost wprowadzony prawidłowo</div>
                            <div class="invalid-feedback">Musisz podać wzrost</div>
                        </div>

                        <div class="col-md-12">
                            <select class="form-select mt-3" required>
                                <option selected disabled value="">Intensywność aktywności podczas dnia</option>
                                <option value="low">Niska</option>
                                <option value="medium">Średnia</option>
                                <option value="high">Wysoka</option>
                            </select>
                            <div class="valid-feedback">Dziękuje za podanie intensywności aktywności w trakcie dnia</div>
                            <div class="invalid-feedback">Proszę podać aktywność !</div>
                        </div>



                        <div class="col-md-12 mt-3">
                            <label class="mb-3 mr-1" for="gender">Płeć</label>

                            <input type="radio" class="btn-check" name="gender" id="male" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" for="male">Mężczyzna</label>

                            <input type="radio" class="btn-check" name="gender" id="female" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" for="female">Kobieta</label>


                            <div class="valid-feedback mv-up">Musisz wybrać płeć</div>
                            <div class="invalid-feedback mv-up">Proszę podaj płeć</div>
                        </div>

                        <div class="form-button mt-3">
                            <button id="submit" type="submit" class="btn btn-primary">Wylicz</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title m-b-0">Co to jest BMI ?</h5>
                </div>
                <p>OPIS BMI !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>




                <p> HIDDEN Twoje BMI wynosi $$$ </p>



                <div class="card-body text-center">
                    <h5 class="card-title m-b-0">Co to jest zapotrzebowanie kaloryczne ? </h5>
                </div>

                <p>OPIS ZAPOTRZEBOWANIA KALORYCZNEGO !!!!!!!!!!!!!!!!!</p>
                <p> HIDDEN Twoje zapotrzebowanie kaloryczne wynosi $$$</p>

            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/footer.jspf"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/JSFiles/script.js"></script>

</body>

</html>