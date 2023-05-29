<%--
  Created by IntelliJ IDEA.
  User: trantruong193
  Date: 05/10/2022
  Time: 00:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <style>
      .center{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }
  </style>
</head>
<body>
<c:if test="${empty username}">
  <jsp:forward page="index.jsp"></jsp:forward>
</c:if>
<div class="center">
  <h1>Welcome: ${username}</h1>
  <a href="Logout">Logout</a>
</div>
</body>
</html>
