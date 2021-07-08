<%--
  Created by IntelliJ IDEA.
  User: vergi
  Date: 13/04/20
  Time: 15.06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<h1>This is Add Dashboard</h1>
<h2><c:out value="${param.name1}"></c:out></h2>
<h2><c:out value="${param.name2}"></c:out></h2>
<p>------------------------------------------ +</p>
<%=request.getAttribute("total")%>
</body>
</html>
