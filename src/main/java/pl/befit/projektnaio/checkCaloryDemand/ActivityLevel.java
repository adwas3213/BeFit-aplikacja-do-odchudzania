package pl.befit.projektnaio.checkCaloryDemand;

public enum ActivityLevel {

    LOW("niskiej"),MEDIUM("średniej"),HIGH("wysokiej");
    private String level;
    ActivityLevel(String level) {
        this.level=level;
    }

    public String getLevel() {
        return level;
    }
}
