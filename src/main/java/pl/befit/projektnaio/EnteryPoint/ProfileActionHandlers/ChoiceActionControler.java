package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/wybierzTryb")
public class ChoiceActionControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/profileWhenWeightRecordsAreEmpty.jsp").forward(request,response);

    }


}
