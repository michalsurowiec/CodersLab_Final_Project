<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <a href="/admin/product/create/">STWÓRZ PRODUKT</a>
    <table>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.ean}</td>
                <td>${product.category.name}</td>
                <td><a href="/admin/product/update/<c:out value="${product.id}"/>">EDYTUJ</a></td>
                <td><a href="/admin/product/delete/<c:out value="${product.id}"/>">USUŃ</a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="/admin">POWRÓT</a>
</body>
</html>
