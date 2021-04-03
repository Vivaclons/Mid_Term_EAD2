package kz.javaee;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String name=request.getParameter("name");
        String password=request.getParameter("password");

        if(password.equals("user123")){

            request.getRequestDispatcher("link.jsp").include(request, response);

            out.print("You are successfully logged in!");
            out.print("<br>Welcome, "+name);

            HttpSession session=request.getSession();
            session.setAttribute("name",name);
//
//            Cookie ck=new Cookie("name",name);
//            response.addCookie(ck);

        }else if(password.equals("admin123")){
            request.getRequestDispatcher("adminPage.jsp").include(request, response);
            out.print("You are successfully logged in!");
            out.print("<br>Welcome, "+name);

            Cookie ck=new Cookie("name",name);
            response.addCookie(ck);
        }else{
            request.getRequestDispatcher("error.jsp").include(request, response);
        }
        out.close();
    }

}  