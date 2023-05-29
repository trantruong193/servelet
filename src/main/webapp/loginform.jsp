<%--
  Created by IntelliJ IDEA.
  User: trantruong193
  Date: 04/10/2022
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
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
    <div class="center">
        <h1>Please login</h1>
        <h3 style="color: red">${err}</h3>
        <form action="Login" method="post">
            <table>
                <tr>
                    <td>User name:</td>
                    <td><input type="text" name="username" required value="${cookie.username.value}"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required value="${cookie.password.value}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <c:if test="${not empty cookie.username.value}">
                            <input type="checkbox" name="savepass" value="savepass" checked>Save Password
                        </c:if>
                        <c:if test="${empty cookie.username.value }">
                            <input type="checkbox" name="savePass" value="savePass">Save Password
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Login">
                        <input type="reset" value="Clear">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
