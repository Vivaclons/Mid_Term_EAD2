package kz.javaee;

import DBconnection.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id = Long.valueOf(request.getParameter("id"));
        String name = String.valueOf(request.getParameter("name"));
        String pass = String.valueOf(request.getParameter("pass"));
        String subs = String.valueOf(request.getParameter("subs"));
        String type = String.valueOf(request.getParameter("type"));

        DBConnection dbConnection = new DBConnection();

        dbConnection.addUser(id, name, pass, subs, type);

        request.getRequestDispatcher("superAdmin.jsp").include(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
