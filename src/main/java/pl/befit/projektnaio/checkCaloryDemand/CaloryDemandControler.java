package pl.befit.projektnaio.checkCaloryDemand;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/kalkulatorBMI")
public class CaloryDemandControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(request.getParameter("weight")!=null)
        {

            CaloryDemandDTO caloryDemandDTO= new CaloryDemandDTO(request);
            BMIDTO bmidto=  CaloryDemandService.calculateBMI(caloryDemandDTO);

            request.setAttribute("BMI",bmidto);
            CaloryDemandWithDescriptionDTO caloryDemandWithDescriptionDTO= CaloryDemandService.calculateCaloryDemand(caloryDemandDTO);
            request.setAttribute("Demand",caloryDemandWithDescriptionDTO);

        }




        request.getRequestDispatcher("WEB-INF/BMICalculator.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
