<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<header>
    <br>
    <sec:authorize access="!isAuthenticated()"><a href="/login">ZALOGUJ SIĘ</a></sec:authorize><br>
    <sec:authorize access="!isAuthenticated()"><a href="/register">ZAREJESTRUJ SIĘ</a></sec:authorize><br>
    <sec:authorize access="isAuthenticated()"><a href="/logout">WYLOGUJ SIĘ</a></sec:authorize><br>
    <sec:authorize access="isAuthenticated()"><a href="/cart">KOSZYK</a></sec:authorize><br>
    <br>
</header>
