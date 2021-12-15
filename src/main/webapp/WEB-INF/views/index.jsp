<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Main page:</h1>

<sec:authorize access="isAuthenticated()">
<p>Logged in as: <sec:authentication property="principal.username"/></p>
<form action="<c:url value="/logout"/>" method="post">
    <input type="submit" value="Log out">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</sec:authorize>

<a href="login">Log in</a>
<br>
<a href="about">About</a>


</body>
</html>