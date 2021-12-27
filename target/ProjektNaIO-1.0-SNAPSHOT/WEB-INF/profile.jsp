<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/profile.css">
    <script src="${pageContext.request.contextPath}/staticContent/JSFiles/profileTableJS.js"></script>
</head>


<body>
<jsp:include page="/WEB-INF/navbar.jspf"/>
<div style="padding-top: 100px"></div>
<div class="card mainPage" style="border-top: none">
    <div class="card chart-container rounded ">
        <canvas id="chart"></canvas>
    </div>




    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addNewRecord">
                                    Dodaj nowy
                                </button>

                                <form class="form-horizontal pull-right">

                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#weightPrediction">
                                        Oblicz liniową predykcję wagi
                                    </button>
                                    <c:if test="${requestScope.precition!=null}">
                                        <a href="${pageContext.request.contextPath}/usunPredykcje">
                                            <button type="button" class="btn btn-primary" >
                                                Zakończ predykcję wagi
                                            </button>
                                        </a>

                                    </c:if>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Akcja</th>
                                <th>ID</th>
                                <th>Data</th>
                                <th>Waga</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="record" items="${requestScope.user.weightRecords}">
                                <tr>
                                    <td>
                                        <ul class="action-list">
                                            <li>
                                                <c:choose> <c:when test="${requestScope.precition==null}">
                                                    <a href="#" onclick="editRecord(${record.id},'${record.dateOfRecord}',${record.weight},'${pageContext.request.contextPath}/edytujPomiarWagi')" data-bs-toggle="modal" data-bs-target="#editRecord" class="btn btn-primary keychainify-checked steem-keychain-checked">
                                                    <i class="fa fa-pencil-alt"></i>
                                                    </a>
                                                </c:when>
                                                    <c:otherwise>
                                                        <a href="#" onclick="editWeight(${record.id},'${record.dateOfRecord}',${record.weight},'${pageContext.request.contextPath}/edytujPomiarWagi')" data-bs-toggle="modal" data-bs-target="#editRecord" class="btn btn-primary keychainify-checked steem-keychain-checked">
                                                            <i class="fa fa-pencil-alt"></i>
                                                        </a>
                                                    </c:otherwise>
                                                </c:choose>

                                            </li>
                                            <li>
                                                <c:if test="${requestScope.precition==null}">
                                                    <a href="#" data-bs-toggle="modal" onclick="deleteRecord(${record.id},'${record.dateOfRecord}',${record.weight},'${pageContext.request.contextPath}/usunPomiarWagi')" data-bs-target="#deleteRecord" class="btn btn-danger keychainify-checked steem-keychain-checked"><i class="fa fa-times"></i></a>

                                                </c:if>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>${record.id}</td>
                                    <td>${record.dateOfRecord}</td>
                                    <td>${record.weight}</td>

                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>








<div class="modal" id="editRecord">
    <div class="modal-dialog">
        <div class="modal-content">


            <div class="modal-header">
                <h4 class="modal-title">Edytuj pomiar wagi</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <div id="editRecordData">
                <form action="">

                    <div class="modal-body">
                        <input type="date" name="dateOfRecord" required id="">
                        <input type="number" name="numberOfRecord" required min="30" placeholder="70.0" max=450 step="0.1">
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Anuluj</button>
                        <button type="submit" class="btn btn-success" data-bs-dismiss="modal">Edytuj</button>
                    </div>
                </form>
            </div>


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
            <form method="post" action="${pageContext.request.contextPath}/dodajNowyPomiarWagi" >



            <div class="modal-body">

                <c:choose>
                    <c:when test="${requestScope.precition!=null}"><input type="date" value="${requestScope.nextDay}" readonly  name="dateOfRecord" required ></c:when>
                    <c:otherwise><input type="date" name="dateOfRecord" required ></c:otherwise>
                </c:choose>

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


<div class="modal" id="deleteRecord">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title">Potwierdz usuniecie zapisu wagi</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <p>Czy na pewno chcesz usunac pomiar wagi ? </p>
                <table class="table rounded" style="border: solid 2px;">
                    <thead>
                    <tr>
                        <td style="border: solid 2px;">id</td>
                        <td style="border: solid 2px;">Data</td>
                        <td style="border: solid 2px;">waga</td>
                    </tr>
                    </thead>
                    <tbody id="deleteRecordData">

                    </tbody>


                </table>
            </div>

            <div class="modal-footer">
                <form action="" method="post">
                    <input name="id" value="" hidden>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Anuluj</button>
                    <button type="submit" class="btn btn-success" data-bs-dismiss="modal">Usuń</button>
                </form>
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
<jsp:include page="/WEB-INF/footer.jspf"/>
<script src="${pageContext.request.contextPath}/staticContent/JSFiles/profileTableJS.js"></script>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js">
</script>
<script>
    const diagram = document.getElementById("chart").getContext('2d');
    const myDiagram = new Chart(diagram, {
        type: 'line',
        data: {
            //zbiór posortowanych dni
            labels: [
                <c:forEach var="date" items="${requestScope.uniqueDates}">
                "${date}",
                </c:forEach>

            ],
            datasets: [{
                label: 'Twoja waga między ${requestScope.uniqueDates.first()} oraz ${requestScope.uniqueDates.last()} ',
                backgroundColor: 'rgba(161, 198, 247, 0.5)',
                fill: true,
                borderColor: 'rgb(47, 128, 237)',
                //Dane wagi podane
                data: [
                    <c:forEach var="weightRecord" items="${requestScope.user.weightRecords}">
                    "${weightRecord.weight}",
                    </c:forEach>
                ]
            },<c:if test="${requestScope.user.predictedWeight!=null}"> {
                ///Dane do predykcji wagi
                //Znaleziony BUG - jest
                data: [
                    <c:set var="numberOfWeightRecords" value="${requestScope.user.weightRecords.size()}">

                    </c:set>
                    <c:forEach var="predictedWeightRecord" items="${requestScope.user.predictedWeight}">
                    <c:if test="${numberOfWeightRecords>0}" >
                    "${predictedWeightRecord.weight}",
                   <c:set var="numberOfWeightRecords" value="${numberOfWeightRecords=numberOfWeightRecords-1}"> </c:set>
                    </c:if>

                    </c:forEach>


                ],
                borderColor: "red",
                backgroundColor: 'rgba(255, 0, 0, 0.5)',
                label: 'Predykcja progresu wagi',
                fill: true
            }</c:if>]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                    }
                }]
            }
        },
    });
</script>

</html>