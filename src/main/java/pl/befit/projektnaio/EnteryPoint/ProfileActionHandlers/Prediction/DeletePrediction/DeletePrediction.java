package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.Prediction.DeletePrediction;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.befit.projektnaio.EnteryPoint.User;

import java.io.IOException;
import java.util.TreeMap;

@WebServlet("/usunPredykcje")
public class DeletePrediction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.removeAttribute("prediction");
        var users= (TreeMap<String, User>) request.getServletContext().getAttribute("users");
        users.get(request.getSession().getAttribute("whoIsLogged").toString()).setWeightRecords(null);
        users.get(request.getSession().getAttribute("whoIsLogged").toString()).setPredictedWeight(null);
        request.getServletContext().removeAttribute("users");
        request.getServletContext().setAttribute("users",users);

        response.sendRedirect("/BeFit/profil");
    }


}
