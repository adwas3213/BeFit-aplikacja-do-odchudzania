package pl.befit.projektnaio.EnteryPoint.Register;

import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.codec.binary.StringUtils;
import pl.befit.projektnaio.EnteryPoint.User;


import java.time.LocalDate;
import java.time.Period;
import java.util.TreeMap;

public class RegisterService {

    public static void createDefalutUsers(HttpServletRequest request) {
        if(request.getServletContext().getAttribute("users")==null)
        {
            var users= new TreeMap<String, User>();

            users.put("admin@befit.pl",new User("admin@befit.pl","admin","123456789", LocalDate.of(2001,10,4)));
            request.getServletContext().setAttribute("users", users);
        }
    }
    public static void addNewUserToServletContext(HttpServletRequest request, User user, TreeMap<String, User> users) {
        users.put(user.getEmail(), user);
        request.getServletContext().removeAttribute("users");
        request.getServletContext().setAttribute("users", users);
    }
    public static boolean checkCorrectionOfUsersData(HttpServletRequest request,User user,TreeMap<String, User> users)
    {
        if(users.containsKey(user.getEmail()))
        {
            request.setAttribute("error","Ten adres e-mail jest już zarezerowany. Spróbuj ponownie używając innego");
            return false;
        } else if(user.getPassword().length()<5)
        {
            request.setAttribute("error","Minimalna długość hasła to 5 znaków , spróbuj zarejestrować się ponownie");
            return false;
        } else if(user.getPassword().length()>25)
        {
            request.setAttribute("error","Maksymalna długość hasła to 25 znaków , spróbuj zarejestrować się ponownie");
            return false;
        } if(Period.between(user.getBirdhDate(), LocalDate.now().minusYears(13)).isNegative()||!Period.between(user.getBirdhDate(),LocalDate.now().minusYears(120)).isNegative())
        {
            request.setAttribute("error","Niestety, nie możesz się zarejestrować mając mniej niż 13 lat lub źle wprowadziłeś datę . Jeśli źle wprowadziłeś dane spróbuj ponownie");
            return false;
        } else  if(user.getPhoneNumber().length()!=9)
        {
            request.setAttribute("error","Podany nieprawidłowy numer telefonu. Spróbuj ponownie");
            return false;
        }


        return true;
    }
}
