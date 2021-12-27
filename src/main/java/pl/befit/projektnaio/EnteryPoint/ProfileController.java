package pl.befit.projektnaio.EnteryPoint;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.ProfileActionHandlersService;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.WeightRecord;

import java.io.IOException;
import java.time.LocalDate;
import java.util.TreeSet;

@WebServlet("/profil")
public class ProfileController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(request.getSession().getAttribute("isLogged")!=null)
        {

            User user= ProfileActionHandlersService.getLoggedUserFromApplicationContext(request);

            if(user.getWeightRecords()==null||user.getWeightRecords().isEmpty())
            {
                    response.sendRedirect("/BeFit/wybierzTryb");
            } else
            {
                TreeSet<LocalDate> uniqueDatesToChart = new TreeSet<>();
                if(user.getWeightRecords()!=null)
                    for (WeightRecord weightRecord : user.getWeightRecords()) {
                        uniqueDatesToChart.add(weightRecord.getDateOfRecord());
                    }
                if(user.getPredictedWeight()!=null)
                    for (WeightRecord weightRecord : user.getPredictedWeight()) {
                        uniqueDatesToChart.add(weightRecord.getDateOfRecord());
                    }

                request.setAttribute("uniqueDates",uniqueDatesToChart);
                request.setAttribute("nextDay",user.getWeightRecords().last().getDateOfRecord().plusDays(1));
                request.setAttribute("user",user);
                if(user.getPredictedWeight()!=null)
                request.setAttribute("precition",true);
                request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request,response);
            }




        }

        else
        {
            response.sendRedirect("/BeFit/");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
