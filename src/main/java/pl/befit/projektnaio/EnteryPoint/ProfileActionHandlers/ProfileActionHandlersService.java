package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import pl.befit.projektnaio.EnteryPoint.User;

import java.util.TreeMap;
import java.util.TreeSet;

public class ProfileActionHandlersService {

    public static User getLoggedUserFromApplicationContext(HttpServletRequest request) {
        ServletContext context= request.getServletContext();
        TreeMap<String,User> users= (TreeMap <String, User>) context.getAttribute("users");
        String whoIsLogged= request.getSession().getAttribute("whoIsLogged").toString();
        User user=users.get(whoIsLogged);
        return user;
    }

    public static void findRecord(HttpServletRequest request, TreeSet<WeightRecord> records) {
        User user=  ProfileActionHandlersService.getLoggedUserFromApplicationContext(request);
        long id=Long.parseLong(request.getParameter("id"));


        for (WeightRecord record : records) {
            if(record.getId()==id)
            {
                records.remove(record);
                break;
            }
        }
    }
}
