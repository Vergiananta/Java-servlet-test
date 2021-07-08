<%@ page import="com.Materi.Hibernate2.Entity.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: vergi
  Date: 13/04/20
  Time: 19.47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Students</title>
</head>
<body>
<h1>Student list</h1>
<div>
    <table border="1" cellpadding="3" cellspacing="0">
        <thead>
        <th>Id</th>
        <th>Name</th>
        <th>Gender</th>
        <th>BirthDate</th>
        <th>Address</th>
        <th>PhoneNumber</th>
        <th>Action</th>
        </thead>
    <tbody>
    <% for (Student student: (List<Student>) request.getAttribute("students")) { %>
    <tr>
        <td><%= student.getId()%></td>
        <td><%= student.getName()%></td>
        <td><%= student.getGender()%></td>
        <td><%= student.getBirthDate()%></td>
        <td><%= student.getAddress()%></td>
        <td><%= student.getPhoneNumber()%></td>
        <td>
<%--            <a href="update.ok?id=<%= student.getId() %>"/>edit--%>
            <a href="delete.ok?id=<%= student.getId()%>"/>delete
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
            <h2>Student form</h2>
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
            <label for="gender">Gender:</label>
            <input type="text" id="gender" name="gender" placeholder="Input gender"/>
        </div>
        <div>
            <label for="birthdate">BirthDate:</label>
            <input type="date" id="birthdate" name="birthdate" placeholder="Input birth date">
        </div>
        <div>
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" placeholder="Input address">
        </div>
        <div>
            <label for="phone">PhoneNumber:</label>
            <input type="text" id="phone" name="phone" placeholder="Input phone">
        </div>
        <div>
            <button type="submit" class="fa fa-save"/>save
        </div>
    </form>
</div>
</body>
</html>
