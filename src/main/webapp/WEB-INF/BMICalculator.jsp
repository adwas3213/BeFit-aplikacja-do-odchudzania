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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styleDoZapotrzebowania.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styles3.css">
    <title>Hello, world!</title>
</head>

<body style="overflow-x: hidden">


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
                            <input class="form-control" type="number" step="0.1" min="20" max="450" name="weight" placeholder="Twoja waga w kilogramach" required>
                            <div class="valid-feedback">Waga wprowadzona prawidłowo</div>
                            <div class="invalid-feedback">Musisz podać wagę</div>
                        </div>

                        <div class="col-md-12">
                            <input class="form-control" type="number" step="1" name="height" min="70" max="250" placeholder="Twój wzrost w centymetrach" required>
                            <div class="valid-feedback">Wzrost wprowadzony prawidłowo</div>
                            <div class="invalid-feedback">Musisz podać wzrost</div>
                        </div>
                        <div class="col-md-12">
                            <input class="form-control" type="number" step="1" name="age" min="5" max="123" placeholder="Twój wiek w latach" required>
                            <div class="valid-feedback">Wiek wprowadzony prawidłowo</div>
                            <div class="invalid-feedback">Musisz podać wiek</div>
                        </div>
                        <div class="col-md-12">
                            <select class="form-select mt-3" name="activityLevel" required>
                                <option selected disabled value="">Intensywność aktywności podczas dnia</option>
                                <option value="LOW">Niska</option>
                                <option value="MEDIUM">Średnia</option>
                                <option value="HIGH">Wysoka</option>
                            </select>
                            <div class="valid-feedback">Dziękuje za podanie intensywności aktywności w trakcie dnia</div>
                            <div class="invalid-feedback">Proszę podać aktywność !</div>
                        </div>



                        <div class="col-md-12 mt-3">
                            <label class="mb-3 mr-1" for="gender">Płeć</label>

                            <input type="radio" value="MALE" class="btn-check" name="gender" id="male" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" for="male">Mężczyzna</label>

                            <input type="radio" value="FEMALE" class="btn-check" name="gender" id="female" autocomplete="off" required>
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
                <p class="p-3">BMI to wskaźnik masy ciała. Skrót wziął się od angielskiej wersji, a mianowicie body mass index.
                    Jego podstawą jest wzór, w którym bierze się masę i wzrost ciała, ale często też płeć czy wiek.
                    Jednak to te dwa pierwsze parametry są zawsze niezbędne do wyliczenia swojego BMI.</p>




                <div class ="container" style="color: ${requestScope.BMI.color}">
                    <p> Twoje BMI wynosi ${requestScope.BMI.bmi} <c:if test="${requestScope.BMI.bmi>=40}"> lub więcej co świadczy o skrajnej otyłości </c:if>  </p>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar"
                             style="background-color: ${requestScope.BMI.color}; width: ${100*requestScope.BMI.bmi/40}%; " aria-valuenow="${requestScope.BMI.bmi}" aria-valuemin="0" aria-valuemax="40">${100*requestScope.BMI.bmi/40}%</div>
                    </div>

                </div>





                <div class="card-body text-center">
                    <h5 class="card-title m-b-0">Co to jest zapotrzebowanie kaloryczne ? </h5>
                </div>

                <p>Zapotrzebowanie kaloryczne określa Ilość kalorii, które muszą być dostarczone do organizmu, aby mógł on normalnie funkcjonować oraz by zachować prawidłową wagę ciała.
                    Za jednostkę przyjmuje się kalorie (kcal). Co ważne, zapotrzebowanie kaloryczne u każdego jest inne.
                    Uzależnione jest ono od: wieku, płci, wagi, trybu życia, oraz aktywności fizycznej.</p>
               <c:if test="${requestScope.Demand.caloryDemand!=null }">
                   <p> Twoje zapotrzebowanie kaloryczne wynosi <strong>${requestScope.Demand.caloryDemand}</strong> </p>
               </c:if>
                <p>Jest ono uzależnione od twoich personalnych danych bazując na potencjalnym twoim opisie </p>
                <p>${requestScope.Demand.description}</p>

            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/footer.jspf"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/staticContent/JSFiles/script.js"></script>

</body>

</html>