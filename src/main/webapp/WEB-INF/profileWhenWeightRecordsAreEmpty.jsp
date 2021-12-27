<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 27.12.2021
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/footers/">

    <script src="https://kit.fontawesome.com/9d1d9a82d2.js" crossorigin="anonymous"></script>
    <!-- <link rel="stylesheet" href="../staticContent/cssFiles/activityFile.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styles3.css">
    <title>Profil użytkownika</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<jsp:include page="/WEB-INF/navbar.jspf"/>
<div style="margin-top: 100px;"></div>
<div class="bg-dark text-secondary px-4 py-5 text-center">
    <div class="py-5">
        <h1 class="display-5 fw-bold text-white">Wybierz tryb w którym chcesz korzystać z naszej aplikacji</h1>
        <div class="col-lg-6 mx-auto">
            <p class="fs-5 mb-4">Masz do wyboru 2 tryby . W pierwszym po prostu wprowadzasz swoją wagę śledząc postęp we swojej wadze . W trybie predykcji swojej wagi najpierw wprowadzasz dane do kalkulacji a następnie wpisujesz dzień w dzień swoją bierzącą wagę </p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                <button type="button" data-bs-toggle="modal" data-bs-target="#addNewRecord" class="btn btn-outline-info btn-lg px-4 me-sm-3 fw-bold">Tryb wolnego wpisywania swojej wagi</button>
                <button type="button" data-bs-toggle="modal" data-bs-target="#weightPrediction" class="btn btn-outline-light btn-lg px-4">Tryb predykcji liniowego postępu wagi </button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="weightPrediction">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Oblicz liniową predykcję wagi</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form action="${pageContext.request.contextPath}/stworzPredykcjeWagi" method="post">



            <div class="modal-body">
                <label for="startWeightToPrediction">Waga początkowa</label>
                <input type="number" name="startWeight" id="startWeightToPrediction" placeholder="90" min="30" max="450" required step="0.1">
                <p>
                    <label for="endWeightToPrediction">Waga końcowa</label>
                    <input type="number" name="endWeight" id="endWeightToPrediction" placeholder="70" min="30" max="450" required step="0.1">

                </p>
                <p>
                    <label for="startDatePrediction">Podaj datę początkową</label>
                    <input type="date" name="startDate" required id="startDatePrediction">
                </p>

                <p>
                    <label for="numberOfDaysForPredictedCalculate">Podaj liczbę dni ile chcesz chudnąć</label>
                    <input type="number" min="1" max="1500" id="numberOfDaysForPredictedCalculate" name="numberOfDaysForPredictedCalculate" placeholder="30" step="1" required>
                </p>

            </div>


            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Anuluj</button>
                <button type="submit" class="btn btn-success" data-bs-dismiss="modal">Stwórz</button>
            </div>
            </form>

        </div>
    </div>
</div>
<div class="modal" id="addNewRecord">
    <div class="modal-dialog">
        <div class="modal-content">


            <div class="modal-header">
                <h4 class="modal-title">Dodaj nowy pomiar swojej wagi</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form action="${pageContext.request.contextPath}/dodajNowyPomiarWagi" method="post">



            <div class="modal-body">
                <input type="date" name="dateOfRecord" required id="">
                <input type="number" name="numberOfRecord" required min="30" placeholder="70.0" max=450 step="0.1">
            </div>


            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Anuluj</button>
                <button type="submit" class="btn btn-success" data-bs-dismiss="modal">Dodaj</button>

            </div>
        </form>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/footer.jspf"/>
</body>
