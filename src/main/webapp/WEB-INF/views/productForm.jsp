<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" action="/admin/product/save" modelAttribute="product">
        Nazwa: <form:input placeholder="${product.name}" path="name"/><br>
        <form:errors path="name"/><br>
        Opis: <form:textarea placeholder="${product.description}" path="description"/><br>
        <form:errors path="description"/><br>
        Ean: <form:input placeholder="${product.ean}" path="ean"/><br>
        <form:errors path="ean"/><br>
        <form:select path="category">
            <form:options items="${categoryNames}" itemValue="id" itemLabel="name"/>
        </form:select><br>
        <form:errors path="category"/><br>
        <form:hidden path="id" value="${product.id}"/>
        <input type="submit" value="Save">
    </form:form>
</body>
</html>
