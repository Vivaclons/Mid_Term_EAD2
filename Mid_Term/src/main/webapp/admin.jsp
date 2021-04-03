<%--
  Created by IntelliJ IDEA.
  User: vivacloins
  Date: 02.04.2021
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin profile</title>
    <style>
        .name{
            color: red;
            text-align: center;
            font-family: Montserrat;
        }
    </style>
</head>
<body>

    <jsp:include page="header.jsp" />

    <%
        Cookie ck[]=request.getCookies();
        String name=ck[0].getValue();
        if (name != null) {
    %>
    <p class="name"> Hello <%= name %> </p>
    <%
    } else {
    %>
    <jsp:forward page="errorA.jsp" />
    <% } %>

    <jsp:include page="footer.jsp" />

</body>
</html>
