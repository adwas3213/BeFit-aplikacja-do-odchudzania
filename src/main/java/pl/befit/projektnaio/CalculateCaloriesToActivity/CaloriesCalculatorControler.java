package pl.befit.projektnaio.CalculateCaloriesToActivity;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/kalkulatorAktywnosci")
public class CaloriesCalculatorControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(request.getParameter("kalorie")!=null)
    {
        System.out.println(request.getParameter("kalorie"));
        int calory=Integer.parseInt(request.getParameter("kalorie"));
        request.setAttribute("aktywnosci",new Activities(calory));
        request.setAttribute("kalorie",calory);
        request.getRequestDispatcher("WEB-INF/CaloriesToActivity.jsp").forward(request,response);

    } else{
        request.getRequestDispatcher("WEB-INF/CaloriesToActivity.jsp").forward(request,response);
    }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/CaloriesToActivity.jsp").forward(request,response);
    }
}
