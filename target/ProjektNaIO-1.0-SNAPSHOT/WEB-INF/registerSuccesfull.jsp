<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 10.12.2021
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The Easiest Way to Add Input Masks to Your Forms</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/registerFile.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/staticContent/cssFiles/styles3.css">
</head>

<body>
<jsp:include page="/WEB-INF/navbar.jspf"/>

<div class="registration-form " style="padding-top: 300px;">



                <div class="container rounded"  style="text-align: center ; border: solid 2px;">

                    <img src="${pageContext.request.contextPath}/staticContent/images/OK.jpg" class="rounded mx-auto d-block" style="width: 30%; height: 30%;" alt="OK">

                    Dziękujemy za zarejestrowanie się :)

                </div>
        </div>


</div>

<jsp:include page="/WEB-INF/footer.jspf"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>


</body>

</html>
