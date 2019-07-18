<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form:form method="post" action="/admin/category/save" modelAttribute="category">
        Nazwa: <form:input placeholder="${category.name}" path="name"/><br>
        <form:errors path="name"/><br>
        Opis: <form:textarea placeholder="${category.description}" path="description"/><br>
        <form:errors path="description"/><br>
        <form:hidden path="id" value="${category.id}"/>
        <input type="submit" value="Save">
    </form:form>
</body>
</html>
