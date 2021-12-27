package pl.befit.projektnaio.EnteryPoint.Register;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.befit.projektnaio.EnteryPoint.User;

import java.io.IOException;
import java.time.LocalDate;
import java.util.TreeMap;

@WebServlet("/register")

public class RegisterControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RegisterService.createDefalutUsers(request);
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request,response);

    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("dopost");
        RegisterDTO  dto=RegisterDTO.RegisterDTO(request);
//        System.out.println(dto);
        User user=new User(dto);
        if(request.getServletContext().getAttribute("users")!=null)
        {
            TreeMap<String,User> users= (TreeMap<String,User>)request.getServletContext().getAttribute("users");
            if(RegisterService.checkCorrectionOfUsersData(request,user,users))
            {
                RegisterService.addNewUserToServletContext(request, user, users);
                request.getRequestDispatcher("/WEB-INF/registerSuccesfull.jsp").forward(request,response);
            }
            else {

                request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request,response);
            }
        }


    }
}
