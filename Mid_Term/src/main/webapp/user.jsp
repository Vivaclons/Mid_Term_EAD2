<%@ page import="model.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Music" %>
<%@ page import="kz.javaee.DBConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="DBconnection.Connection" %><%--
  Created by IntelliJ IDEA.
  User: vivacloins
  Date: 02.04.2021
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User profile</title>
    <style>
        .name{
            color: red;
            text-align: center;
            font-family: Montserrat;
        }

        table {
            font-family: arial, sans-serif;
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
    </style>
</head>
<body>

    <%@ include file = "header.jsp" %>

    <%!
        String name = "";
    %>

    <%
        String name = (String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);

        if (name != null) {
    %>

    <div class="welcomeAdmin">
        <div class="welAdmin">
            <p id="welToPage">Welcome to user page "<%
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
    <%
    } else {%>
        <jsp:forward page="error.jsp" />
    <% } %>

    <table>
        <tr>
            <th>ID</th>
            <th>Music</th>
            <th>Year of publish</th>
            <th>min</th>
        </tr>

        <%
            Music music = new Music("Delete", 2020, "3:14");
            Music music1 = new Music("Компас", 2021, "4:14");
            Music music2 = new Music("Don't let me down", 2020, "2:14");
            Music music3 = new Music("Thunder", 2020, "3:34");
            Music music4 = new Music("Plus", 2019, "4:54");
            ArrayList<Music> musics = new ArrayList<>();
            musics.add(music);
            musics.add(music1);
            musics.add(music2);
            musics.add(music3);
            musics.add(music4);
            for(int i = 0; i < musics.size(); i++){
        %>

        <tr>
            <td><%= i+1 %></td>
            <td><%= musics.get(i).getName() %></td>
            <td><%= musics.get(i).getYearOfPublish() %></td>
            <td><%= musics.get(i).getMin() %></td>
        </tr>
        <%
            }
        %>

<%--//            Connection dbConnection = new Connection();--%>
<%--//            dbConnection.doInit();--%>
<%--//            ResultSet resultSet = dbConnection.getMusic();--%>
<%--//            ArrayList<Music> musics = new ArrayList<>();--%>
<%--            try{--%>
<%--                while (resultSet.next()) {--%>
<%--        %>--%>
<%--        <tr>--%>
<%--            <td><%= resultSet.getInt("id") %></td>--%>
<%--            <td><%= resultSet.getString("name") %></td>--%>
<%--            <td><%= resultSet.getInt("yearofpublisher") %></td>--%>
<%--            <td><%= resultSet.getString("min") %></td>--%>
<%--        </tr>--%>
<%--        <%--%>
<%--                }--%>
<%--            } catch (Exception e) {--%>
<%--                    System.out.println(e.getMessage());--%>
<%--            }--%>
<%--        %>--%>
    </table>

    <%@ include file = "footer.jsp" %>

</body>
</html>
