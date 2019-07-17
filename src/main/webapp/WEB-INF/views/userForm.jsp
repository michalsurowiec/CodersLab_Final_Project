<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" action="/user/save" modelAttribute="user">
        E-mail: <form:input placeholder="${user.email}" path="email"/><br>
        Hasło: <form:password path="password"/><br>
        Imię: <form:input placeholder="${user.name}" path="name"/><br>
        Nazwisko: <form:input placeholder="${user.surname}" path="surname"/><br>
        Miasto: <form:input placeholder="${user.city}" path="city"/><br>
        Kod pocztowy: <form:input placeholder="${user.postalCode}" path="postalCode"/><br>
        Ulica: <form:input placeholder="${user.street}" path="street"/><br>
        Numer mieszkania: <form:input placeholder="${user.flatNumber}" path="flatNumber"/><br>
        Numer lokalu: <form:input placeholder="${user.localNumber}" path="localNumber"/><br>
        Numer telefonu: <form:input placeholder="${user.phoneNumber}" path="phoneNumber"/><br>
        <form:hidden path="id" value="${user.id}"/>
        <input type="submit" value="Save">
    </form:form>
</body>
</html>
