<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
<body class="pt-5">

<section>
    <div class="container-fluid">
        <div class="row">
            <main role="main" class="col-12 ml-sm-auto px-md-4">
                <form:form method="post" modelAttribute="recipe">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3">
                        <h1 class="h2">Dodaj przepis</h1>
                        <div class="btn-toolbar">
                            <div class="btn-group mr-2">
                                <ul class="nav nav-pills" role="tablist">
                                    <li>
                                        <button type="submit" class="btn form-control btn-outline-secondary">Dodaj
                                        </button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <table class="table table-sm">
                        <tbody>
                        <tr class="d-flex pb-2">
                            <form:label path="name">
                                <th scope="row" class="col-2">Nazwa</th>
                            </form:label>
                            <td class="col-10">
                                <form:input path="name" class="w-100 p-1"/>
                                <form:errors path="name" cssClass="errorMessage"/>
                            </td>
                        </tr>
                        <tr class="d-flex pb-2">
                            <form:label path="ingredients">
                                <th scope="row" class="col-2">Składniki</th>
                            </form:label>
                            <td class="col-10">
                                <form:input path="ingredients" class="w-100 p-1"/>
                                <form:errors path="ingredients" cssClass="errorMessage"/>
                            </td>
                        </tr>
                        <tr class="d-flex pb-2">
                            <form:label path="preparation">
                                <th scope="row" class="col-2">Przygotowanie</th>
                            </form:label>
                            <td class="col-10">
                                <form:input path="preparation" class="w-100 p-1"/>
                                <form:errors path="preparation" cssClass="errorMessage"/>
                            </td>
                        </tr>
                        <tr class="d-flex pb-2">

                                <th scope="row" class="col-2">Typ kuchni</th>

                            <td class="col-10">
                                <form:select items="${cuisines}" path="cuisine" class="w-100 p-1"
                                             itemLabel="type" itemValue="id"/>
                                <form:errors path="cuisine" cssClass="errorMessage"/>
                            </td>
                        </tr>



                        </tbody>
                    </table>

                </form:form>

            </main>
        </div>
    </div>
</section>
<%@include file="scripts.jsp" %>
<script src="dashboard.js"></script>
</body>

</html>
