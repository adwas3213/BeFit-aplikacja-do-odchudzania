package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.AddNewRecord;

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

@WebServlet("/dodajNowyPomiarWagi")
public class AddNewWeightRecordController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user=  ProfileActionHandlersService.getLoggedUserFromApplicationContext(request);

        if(user.getWeightRecords()==null)
        {
            user.setWeightRecords(new TreeSet<>());
            user.setCurrentIdOfWeightRecord(0);
        }
        long id=user.getCurrentIdOfWeightRecord();
        LocalDate date=LocalDate.parse(request.getParameter("dateOfRecord"));
        double weight=Double.parseDouble(request.getParameter("numberOfRecord"));

        WeightRecord record=new WeightRecord(id,date,weight);

        user.setCurrentIdOfWeightRecord(id+1);


        var records= user.getWeightRecords();
        records.add(record);

        var users= (TreeMap<String, User>) request.getServletContext().getAttribute("users");
        users.get(request.getSession().getAttribute("whoIsLogged").toString()).setWeightRecords(records);
        request.getServletContext().removeAttribute("users");
        request.getServletContext().setAttribute("users",users);

        response.sendRedirect("/BeFit/profil");


    }
}
