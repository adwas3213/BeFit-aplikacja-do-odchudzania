package pl.befit.projektnaio.EnteryPoint;

import com.sun.source.tree.Tree;
import pl.befit.projektnaio.EnteryPoint.ProfileActionHandlers.WeightRecord;
import pl.befit.projektnaio.EnteryPoint.Register.RegisterDTO;

import java.time.LocalDate;
import java.util.Map;
import java.util.TreeSet;

public class User {
    private String email;
    private String password;
    private String phoneNumber;
    private LocalDate birdhDate;

    public long getCurrentIdOfWeightRecord() {
        return currentIdOfWeightRecord;
    }

    public void setCurrentIdOfWeightRecord(long currentIdOfWeightRecord) {
        this.currentIdOfWeightRecord = currentIdOfWeightRecord;
    }

    private TreeSet<WeightRecord> weightRecords;
    private TreeSet<WeightRecord> predictedWeight;
    private long currentIdOfWeightRecord=5;

    public User(RegisterDTO dto)
    {
        email=dto.getEmail();
        password= dto.getPassword();
        phoneNumber=dto.getPhoneNumber();
        birdhDate=dto.getBirdhDate();
    }

    public User(String email, String password, String phoneNumber, LocalDate birdhDate) {
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.birdhDate = birdhDate;
    }

    @Override
    public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", birdhDate=" + birdhDate +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;

        User user = (User) o;

        if (!email.equals(user.email)) return false;
        if (!password.equals(user.password)) return false;
        if (!phoneNumber.equals(user.phoneNumber)) return false;
        return birdhDate.equals(user.birdhDate);
    }

    @Override
    public int hashCode() {
        int result = email.hashCode();
        result = 31 * result + password.hashCode();
        result = 31 * result + phoneNumber.hashCode();
        result = 31 * result + birdhDate.hashCode();
        return result;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public LocalDate getBirdhDate() {
        return birdhDate;
    }

    public void setBirdhDate(LocalDate birdhDate) {
        this.birdhDate = birdhDate;
    }

    public TreeSet<WeightRecord> getWeightRecords() {
        return weightRecords;
    }

    public void setWeightRecords(TreeSet<WeightRecord> weightRecords) {
        this.weightRecords = weightRecords;
    }

    public TreeSet<WeightRecord> getPredictedWeight() {
        return predictedWeight;
    }

    public void setPredictedWeight(TreeSet<WeightRecord> predictedWeight) {
        this.predictedWeight = predictedWeight;
    }
}
