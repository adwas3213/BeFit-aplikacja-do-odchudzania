
<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 10.12.2021
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rejestracja</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/registerFile.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styles3.css">
    <style>
        label
        {
            text-align: center;
        }
    </style>
</head>

<body>
<jsp:include page="/WEB-INF/navbar.jspf"/>

<div class="registration-form">

    <form method="post" action="${pageContext.request.contextPath}/register" >
        <div class="container">
            <h1 style="text-align: center;">Zarejestruj się</h1>
        </div>
        <div class="form-group">
            <div class="col">Email</div>
            <input type="email" class="form-control item" name="email" id="email" placeholder="Email" required>
        </div>
        <div class="form-group">
            <div class="col">Hasło</div>
            <input type="password" class="form-control item" name="password" id="password" placeholder="Hasło" required>
        </div>
        <div class="form-group">
            <div class="col"> </div>
            <div class="col">Numer telefonu</div>
            <input type="text" class="form-control item" name="phoneNumber" id="phone-number" placeholder="Phone Number" required>
        </div>
        <div class="form-group">

            <div class="col">Data urodzenia</div>
            <input type="date" class="form-control item" name="birdhDate" id="birth-date" placeholder="Data urodzenia" required>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-block create-account">Stwórz konto </button>
            <c:if test="${requestScope.error!=null}">
                <div class="container" style="background-color: red;text-align: center">${requestScope.error}</div>
            </c:if>
        </div>
    </form>

</div>
<script>
    $(document).ready(function(){
        $('#birth-date').mask('00/00/0000');
        $('#phone-number').mask('0000-0000');
    })
</script>

<jsp:include page="/WEB-INF/footer.jspf"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>


</body>

</html>
