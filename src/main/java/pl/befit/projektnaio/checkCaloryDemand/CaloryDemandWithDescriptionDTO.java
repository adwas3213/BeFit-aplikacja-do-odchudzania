package pl.befit.projektnaio.checkCaloryDemand;

public class CaloryDemandWithDescriptionDTO {
    private String description;
    private double caloryDemand;

    public CaloryDemandWithDescriptionDTO(String description, double caloryDemand) {
        this.description = description;
        this.caloryDemand = caloryDemand;
    }

    public String getDescription() {
        return description;
    }

    public double getCaloryDemand() {
        return caloryDemand;
    }
}
