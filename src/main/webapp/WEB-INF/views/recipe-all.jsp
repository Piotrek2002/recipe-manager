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
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 mb-3 ">
                    <h1 class="h2">Przepisy</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <ul class="nav nav-pills" role="tablist">
                                <li class="pr-5"><a type="button" class="btn form-control btn-outline-secondary" href="/recipe/add">Dodaj
                                    Przepis</a></li>
                            </ul>

                        </div>

                    </div>
                </div>
                <div class="tab-content">
                    <div class="tab-pane active" id="complete">
                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <thead>
                                <tr>
                                    <th>Nazwa</th>
                                    <th>Typ</th>
                                    <th>Składniki</th>
                                </tr>
                                </thead>

                                <tbody id="myTable">
                                <c:forEach items="${recipes}" var="recipe">
                                    <tr onclick="window.location='/recipe/details/${recipe.id}';">
                                        <td>${recipe.name}</td>
                                        <td>${recipe.cuisine.type}</td>
                                        <td>${recipe.ingredients}</td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </main>
        </div>
    </div>
</section>
<%@include file="scripts.jsp"%>
<script src="http://localhost:7070/dashboard.js">

</script>
</body>

</html>