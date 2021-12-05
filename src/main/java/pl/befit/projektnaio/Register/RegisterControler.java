package pl.befit.projektnaio.Register;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/register")
public class RegisterControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO zmiana ścieżki tutaj
        request.getRequestDispatcher("/staticContent/HTMLTemplates/register.html").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//TODO Sprawdzić czy w bazie danych istnieje ktoś o takim e-mailu
//TODO Napisać Obiekt DTO przesyłający dane do naszej aplikacji
//TODO Napisać przekierowania do rejestracji ponownie gdy mamy już użytkownika w naszej aplikacji (Możemy zapisać e-maile w aplication contexcie)
    }
}
