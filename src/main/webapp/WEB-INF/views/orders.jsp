<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="parts/header.jsp"%>
<body>
<table>
    <c:forEach items="${orders}" var="order">
        <tr>
            <td>${order.id}</td>
            <td>${order.created}</td>
            <td><c:forEach items="${order.productSet}" var="product">${product.name}<br></c:forEach></td>
            <td>${order.user.name}</td>
            <td>${order.paymentDate}</td>
        </tr>
    </c:forEach>
</table>
</body>
<%@ include file="parts/footer.jsp"%>
</html>
