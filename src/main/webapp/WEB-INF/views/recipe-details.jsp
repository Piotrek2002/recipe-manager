<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>


<section>
    <div class="container-fluid">
        <div class="row">
            <main role="main" class="col-12 ml-sm-auto px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">${recipe.user.username}</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <ul class="nav nav-pills" role="tablist">
                                <li class="pl-5"><a class="btn form-control btn-outline-secondary"
                                                         href="/recipe/delete/${recipe.id}">Usuń przepis
                                </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="schedules-content">
                    <div class="schedules-content-header">
                        <div class="form-group row mb-2">
                            <span class="col-sm-3 col-lg-2 label-size col-form-label">
                                    Nazwa
                            </span>
                            <div class="col-sm-9 col-lg-10">
                                <p class="schedules-text">${recipe.name}</p>
                            </div>
                        </div>
                        <div class="form-group row">
                            <span class="col-sm-3 col-lg-2 label-size col-form-label">
                                    Przygotowanie
                                </span>
                            <div class="col-sm-9 col-lg-10">
                                <p class="schedules-text">${recipe.preparation}</p>
                            </div>
                        </div>
                        <div class="form-group row">
                            <span class="col-sm-3 col-lg-2 label-size col-form-label">
                                    Składniki
                            </span>
                            <div class="col-sm-9 col-lg-10">
                                <p class="schedules-text">
                                    ${recipe.ingredients}
                                </p>
                            </div>
                        </div>
                        <div class="form-group row">
                            <span class="col-sm-3 col-lg-2 label-size col-form-label">
                                    Typ kuchni
                            </span>
                            <div class="col-sm-9 col-lg-10">
                                <p class="schedules-text">
                                    ${recipe.cuisine.type}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
</section>
<%@include file="scripts.jsp" %>

</body>

</html>
