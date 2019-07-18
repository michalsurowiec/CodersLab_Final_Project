<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>OFERTA SKLEPU</h1>
<table>
    <tr>
        <th>Nazwa produktu</th>
        <th>Opis propduktu</th>
        <th>Kategoria produktu</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.category.name}</td>
            <td><a href="/user/order/addProduct/<c:out value="${product.id}"/>">DODAJ DO KOSZYKA</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
