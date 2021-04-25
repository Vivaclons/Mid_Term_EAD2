<%@ page import="model.Music" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: vivacloins
  Date: 12.03.2021
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Page</title>
    <style>
        @font-face {
            font-family: Montserrat;
            src: url("assets/mont.ttf");
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

        .half{
            width: 100%;
            height: 750px;
        }

        .half img{
            margin-top: -1.5%;
            width: 100%;
            height: 100%;
        }

        #lis{
            position: absolute;
            z-index: 1;
            color: red;
            font-family: Montserrat;
            font-size: 50px;
            margin-left: 40%;
            margin-top: 7%;
        }


        /*subscribe*/
        .sb{
            background: white;
        }

        #pick{
            font-family: Montserrat;
            color: red;
            text-align: center;
            font-size: 30px;
        }

        #listen{
            margin-top: 1%;
            font-size: 20px;
            font-family: Montserrat;
            color: red;
            text-align: center;
        }

        .subscribe{
            color: #F2994A;
            margin-left: 10%;
        }

        .family{
            background: white;
            display: inline-block;
            width: 350px;
            height: 500px;
            border: 1px red solid;
            border-radius: 4px;
        }

        .family p{
            font-family: Montserrat;
            font-size: 18px;
            color: red;
        }

        .premium{
            background: white;
            display: inline-block;
            width: 350px;
            height: 500px;
            border: 1px red solid;
            border-radius: 4px;
            margin-left: 5%;
        }

        .premium p{
            font-family: Montserrat;
            font-size: 18px;
            color: red;
        }

        .student{
            background: white;
            margin-left: 5%;
            display: inline-block;
            width: 350px;
            height: 500px;
            border: 1px red solid;
            border-radius: 4px;
        }

        .student p{
            font-family: Montserrat;
            font-size: 18px;
            color: red;
        }

        .fam{
            text-align: center;
        }

        .pro{
            margin-left: 5%;
        }

        .getStart{
            margin-left: 35.5%;
            background: red;
            border: 1px solid;
            border-radius: 6px;
            color: white;
            width: 90px;
            font-size: 13px;
            height: 30px;
            font-family: Montserrat;
        }

        .getStart:hover{
            background: white;
            color: red;
            border: 1px solid red;
        }


        /*premium*/
        .millions p{
            font-family: Montserrat;
            text-align: center;
            font-size: 30px;
        }

        .millions{
            color: red;
            background: white;
            width: 100%;
            margin-top: -2.4%;
        }

        .millionsima{
            display: inline-block;
            position: static;
            margin-left: 8.5%;
        }

        #img1{
            margin-left: 17%;
        }

        #img2{
            margin-left: 10%;
        }

        #img3{
            margin-left: 0%;
        }

        #img4{
            margin-left: 5%;
        }

        .millionsima h4{
            font-family: Montserrat;
            text-align: center;
            font-size: 25px;
        }

        .millionsima p{
            font-family: Montserrat;
            text-align: center;
            font-size: 20px;
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
                <a class="login" href="user.jsp"><%
                    name = request.getParameter("name");
                    out.print(name);
                    pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);
                %></a>&nbsp;&nbsp
                <a class="sign" href="LogoutServlet">Logout</a>
            </li>
        </ul>
    </header>

    <div class="half">
        <h1 id="lis">Music is life</h1>
        <img alt="image" src="assets/tnbh.jpg">
    </div>

    <div class="sb">
        <br>
        <p id="pick">Pick your Premium</p>
        <h2 id="listen">Listen without limits on your phone, speaker, and other devices.</h2><br>
        <div class="subscribe">
            <div class="family">
                <p class="fam">Family</p>
                <p class="fam">$7.99/month after offer period</p>
                <p class="fam">Up to 6 accounts</p>
                <hr>
                <p class="pro">6 Premium accounts for family members </p><br>
                <p class="pro">Family Mix: a playlist for your family</p><br>
                <p class="pro">Block explicit music</p><br>
                <p class="pro">Ad-free music listening, play offline</p>
                <button class="getStart" (click)="addSubs(1)">Get started</button>
            </div>
            <div class="premium">
                <p class="fam">Premium</p>
                <p class="fam">$6.49/month after offer period</p>
                <p class="fam">1 account</p>
                <hr>
                <p class="pro">Listen to music ad-free</p><br>
                <p class="pro">Play anywhere - even offline</p><br>
                <p class="pro">On-demand playback</p><br>
                <p class="pro">Ad-free music listening, play offline, on-demand playback</p>
                <button class="getStart" (click)="addSubs(2)">Get started</button>
            </div>
            <div class="student">
                <p class="fam">Student</p>
                <p class="fam">$2.49/month after offer period</p>
                <p class="fam">1 account</p>
                <hr>
                <p class="pro">Special discount for eligible students in university</p><br>
                <p class="pro">Listen to music ad-free</p><br>
                <p class="pro">Play anywhere - even offline</p><br>
                <p class="pro">On-demand playback</p>
                <button class="getStart" (click)="addSubs(3)">Get started</button>
            </div>
        </div>
        <br><br><br>
    </div>
    <br>
    <div class="millions">
        <br>
        <hr>
        <br>
        <p>Why do Premium?</p><br><br>
        <div class="millionsima">
            <img id="img1" src="assets/img1.PNG" width="200">
            <h4>Download music.</h4>
            <p>listen anywhere.<br><br></p>
        </div>
        <div class="millionsima">
            <img id="img2" src="assets/img4.PNG" width="200">
            <h4>No ad interruptions.</h4>
            <p>Enjoy non stop music.<br><br></p>
        </div>
        <div class="millionsima">
            <img id="img3" src="assets/img3.PNG" width="200">
            <h4>Play any songs.</h4>
            <p>Even on mobile.<br><br></p>
        </div>
        <div class="millionsima">
            <img id="img4" src="assets/img2.PNG" width="200">
            <h4>Unlimited skips.</h4>
            <p>Just his text.<br><br></p>
        </div><br><br>
    </div>

    <h1 style="color: red; text-align: center; font-family: Montserrat">Music list only for you</h1>
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

    <br>

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
