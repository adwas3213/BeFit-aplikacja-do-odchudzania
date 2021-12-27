package pl.befit.projektnaio.EnteryPoint.Login;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.befit.projektnaio.EnteryPoint.Register.RegisterService;
import pl.befit.projektnaio.EnteryPoint.User;

import java.io.IOException;
import java.time.LocalDate;
import java.util.TreeMap;

@WebServlet("/login")
public class LoginControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        TreeMap <String, User> users= (TreeMap <String, User>) request.getServletContext().getAttribute("users");
        RegisterService.createDefalutUsers(request);


        request.getRequestDispatcher("WEB-INF/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TreeMap <String, User>  users =(TreeMap <String, User>) request.getServletContext().getAttribute("users");

        if(users!=null)
        {
            String email = request.getParameter("email");
            String password= request.getParameter("password");
            System.out.println(users);
            System.out.println(email);
            System.out.println(password);

            System.out.println(users.containsKey(email));
                if(users.containsKey( email))
                {
                    User probableUser= users.get(email);
                    System.out.println(probableUser);
                    if(probableUser.getPassword().equals(password))
                    {
                        checkIfItIsAdmin(request, probableUser);
                        request.getSession().setAttribute("whoIsLogged",probableUser.getEmail());
                        request.getSession().setAttribute("isLogged",true);
                        response.sendRedirect("/BeFit/profil");
                    }
                    else
                    {
                        request.getRequestDispatcher("WEB-INF/login.jsp").forward(request,response);
                    }
                } else
                {
                    request.getRequestDispatcher("WEB-INF/login.jsp").forward(request,response);
                }
        }




    }

    private void checkIfItIsAdmin(HttpServletRequest request, User probableUser) {
        if(probableUser.getEmail().equals("admin@befit.pl"))
        {
            request.getSession().setAttribute("isAdmin",true);
        }
    }
}
