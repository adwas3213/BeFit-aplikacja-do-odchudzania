package pl.befit.projektnaio.ListOfGyms;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Queue;

@WebServlet("/silownie")
public class ListOfGymsControler extends HttpServlet {
    private HttpSession session;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session= request.getSession();

        if(session.getAttribute("silownie")==null)
        {
           session.setAttribute("silownie",ListOfGymsService.createTestData());

        }


        request.getRequestDispatcher("WEB-INF/gymList.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SortingPredicateDTO predicateDTO= new SortingPredicateDTO(request);
        if(request.getSession().getAttribute("silownie")!=null)
        {
            ArrayList<GymAtGymListRepository> gymsFromSesion=(ArrayList<GymAtGymListRepository>) session.getAttribute("silownie");
            ArrayList<GymAtGymListRepository> gyms= ListOfGymsService.sortGymsByPredicate(predicateDTO,gymsFromSesion );
            session.removeAttribute("silownie");
            session.setAttribute("silownie",gyms);
        } else {
            System.out.println("null");
        }




        response.sendRedirect("/BeFit/silownie");
    }
}
