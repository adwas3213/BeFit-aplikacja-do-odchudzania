package pl.befit.projektnaio.checkCaloryDemand;

import jakarta.servlet.http.HttpServletRequest;


public class CaloryDemandDTO {
    private ActivityLevel activityLevel;
    private double height;
    private double weight;
    private Gender gender;

    public CaloryDemandDTO(HttpServletRequest request) {

       weight= Double.parseDouble(request.getParameter("weight"));
       height= Double.parseDouble(request.getParameter("height"));
        this.activityLevel= ActivityLevel.valueOf(request.getParameter("activityLevel")) ;
        this.gender= Gender.valueOf(request.getParameter("gender")) ;

    }

}
