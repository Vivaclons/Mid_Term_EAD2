package filter;

import kz.javaee.AdminLServlet;
import kz.javaee.LoginServlet;
import kz.javaee.SuperAdminLServlet;
import model.UserDataBase;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

public class AuthFilter implements Filter{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        final HttpServletRequest req = (HttpServletRequest) servletRequest;
        final HttpServletResponse res = (HttpServletResponse) servletResponse;

        LoginServlet loginServlet = new LoginServlet();
        AdminLServlet adminLServlet = new AdminLServlet();
        SuperAdminLServlet superAdminLServlet = new SuperAdminLServlet();
        boolean j = true;
        final String login = req.getParameter("login");
        final String password = req.getParameter("password");

        @SuppressWarnings("unchecked")
        final AtomicReference<UserDataBase> data = (AtomicReference<UserDataBase>) req.getServletContext().getAttribute("data");

        final HttpSession session = req.getSession();
        if (password.equals("user123")) {
            loginServlet.doPost(req, res);
            j = false;
        } else if (password.equals("admin123")) {
            req.getSession().setAttribute("password", password);
            req.getSession().setAttribute("login", login);
            adminLServlet.doPost(req, res);
        } else {
            superAdminLServlet.doPost(req, res);
        }
    }

    @Override
    public void destroy() {

    }
}
