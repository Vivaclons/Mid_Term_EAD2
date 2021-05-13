package kz.javaee;

import DBconnection.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

public class SuperAdminLServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String name=request.getParameter("name");
        String password=request.getParameter("password");

        DBConnection dbConnection = new DBConnection();

        ResultSet resultSet = dbConnection.getUsers();
        int a = 0, er = 0;

        try {
            while (resultSet.next()) {
                if (resultSet.getString("password").equals(password) && resultSet.getString("name").equals(name) && resultSet.getString("type").equals("super admin")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("name", name);
                    a = 1;
                } else {
                    er = 1;
                }
            }
        } catch (Exception e){
            System.out.println(e.getMessage());
        }

        if(a == 1){
            request.getRequestDispatcher("superAdmin.jsp").include(request, response);
        } else if(er == 1){
            request.getRequestDispatcher("errorA.jsp").include(request, response);
        }

        out.close();
    }
}
