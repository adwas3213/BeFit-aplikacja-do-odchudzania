package pl.befit.projektnaio.EnteryPoint;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/logout")
public class LogOutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().removeAttribute("isLogged");
        request.getSession().removeAttribute("isAdmin");
        request.getSession().removeAttribute("whoIsLogged");

        response.sendRedirect("/BeFit/");
    }

}
