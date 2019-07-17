<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" action="/user/save" modelAttribute="user">
        E-mail: <form:input placeholder="${user.email}" path="email"/><br>
        <form:errors path="email"/><br>
        Hasło musi mieć conajmniej 8 znaków, oraz zawierać conajmniej jedną małą literę, dużą literę, cyfrę, oraz znak.<br>
        Hasło: <form:password path="password"/><br>
        <form:errors path="password"/><br>
        Imię: <form:input placeholder="${user.name}" path="name"/><br>
        <form:errors path="name"/><br>
        Nazwisko: <form:input placeholder="${user.surname}" path="surname"/><br>
        <form:errors path="surname"/><br>
        Miasto: <form:input placeholder="${user.city}" path="city"/><br>
        <form:errors path="city"/><br>
        Kod pocztowy: <form:input placeholder="${user.postalCode}" path="postalCode"/><br>
        <form:errors path="postalCode"/><br>
        Ulica: <form:input placeholder="${user.street}" path="street"/><br>
        <form:errors path="street"/><br>
        Numer mieszkania: <form:input path="flatNumber"/><br>
        <form:errors path="flatNumber"/><br>
        Numer telefonu: <form:input placeholder="${user.phoneNumber}" path="phoneNumber"/><br>
        <form:errors path="phoneNumber"/><br>
        <form:hidden path="id" value="${user.id}"/>
        <input type="submit" value="Save">
    </form:form>
</body>
</html>
