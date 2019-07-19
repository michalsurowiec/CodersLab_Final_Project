<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="parts/header.jsp"%>
<body>
<h1>OFERTA SKLEPU</h1>
<table>
    <tr>
        <th>Nazwa produktu</th>
        <th>Opis produktu</th>
        <th>Kategoria produktu</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.category.name}</td>
            <sec:authorize access="isAuthenticated()">
            <td><a href="/cart/addProduct/<c:out value="${product.id}"/>">DODAJ DO KOSZYKA</a></td>
            </sec:authorize>
        </tr>
    </c:forEach>
</table>
</body>
<%@ include file="parts/footer.jsp"%>
</html>
