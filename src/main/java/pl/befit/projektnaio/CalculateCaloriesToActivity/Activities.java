package pl.befit.projektnaio.CalculateCaloriesToActivity;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class Activities {
///Tutaj będzie podana liczba minut oraz godzin potrzebnych na spalenie danej ilości kalorii
    private double taniec;
    private double szybkaJazdaNaRowerze;
    private double bieganie;
    private double plywanie;

    private double podnoszenieCiezarow;
    private double morsowanie;//34
    private double taniecGodzin;
    private double szybkaJazdaNaRowerzeGodzin;
    private double bieganieGodzin;
    private double plywanieGodzin;

    private double podnoszenieCiezarowGodzin;
    private double morsowanieGodzin;//34



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
        morsowanie=calory/34.0;
        taniec=calory/5.5;
        szybkaJazdaNaRowerze=calory/9.83;
        bieganie=calory/9.83;
        plywanie=calory/8.5;
        podnoszenieCiezarow=calory/7.33;

        morsowanieGodzin=morsowanie/60;
        taniecGodzin=taniec/60;
        szybkaJazdaNaRowerzeGodzin=szybkaJazdaNaRowerze/60;
        bieganieGodzin=bieganie/60;
        plywanieGodzin=plywanie/60;
        podnoszenieCiezarowGodzin=podnoszenieCiezarow/60;

    }


    public double getTaniec() {
        return taniec;
    }

    public double getSzybkaJazdaNaRowerze() {
        return szybkaJazdaNaRowerze;
    }

    public double getBieganie() {
        return bieganie;
    }

    public double getPlywanie() {
        return plywanie;
    }

    public double getPodnoszenieCiezarow() {
        return podnoszenieCiezarow;
    }

    public double getMorsowanie() {
        return morsowanie;
    }

    public double getTaniecGodzin() {
        return taniecGodzin;
    }

    public double getSzybkaJazdaNaRowerzeGodzin() {
        return szybkaJazdaNaRowerzeGodzin;
    }

    public double getBieganieGodzin() {
        return bieganieGodzin;
    }

    public double getPlywanieGodzin() {
        return plywanieGodzin;
    }

    public double getPodnoszenieCiezarowGodzin() {
        return podnoszenieCiezarowGodzin;
    }

    public double getMorsowanieGodzin() {
        return morsowanieGodzin;
    }

    public Map<String, ActivitiesRepository> getActivities() {
        return activities;
    }
}
