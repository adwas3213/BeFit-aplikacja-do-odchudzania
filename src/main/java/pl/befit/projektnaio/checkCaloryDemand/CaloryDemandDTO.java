package pl.befit.projektnaio.checkCaloryDemand;

import jakarta.servlet.http.HttpServletRequest;


public class CaloryDemandDTO {
    private ActivityLevel activityLevel;
    private double height;
    private double weight;
    private Gender gender;
    private double age;

    public CaloryDemandDTO(HttpServletRequest request) {

       weight= Double.parseDouble(request.getParameter("weight"));
       height= Double.parseDouble(request.getParameter("height"));
        this.activityLevel= ActivityLevel.valueOf(request.getParameter("activityLevel")) ;
        this.gender= Gender.valueOf(request.getParameter("gender")) ;
        age= Double.parseDouble(request.getParameter("age"));
    }

    public CaloryDemandDTO() {
    }

    public ActivityLevel getActivityLevel() {
        return activityLevel;
    }

    public double getHeight() {
        return height;
    }

    public double getWeight() {
        return weight;
    }

    public Gender getGender() {
        return gender;
    }

    public void setActivityLevel(ActivityLevel activityLevel) {
        this.activityLevel = activityLevel;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public double getAge() {
        return age;
    }
}
