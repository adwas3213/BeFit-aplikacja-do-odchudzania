package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.Prediction.CreateNewPrediction;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.ProfileActionHandlersService;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.WeightRecord;
import pl.befit.projektnaio.EnteryPoint.User;

import java.io.IOException;
import java.time.LocalDate;
import java.util.TreeMap;
import java.util.TreeSet;

@WebServlet("/stworzPredykcjeWagi")
public class CreateNewPredictionController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("do post ! ");
        User user=  ProfileActionHandlersService.getLoggedUserFromApplicationContext(request);
       double startWeight= Double.parseDouble( request.getParameter("startWeight"));
        System.out.println(request.getParameter("startWeight"));
       double endWeight=Double.parseDouble( request.getParameter("endWeight"));
        System.out.println(request.getParameter("endWeight"));
       LocalDate startDate=LocalDate.parse( request.getParameter("startDate"));
        System.out.println(request.getParameter("startDate"));
      int numberOfDays= Integer.parseInt( request.getParameter("numberOfDaysForPredictedCalculate"));
        var predict = user.getPredictedWeight();
      if(predict==null)
      {
          predict=new TreeSet<WeightRecord>();
      }
      
      double step= (endWeight-startWeight)/numberOfDays;
      step*=10;
      step=Math.round(step);
      step/=10;
        double weight=startWeight;
        LocalDate day=startDate;
        for (long i = 0; i <= numberOfDays; i++) {
            WeightRecord record=new WeightRecord(i,day,weight);
            weight+=step;
            weight*=10;
            weight=Math.round(weight);
            weight/=10;
            day=day.plusDays(1);
            predict.add(record);
        }

        TreeSet<WeightRecord> records= new TreeSet<>();
        user.setCurrentIdOfWeightRecord(0);
        records.add(new WeightRecord(user.getCurrentIdOfWeightRecord(),startDate,startWeight));
        user.setCurrentIdOfWeightRecord(user.getCurrentIdOfWeightRecord()+1);
        var users= (TreeMap<String, User>) request.getServletContext().getAttribute("users");
        users.get(request.getSession().getAttribute("whoIsLogged").toString()).setPredictedWeight(predict);
        users.get(request.getSession().getAttribute("whoIsLogged").toString()).setWeightRecords(records);
        request.getServletContext().removeAttribute("users");
        request.getServletContext().setAttribute("users",users);


        response.sendRedirect("/BeFit/profil");





    }
}
