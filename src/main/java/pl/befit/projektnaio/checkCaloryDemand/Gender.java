package pl.befit.projektnaio.checkCaloryDemand;

public enum Gender {

    MALE("mężczyzną"),FEMALE("kobietą");
    private String name;
    Gender(String name) {
        this.name=name;
    }

    public String getName() {
        return name;
    }
}
