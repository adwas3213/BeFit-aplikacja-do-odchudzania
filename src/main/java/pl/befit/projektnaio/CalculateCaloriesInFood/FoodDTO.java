package pl.befit.projektnaio.CalculateCaloriesInFood;

import jakarta.servlet.http.HttpServletRequest;

public class FoodDTO {
  private  double gramsOfFat;
  private  double gramsOfFood;
  private  double gramsOfCarbohydrates;
  private  double gramsOfNutreins;

    public double getSumOfMicronutrients() {
        return sumOfMicronutrients;
    }

    private double sumOfMicronutrients;
  private String nameOfProduct;
    public FoodDTO(HttpServletRequest request) {
        if(request.getParameter("fat")!=null&&!request.getParameter("fat").equals(""))
        {
            gramsOfFat = Double.parseDouble(request.getParameter("fat"));
        } else gramsOfFat =0;
        if(request.getParameter("carbohydrates")!=null&&!request.getParameter("carbohydrates").equals(""))
        {
            gramsOfCarbohydrates = Double.parseDouble(request.getParameter("carbohydrates"));
        } else gramsOfCarbohydrates =0;
        if(request.getParameter("nutreins")!=null&&!request.getParameter("nutreins").equals(""))
        {
            gramsOfNutreins = Double.parseDouble(request.getParameter("nutreins"));
        } else gramsOfNutreins =0;
        if(request.getParameter("grams")!=null&&!request.getParameter("grams").equals(""))
        {
            gramsOfFood = Double.parseDouble(request.getParameter("grams"));
        } else gramsOfFood =0;
        nameOfProduct=request.getParameter("name");
        sumOfMicronutrients=gramsOfCarbohydrates+gramsOfFat+gramsOfNutreins;
    }

    public double getGramsOfFat() {
        return gramsOfFat;
    }

    public double getGramsOfFood() {
        return gramsOfFood;
    }

    public double getGramsOfCarbohydrates() {
        return gramsOfCarbohydrates;
    }

    public double getGramsOfNutreins() {
        return gramsOfNutreins;
    }

    public String getNameOfProduct() {
        return nameOfProduct;
    }
}
