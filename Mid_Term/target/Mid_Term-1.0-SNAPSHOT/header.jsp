<%--
  Created by IntelliJ IDEA.
  User: vivacloins
  Date: 03.04.2021
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        /*header*/
        ul{
            background: red;
            display: inline-block;
            width: 97.5%;
            list-style-type: none;
        }

        .li{
            padding-top: 20px;
            float: left;
            padding-right: 3%;
            margin-left: 1%;
            padding-bottom: 0;
        }
        /*ul img{*/
        /*  color: white;*/
        /*  width: 20px;*/
        /*  height: 20px;*/
        /*}*/
        .li p{
            margin-top: -10px;
            font-size: 16px;
            text-align: center;
            font-family: Montserrat;
        }

        .li2{
            padding-top: 20px;
            float: left;
            margin-left: 2%;
        }

        .li2 a{
            color: #F2F2F2;
            text-decoration: none;
            font-size: 13px;
            font-family: Montserrat;
        }

        .liB{
            display: inline-block;
            padding-top: 10px;
            margin-left: 60%;
        }

        .login{
            display: inline-block;
            color: #F2F2F2;
            font-size: 13px;
            font-family: Montserrat;
        }

        .sign{
            display: inline-block;
            color: #F2F2F2;
            text-decoration: none;
            width: 90px;
            font-size: 13px;
            height: 30px;
            font-family: Montserrat;
        }
    </style>
</head>
<body>
    <header>
        <ul>
            <li class="li"><p style="color: #F2F2F2">For<br>Music</p></li>
            <li class="li2"><a href="index.jsp" >Home</a></li>
            <li class="li2"><a href="ProfileServlet">Music</a></li>
            <li class="li2"><a href="index.jsp">About us</a></li>
            <li class="li2"><a href="index.jsp">Support</a></li>
            <li class="liB">
                <p class="login">Profile</p>&nbsp;&nbsp;
                <a class="sign" href="LogoutServlet">Logout<%@ page autoFlush = "true" %></a>
            </li>
        </ul>
    </header>
</body>
</html>
