<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<footer>
    <br>
    <a href="/">STRONA GŁÓWNA</a><br>
    <sec:authorize access="hasRole('ADMIN')"><a href="/admin">STRONA GŁÓWNA ADMINA</a></sec:authorize><br>
    <br>
</footer>