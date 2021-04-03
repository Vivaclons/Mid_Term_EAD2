<%--
  Created by IntelliJ IDEA.
  User: vivacloins
  Date: 12.03.2021
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
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
            padding-top: 20px;
            margin-left: 60%;
        }

        .login{
            color: #F2F2F2;
            width: 120px;
            font-size: 13px;
            height: 30px;
            font-family: Montserrat;
            text-decoration: none;
        }

        .sign{
            color: #F2F2F2;
            text-decoration: none;
            width: 90px;
            font-size: 13px;
            height: 30px;
            font-family: Montserrat;
        }

        /*.intro{*/
        /*    display: inline-block;*/
        /*    width: 49.5%;*/
        /*    height: 700px;*/
        /*    background-color: red;*/
        /*    color: #F2F2F2;*/
        /*    padding-bottom: -45.05%;*/
        /*    padding-top: 45.05%;*/
        /*}*/

        /*.intro h1{*/
        /*    text-align: center;*/
        /*}*/

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
            margin-left: 32.5%;
            margin-top: 7%;
        }

        /*millions*/
        .millions p{
            font-family: Montserrat;
            text-align: center;
            font-size: 30px;
        }

        .millions{
            color: red;
            width: 100%;
            margin-top: -2.4%;
        }

        .millionsima{
            display: inline-block;
            position: static;
            margin-left: 5.5%;
        }

        #img1{
            margin-left: 17%;
        }

        #img2{
            margin-left: 10%;
        }

        #img3{
            margin-left: 14%;
        }

        #img4{
            margin-left: 18%;
        }

        .millionsima h4{
            font-family: Montserrat;
            text-align: center;
            font-size: 15px;
        }

        .millionsima p{
            font-family: Montserrat;
            text-align: center;
            font-size: 20px;
        }

        /*support*/
        .support{
            width: 100%;
            background: white;
            height: 460px;
            display: inline-block;
        }

        .supportimg{
            /*margin-left: 10px;*/
        }

        .aboutUS{
            margin-top: -25%;
            margin-left: 34%;
            margin-right: 4%;
        }

        .aboutUS h1{
            font-size: 25px;
            font-family: Montserrat;
            color: red;
            text-align: center;
        }

        .aboutUS p{
            font-size: 20px;
            font-family: Montserrat;
            color: red;
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
                <a class="login" href="login.jsp">Login</a>&nbsp;&nbsp;
                <a class="sign" href="LogoutServlet">Logout<%@ page autoFlush = "true" %></a>
            </li>
        </ul>
    </header>

    <div class="half">
        <h1 id="lis">Listening is everything</h1>
        <img alt="image" src="assets/tnbh.jpg">
    </div>

    <div class="millions" id="mil">
        <br>
        <br><br>
        <p>Play millions of songs, for free.</p><br><br>
        <div class="millionsima">
            <img id="img1" src="assets/img1.PNG" width="200">
            <h4>Listen everywhere</h4>
            <p>ForMusic works on your <br>computer, mobile, tablet and <br>TV.</p>
        </div>
        <div class="millionsima">
            <img id="img2" src="assets/img2.PNG" width="200">
            <h4>Unlimited, ad-free music</h4>
            <p>No ads. No interruptions.<br> Just music.<br><br></p>
        </div>
        <div class="millionsima">
            <img id="img3" src="assets/img3.PNG" width="200">
            <h4>Download music & listen offline</h4>
            <p>Keep playing, even when <br> you don't have a connection.<br><br></p>
        </div>
        <div class="millionsima">
            <img id="img4" src="assets/img4.PNG" width="200">
            <h4>Premium sounds better</h4>
            <p>Get ready for incredible sound <br> quality.<br><br></p>
        </div><br><br>
    </div>
    <hr>
    <div class="support">
        <div class="supporimg">
            <img src="assets/IMG_3891.PNG" width="500" height="450">
        </div>
        <div class="aboutUS">
            <h1>About us</h1>
            <p>ForMusic makes it easy to find music or podcasts for any situation, because our service is available
                <br>on your phone, computer, tablet, and other devices.</p>
            <br>
            <h1>Why ForMusic?</h1>
            <p>Whether you're driving, at the gym, at a party, or on vacation, ForMusic has millions of tracks and
                <br>podcasts at your fingertips. Listen to what you want, or leave the choice to us, and we will try to
                <br>surprise you.
            </p>
        </div>
    </div>
    <br><br>
    <footer>
        <br><br>
        <ul class="ull">
            <li class="fo2"><a href="index.jsp">Home</a></li>
            <li class="fo2"><a href="ProfileServlet">Music</a></li>
            <li class="fo2"><a href="index.jsp">About us</a></li>
            <li class="fo"><p style="color: white">For<br>Music</p></li>
            <li class="fo1"><a href="index.jsp">Support</a></li>
            <li class="fo1"><a href="adminLogin.jsp">Admin</a></li>
            <li class="fo1"><a href="supAdminLogin.jsp">Super Admin</a></li>
            <br><br>
        </ul>
    </footer>

</body>
</html>
