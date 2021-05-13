package kz.javaee;

import DBconnection.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String name=request.getParameter("name");
        String password=request.getParameter("password");

        int u = 0, a = 0, s = 0, er = 0;

        DBConnection dbConnection = new DBConnection();

        ResultSet resultSet = dbConnection.getUsers();

        try{
            while (resultSet.next()) {
                if (resultSet.getString("password").equals(password) && resultSet.getString("name").equals(name) && resultSet.getString("type").equals("user")) {
                    HttpSession session=request.getSession();
                    session.setAttribute("name",name);
                    u = 1;
                } else if (resultSet.getString("password").equals(password) && resultSet.getString("name").equals(name) && resultSet.getString("type").equals("admin")) {
                    HttpSession session=request.getSession();
                    session.setAttribute("name",name);
                    a = 2;
                } else if (resultSet.getString("password").equals(password) && resultSet.getString("name").equals(name) && resultSet.getString("type").equals("super admin")) {
                    HttpSession session=request.getSession();
                    session.setAttribute("name",name);
                    s = 3;
                } else {
                    er = 1;
                }
            }
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

        if(u == 1){
            request.getRequestDispatcher("link.jsp").include(request, response);
        } else if(a == 2){
            request.getRequestDispatcher("adminPage.jsp").include(request, response);
        } else if(s == 3){
            request.getRequestDispatcher("superAdmin.jsp").include(request, response);
        } else if(er == 1){
            request.getRequestDispatcher("error.jsp").include(request, response);
        }
        out.close();
    }

}  