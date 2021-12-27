package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.EditCurrentRecord;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.ProfileActionHandlersService;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.WeightRecord;
import pl.befit.projektnaio.EnteryPoint.User;

import java.io.IOException;
import java.time.LocalDate;
import java.util.TreeMap;

@WebServlet("/edytujPomiarWagi")
public class EditCurrentRecordController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user=  ProfileActionHandlersService.getLoggedUserFromApplicationContext(request);
        var records= user.getWeightRecords();
        ProfileActionHandlersService.findRecord(request,records);
        long id =Long.parseLong(request.getParameter("id"));
        LocalDate data=LocalDate.parse(request.getParameter("dateOfRecord"));
        double weight=Double.parseDouble(request.getParameter("numberOfRecord"));
        WeightRecord weightRecord= new WeightRecord(id,data,weight);
        records.add(weightRecord);

        var users= (TreeMap<String, User>) request.getServletContext().getAttribute("users");
        users.get(request.getSession().getAttribute("whoIsLogged").toString()).setWeightRecords(records);
        request.getServletContext().removeAttribute("users");
        request.getServletContext().setAttribute("users",users);
        response.sendRedirect("/BeFit/profil");

    }


}
