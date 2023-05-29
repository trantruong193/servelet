<%--
  Created by IntelliJ IDEA.
  User: trantruong193
  Date: 04/10/2022
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="Resgister" method="post">
        <table>
            <tr>
                <td>Student ID</td>
                <td><input type="text" name="stuid" placeholder=""></td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td><input type="text" name="fullname"></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><input type="radio" name="gender" value="true">Male
                    <input type="radio" name="gender" value="false">Female</td>
            </tr>
            <tr>
                <td>Birthday</td>
                <td><input type="date" name="birthday"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <textarea cols="20" rows="5" name="address"></textarea>
                </td>
            </tr>
            <tr>
                <td>Class</td>
                <td>
                    <select name="classname">
                        <option value="">---Choose---</option>
                        <option value="LM2201">Lap trinh java LM2201</option>
                        <option value="LM2202">Lap trinh java LM2202</option>
                        <option value="LM2203">Lap trinh java LM2203</option>
                        <option value="LM2204">Lap trinh java LM2204</option>
                        <option value="LM2205">Lap trinh java LM2205</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Hoobies</td>
                <td>
                    <input type="checkbox" name="hobbies" id="soccer" value="soccer"><label for="soccer">Soccer</label>
                    <input type="checkbox" name="hobbies" id="cooking" value="cooking"><label for="cooking">Cooking</label><br>
                    <input type="checkbox" name="hobbies" id="travel" value="travel"><label for="travel">Travel</label>
                    <input type="checkbox" name="hobbies" id="reading" value="reading"><label for="reading">Reading</label>
                </td>
            </tr>
            <tr>
                <td><input type="submit"></td>
                <td><input type="reset"></td>
            </tr>
        </table>
    </form>
</body>
</html>
