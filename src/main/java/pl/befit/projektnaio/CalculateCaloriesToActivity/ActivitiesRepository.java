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


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ActivitiesRepository)) return false;

        ActivitiesRepository that = (ActivitiesRepository) o;

        if (Double.compare(that.minutes, minutes) != 0) return false;
        if (Double.compare(that.hours, hours) != 0) return false;
        return description.equals(that.description);
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = description.hashCode();
        temp = Double.doubleToLongBits(minutes);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(hours);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
