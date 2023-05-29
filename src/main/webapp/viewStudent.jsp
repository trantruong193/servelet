<%--
  Created by IntelliJ IDEA.
  User: trantruong193
  Date: 04/10/2022
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Page</title>
</head>
<body>
  <table>
    <h1>Xin chào thành viên mới</h1>
    <tr>
      <td>Student ID : </td>
      <td>${stuid}</td>
    </tr>
    <tr>
      <td>Full name : </td>
      <td>${fullname}</td>
    </tr>
    <tr>
      <td>Gender : </td>
      <td>${gender? "Male": "Female"}</td>
    </tr>
    <tr>
      <td>Birthday : </td>
      <td>${birthday}</td>
    </tr>
    <tr>
      <td>Address : </td>
      <td>${address}</td>
    </tr>
    <tr>
      <td>Class : </td>
      <td>${classname}</td>
    </tr>
    <tr>
      <td>Hoobie : </td>
      <td>${hobbie}</td>
    </tr>
  </table>
  <a href="form.jsp">Back to form</a>
</body>
</html>
