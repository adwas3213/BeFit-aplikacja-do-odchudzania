<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 22.11.2021
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta>
    <title>Przelicz Kalorie na aktywność</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/footers/">
    <link rel="stylesheet" href="activityFile.css">
</head>

<body>
<jsp:include page="segments/navbar.jspf"/>

<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
        <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 mb-3">Przelicznik kalorii</h1>
            <p class="col-lg-10 fs-4">Podaj liczbę kalorii i naciśnij przycisk a uzyskasz dostęp do przeliczenia kalorii na minuty danej aktywności* </p>
            <p class="col-lg-10 fs-4">*Podany tutaj przelicznik jest adekwatny dla przeciętnego 70 kilogramowego mężczyzny</p>
            <p class="col-lg-10 fs-4">W przypadku innej wagi lub innej płci ta wartość może być inna i dane tutaj widoczne są tylko aproksymacją wydatkowania kalorycznego </p>
        </div>
        <div class="col-md-10 mx-auto col-lg-5">
            <form class="p-4 p-md-5 border rounded-3 bg-light">

                <div class="form-floating mb-3">

                    <input type="number" name="kalorie" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Wpisz liczbę kalorii</label>

                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Przelicz ! </button> </form>
        </div>
    </div>
</div>
<c:if test="${requestScope.aktywnosci != null}" >

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body text-center">
                    <h5 class="card-title m-b-0">Ile musisz ćwiczyć by spalić ${requestScope.kalorie} kalorii </h5>
                </div>
                <div class="table-responsive">
                    <table class="table">
                        <thead class="thead-light">
                        <tr>

                            <th scope="col">Aktywność</th>
                            <th scope="col">Opis</th>
                            <th scope="col">Liczba minut</th>
                            <th scope="col">Liczba godzin</th>
                        </tr>
                        </thead>
                        <tbody class="customtable">
                        <c:forEach items="${requestScope.aktywnosci.activities}" var="action"  >
                        <tr>
                                <td>${action.key}</td>
                                <td>${action.value.description}</td>
                                <td>${action.value.minutes}</td>
                                <td>${action.value.hours}</td>
                        </tr>
                        </c:forEach>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</c:if>



<jsp:include page="segments/footer.jspf"/>
</body>

</html>
