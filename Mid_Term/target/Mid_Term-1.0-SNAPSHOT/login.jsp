<%--
  Created by IntelliJ IDEA.
  User: vivacloins
  Date: 12.03.2021
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Login</title>
    <style>
        @font-face {
            font-family: Montserrat;
            src: url("assets/mont.ttf");
        }

        .text{
            font-family: Montserrat;
            color: red;
            text-align: center;
        }

        body{
            background: white;
        }

        .passlabel{
            margin-left: 39.5%;
            font-family: Montserrat;
        }

        .login input, h1{
            width: 294px;
            margin-left: 39.5%;
            font-family: Montserrat;
        }

        .button{
            margin-left: 39%;
            background: red;
            border: 1px solid #F2994A;
            border-radius: 6px;
            color: white;
            width: 90px;
            font-size: 13px;
            height: 30px;
            font-family: Montserrat;
        }

        .button:hover{
            background: white;
            color: black;
            border: 1px solid red;
        }

        .val{
            font-family: Montserrat;
            margin-left: 39.5%;
        }

    </style>
</head>
<body>
    <div class="text">
        <h1>Ready? Let’s play.</h1>
    </div>
    <form action="LoginServlet" method="post" class="login">
        <h1 style="color: red">Login</h1>
        <label class="passlabel" for="email" >email:</label><br>
        <input id="email" type="text" name="name" placeholder="example@gmail.com"><br><br>

        <label class="passlabel" for="passWord">Password:</label><br>
        <input id="passWord" type="password" name="password" placeholder="password"><br><br>
        <input class="button" type="submit" value="login">
    </form><br>
</body>
</html>
