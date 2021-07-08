<%--
  Created by IntelliJ IDEA.
  User: vergi
  Date: 11/04/20
  Time: 16.13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Student</title>
</head>
<body>
<h1>This is Student Dashboard</h1>
<%--<h1><c:out value="${param.name}"></c:out></h1>--%>
<%--<h2><c:out value="${param.age}"></c:out></h2>--%>
<form method="post" action="">
    <div>
        <label for="name">FullName</label>
        <input type="text" id="name" name="name">
    </div>
    <div>
        <label for="email">Email</label>
        <input type="email" id="email" name="email">
    </div>
    <div>
        <label for="address">Adress</label>
        <input type="text" id="address" name="adress">
    </div>
    <div>
        <label for="phone">phoneNumber</label>
        <input type="number" id="phone" name="phone">
    </div>

</form>
</body>
</html>
