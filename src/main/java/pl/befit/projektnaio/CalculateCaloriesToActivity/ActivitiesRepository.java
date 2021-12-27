package pl.befit.projektnaio.CalculateCaloriesToActivity;

public class ActivitiesRepository {

    private String description;
    private double minutes;
    private double hours;


    public ActivitiesRepository( String description, int calories , double converter ) {

        this.description = description;
       this.minutes=calories/converter;
       minutes*=10;
       minutes=Math.round(minutes);
       minutes/=10;
        this.hours= minutes/60;
        hours*=100;
       hours=Math.round(hours);
       hours/=100;



    }

    public String getDescription() {
        return description;
    }

    public double getMinutes() {
        return minutes;
    }

    public double getHours() {
        return hours;
    }
}
