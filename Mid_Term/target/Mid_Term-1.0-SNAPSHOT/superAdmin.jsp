<%@ page import="model.Music" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.User" %>
<%@ page import="DBconnection.DBConnection" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: vivacloins
  Date: 13.03.2021
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        @font-face {
            font-family: Montserrat;
            src: url("assets/mont.ttf");
        }

        .welcomeAdmin{
            background: white;
            display: inline-block;
        }

        .adminOpp{
            background: red;
            width: 40%;
            margin-left: 55%;
            height: 450px;
            border-radius: 3px;
            margin-top: -38%;
        }

        .adminOpp img{
            margin-top: 8%;
            margin-left: 23%;
        }

        .adminOpp h1{
            font-family: Montserrat;
            color: white;
            font-size: 25px;
            margin-left: 10%;
        }

        .adminOpp p{
            font-family: Montserrat;
            color: white;
            margin-left: 10%;
            margin-right: 10%;
        }

        .welAdmin{
            background: white;
            margin-right: 45%;
            height: 550px;
        }

        #welToPage{
            font-family: Montserrat;
            color: red;
            margin-left: 3%;
            font-size: 40px;
            margin-top: 15%;
        }

        .welAdmin img{
            margin-left: 15%;
        }

        #Nemo{
            color: red;
            font-size: 20px;
            font-family: Montserrat;
            margin-left: 5%;
            margin-right: 10%;
        }

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
            text-decoration: none;
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

        table {
            font-family: Montserrat;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<%!
    String name = "";
%>
    <header>
        <ul>
            <li class="li"><p style="color: #F2F2F2">For<br>Music</p></li>
            <li class="li2"><a href="index.jsp" >Home</a></li>
            <li class="li2"><a href="ProfileServlet">Music</a></li>
            <li class="li2"><a href="index.jsp">About us</a></li>
            <li class="li2"><a href="index.jsp">Support</a></li>
            <li class="liB">
                <a class="login" href="admin.jsp"><%=
                    name = request.getParameter("name")
                %></a>&nbsp;&nbsp;
                <a class="sign" href="SuperAdLTServlet">Logout<%@ page autoFlush = "true" %></a>
            </li>
        </ul>
    </header>

    <div class="welcomeAdmin">
        <div class="welAdmin">
            <p id="welToPage">Welcome to Super Admin page "<%
                out.print(name);
            %>"</p>
            <br><br>
            <img src="assets/IMG_1678.PNG" width="100px" height="100px">
            <img src="assets/IMG_1678.PNG" width="100px" height="100px">
            <img src="assets/IMG_1678.PNG" width="100px" height="100px">
            <br><br>
            <p id="Nemo">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
        </div>
        <div class="adminOpp">
            <img src="assets/pic1.PNG" width="300px" height="200px">
            <h1>Your opportunity</h1>
            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
        </div>
        <br><br><br><br>
    </div>
    <h1 style="color: red; text-align: center; font-family: Montserrat">Music list only for you</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>User</th>
            <th>Password</th>
            <th>Subscribe</th>
            <th>Type</th>
        </tr>
        <%
            DBConnection dbconnection = new DBConnection();
            ResultSet resultSet = dbconnection.getUsers();
            try{
                while (resultSet.next()) {
        %>

        <tr>
            <th><%= resultSet.getInt("id") %></th>
            <th><%= resultSet.getString("name") %></th>
            <th><%= resultSet.getString("password") %></th>
            <th><%= resultSet.getString("subscribe") %></th>
            <th><%= resultSet.getString("type") %></th>
        </tr>

        <%
                }
            } catch (Exception e){
                out.print(e.getMessage());
            }
        %>
        </tr>
    </table>

<br><br>

<div class="delete">
    <div class="deleteUser">
        <form action="UserDeleteServlet" method="post" align="center">
            <fieldset>
                <p style="font-family: Montserrat; text-align: center">Delete</p>
                <label style="font-family: Montserrat">User name:</label>
                <input style="font-family: Montserrat" type="text" class="" placeholder="Enter user name:" name="userName" id="userName">
            </fieldset>
            <br>
            <button style="font-family: Montserrat" type="submit" name="action" value="update" class="btn">Delete</button>
            <br>
        </form>
    </div>
</div>

<div class="add">
    <div class="addUser">
        <form action="UserAddServlet" method="post" align="center">
            <fieldset>
                <p style="font-family: Montserrat; text-align: center">Add</p>
                <label style="font-family: Montserrat">User id:</label>
                <input style="font-family: Montserrat" type="text" class="" placeholder="Enter user id:" name="id" id="id">
                <br>
                <label style="font-family: Montserrat">User name:</label>
                <input style="font-family: Montserrat" type="text" class="" placeholder="Enter user name:" name="name" id="name">
                <br>
                <label style="font-family: Montserrat">Password:</label>
                <input style="font-family: Montserrat" type="password" class="" placeholder="Enter user password:" name="pass" id="pass">
                <br>
                <label style="font-family: Montserrat">Subscribe:</label>
                <input style="font-family: Montserrat" type="text" class="" placeholder="Enter user subscribe:" name="subs" id="subs">
                <br>
                <label style="font-family: Montserrat">Type:</label>
                <input style="font-family: Montserrat" type="text" class="" placeholder="Enter user type:" name="type" id="type">
                <br>
            </fieldset>
            <br>
            <button style="font-family: Montserrat" type="submit" name="action" value="update" class="btn">ADD</button>
            <br>
        </form>
    </div>
</div>

    <br><br>
<%--    <footer>--%>
<%--        <br><br>--%>
<%--        <ul class="ull">--%>
<%--            <li class="fo2"><a href="index.jsp">Home</a></li>--%>
<%--            <li class="fo2"><a href="ProfileServlet">Music</a></li>--%>
<%--            <li class="fo2"><a href="index.jsp">About us</a></li>--%>
<%--            <li class="fo"><p style="color: white">For<br>Music</p></li>--%>
<%--            <li class="fo1"><a href="index.jsp">Support</a></li>--%>
<%--            <li class="fo1"><a href="adminLogin.jsp">Admin</a></li>--%>
<%--            <li class="fo1"><a href="SuperAdServlet">Super Admin</a></li>--%>
<%--            <br><br>--%>
<%--        </ul>--%>
<%--    </footer>--%>

<jsp:include page="footer.jsp" />

</body>
</html>
