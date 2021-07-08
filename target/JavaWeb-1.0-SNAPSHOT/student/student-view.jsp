<%--
  Created by IntelliJ IDEA.
  User: vergi
  Date: 13/04/20
  Time: 16.55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>student-biodata</title>
</head>
<body>
    <div>
        <table border="1">
            <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <c:out value="${param.name}"></c:out>
                </td
                <td>
                    <c:out value="${param.email}"></c:out>
                </td>
                <td>
                    <c:out value="${param.address}"></c:out>
                </td>
                <td>
                    <c:out value="${param.phone}"></c:out>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
