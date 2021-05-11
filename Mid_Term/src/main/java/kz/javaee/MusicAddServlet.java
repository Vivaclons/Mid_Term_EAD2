package kz.javaee;

import DBconnection.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MusicAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id = Long.valueOf(request.getParameter("id"));
        String name = String.valueOf(request.getParameter("name"));
        int year = Integer.valueOf(request.getParameter("year"));
        String min = String.valueOf(request.getParameter("min"));

        DBConnection dbConnection = new DBConnection();

        dbConnection.addMusic(id, name, year, min);

        request.getRequestDispatcher("adminPage.jsp").include(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
