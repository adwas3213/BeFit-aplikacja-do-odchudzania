package pl.befit.projektnaio.CalculateCaloriesToActivity;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class Activities {




   private Map<String,ActivitiesRepository> activities;
    Activities(int calory)
    {
        activities = new TreeMap<>();
        activities.put("Morsowanie",new ActivitiesRepository("Kompiesz się w zimnej wodzie",calory,34.0));
        activities.put("Taniec",new ActivitiesRepository("Taniec nowoczesny lub towarzyski",calory,5.5));
        activities.put("Jazda na rowerze",new ActivitiesRepository("Jedziesz 18 Km/godzinę",calory,9.83));
        activities.put("Bieganie",new ActivitiesRepository("Biegniesz 6 km/godzinę",calory,9.83));
        activities.put("Podnoszenie ciężarów",new ActivitiesRepository("Normalny trening siłowy",calory,8.5));
        activities.put("Pływanie",new ActivitiesRepository("Ciągłe pływanie we chłodnej wodzie",calory,7.33));

    }



    public Map<String, ActivitiesRepository> getActivities() {
        return activities;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Activities)) return false;

        Activities that = (Activities) o;

        return activities.equals(that.activities);
    }

    @Override
    public int hashCode() {
        return activities.hashCode();
    }
}
