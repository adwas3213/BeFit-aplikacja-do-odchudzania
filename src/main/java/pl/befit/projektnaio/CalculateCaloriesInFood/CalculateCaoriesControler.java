package pl.befit.projektnaio.CalculateCaloriesInFood;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/sprawdzKalorycznoscPosilkow")
public class CalculateCaoriesControler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/CalculateCaloriesInFood.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FoodDTO foodDTO=new FoodDTO( request);
        Dish calculated=CalculateCaloriesInFoodService.createDishFromFoodDTO(foodDTO);
        request.setAttribute("dish",calculated);
        request.getRequestDispatcher("WEB-INF/CalculateCaloriesInFood.jsp").forward(request,response);
    }
}
