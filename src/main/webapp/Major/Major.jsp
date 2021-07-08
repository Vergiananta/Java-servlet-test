<%@ page import="com.Materi.Hibernate2.Entity.Major" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: vergi
  Date: 14/04/20
  Time: 18.22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Major Table</title>
</head>
<body>
<div>
    <table border="1" cellpadding="3" cellspacing="0">
        <thead>
        <th>Id</th>
        <th>Name</th>
        </thead>
        <tbody>
        <% for (Major major: (List<Major>) request.getAttribute("majors")) { %>
        <tr>
            <td><%= major.getId()%></td>
            <td><%= major.getName()%></td>
            <td>
                <%--            <a href="update.ok?id=<%= student.getId() %>"/>edit--%>
                <a href="deleteMajor.ok?id=<%= major.getId()%>"/>delete
            </td>
        </tr>
        <%  }%>
        </tbody>
    </table>
</div>
<hr/>
<div>
    <form action="" method="post">
        <div>
            <h2>Major form</h2>
        </div>
        <div>
            <label for="id">Id:</label>
            <input type="text" id="id" name="id" placeholder="Input id"/>
        </div>
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Input name"/>
        </div>
        <div>
            <button type="submit" class="fa fa-save"/>save
        </div>
    </form>
</div>
</body>
</html>
