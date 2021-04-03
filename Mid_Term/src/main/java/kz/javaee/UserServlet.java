package kz.javaee;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class UserServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        request.getRequestDispatcher("user.jsp").include(request, response);

        HttpSession session=request.getSession(false);
        String name=(String)session.getAttribute("name");

        if(name == null){
            out.print("ERROR");
        } else{
            out.print(name);
        }
        out.close();
    }
}
