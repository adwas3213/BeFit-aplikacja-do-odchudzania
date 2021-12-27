package pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers;

import java.time.LocalDate;

public class WeightRecord implements Comparable<WeightRecord>  {
    long id;
    LocalDate dateOfRecord;
    double weight;

    public WeightRecord(long id, LocalDate dateOfRecord, double weight) {
        this.id = id;
        this.dateOfRecord = dateOfRecord;
        this.weight = weight;
    }

    @Override
    public int compareTo(WeightRecord o) {
        return dateOfRecord.compareTo(o.getDateOfRecord());
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof WeightRecord)) return false;

        WeightRecord that = (WeightRecord) o;

        if (id != that.id) return false;
        if (Double.compare(that.weight, weight) != 0) return false;
        return dateOfRecord.equals(that.dateOfRecord);
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = (int) (id ^ (id >>> 32));
        result = 31 * result + dateOfRecord.hashCode();
        temp = Double.doubleToLongBits(weight);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }

    public long getId() {
        return id;
    }

    public LocalDate getDateOfRecord() {
        return dateOfRecord;
    }

    public double getWeight() {
        return weight;
    }
}
