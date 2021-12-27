package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.DeleteRecord;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.EditCurrentRecord.EditCurrentRecordController;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.ProfileActionHandlersService;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.WeightRecord;
import pl.befit.projektnaio.EnteryPoint.User;

import java.io.IOException;
import java.util.TreeMap;

@WebServlet("/usunPomiarWagi")
public class DeleteCurrentRecordController extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user=  ProfileActionHandlersService.getLoggedUserFromApplicationContext(request);
        var records= user.getWeightRecords();
        ProfileActionHandlersService.findRecord(request,records);

        var users= (TreeMap <String, User>) request.getServletContext().getAttribute("users");
        users.get(request.getSession().getAttribute("whoIsLogged").toString()).setWeightRecords(records);
        request.getServletContext().removeAttribute("users");
        request.getServletContext().setAttribute("users",users);



        response.sendRedirect("/BeFit/profil");

    }


}
