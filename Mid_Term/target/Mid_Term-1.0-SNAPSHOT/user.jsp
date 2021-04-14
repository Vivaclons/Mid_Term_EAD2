<%--
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
    </style>
</head>
<body>

    <%@ include file = "header.jsp" %>

    <%!
    String name = "";
    %>
    <%--String name=(String)session.getAttribute("name");--%>
    <%
        String name = (String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);

        if (name != null) {
    %>
    <p class="name"> Hello <%= name %> </p>
    <%
    } else {%>
        <jsp:forward page="error.jsp" />
    <% } %>

    <%@ include file = "footer.jsp" %>

</body>
</html>
