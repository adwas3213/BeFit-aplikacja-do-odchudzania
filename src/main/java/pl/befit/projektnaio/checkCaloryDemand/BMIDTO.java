package pl.befit.projektnaio.checkCaloryDemand;

public class BMIDTO {
    private double bmi;
    private String color;

    public BMIDTO(double bmi, String color) {
        this.bmi = bmi;
        this.color = color;
    }

    public double getBmi() {
        return bmi;
    }

    public String getColor() {
        return color;
    }

    @Override
    public String toString() {
        return "BMIDTO{" +
                "bmi=" + bmi +
                ", color='" + color + '\'' +
                '}';
    }
}
