<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="parts/header.jsp"%>
<body>
<a href="/admin/category/create/">STWÓRZ KATEGORIĘ</a>
    <table>
<c:forEach items="${categories}" var="category">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td>${category.description}</td>
            <td><a href="/admin/category/update/<c:out value="${category.id}"/>">EDYTUJ</a></td>
            <td><a href="/admin/category/delete/<c:out value="${category.id}"/>">USUŃ</a></td>
        </tr>
</c:forEach>
    </table>
</body>
<%@ include file="parts/footer.jsp"%>
</html>
