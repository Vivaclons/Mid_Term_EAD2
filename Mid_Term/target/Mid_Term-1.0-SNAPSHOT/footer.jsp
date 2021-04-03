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
        /*footer*/
        footer{
            background: red;
            height: 300px;
            width: 100%;
        }

        .ull{
            background: red;
            display: inline-block;
            width: 97%;
            list-style-type: none;
        }

        .fo {
            padding-top: 5px;
            float: left;
            padding-right: 13%;
            margin-left: 13%;
        }

        .fo p{
            margin-top: -10px;
            font-size: 16px;
            text-align: center;
            font-family: Montserrat;
        }

        .fo2{
            padding-top: 5px;
            float: left;
            margin-left: 8%;
        }

        .fo2 a{
            color: white;
            text-decoration: none;
            font-size: 13px;
            font-family: Montserrat;
        }

        .fo1{
            padding-top: 5px;
            float: left;
            margin-right: 8%;
        }

        .fo1 a{
            color: white;
            text-decoration: none;
            font-size: 13px;
            font-family: Montserrat;
        }
    </style>
</head>
<body>
    <footer>
        <br><br>
        <ul class="ull">
            <li class="fo2"><a href="index.jsp">Home</a></li>
            <li class="fo2"><a href="ProfileServlet">Music</a></li>
            <li class="fo2"><a href="">About us</a></li>
            <li class="fo"><p style="color: white">For<br>Music</p></li>
            <li class="fo1"><a href="">Support</a></li>
            <li class="fo1"><a href="">Admin</a></li>
            <li class="fo1"><a href="">Super Admin</a></li>
            <br><br>
        </ul>
    </footer>
</body>
</html>
