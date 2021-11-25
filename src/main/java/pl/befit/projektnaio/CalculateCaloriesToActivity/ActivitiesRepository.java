package pl.befit.projektnaio.CalculateCaloriesToActivity;

public class ActivitiesRepository {

    private String description;
    private double minutes;
    private double hours;


    public ActivitiesRepository( String description, int calories , double converter ) {

        this.description = description;
       this.minutes=calories/converter;

       minutes=Math.round(minutes);
        this.hours= minutes/60;
       hours=Math.round(hours);



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
