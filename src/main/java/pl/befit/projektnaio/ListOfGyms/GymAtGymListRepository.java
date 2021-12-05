package pl.befit.projektnaio.ListOfGyms;

import java.time.LocalDate;

public class GymAtGymListRepository implements Comparable<GymAtGymListRepository> {
   private int id;
    private String name;
    private String shortDescription;
    private LocalDate dateOfCreate;
    private String creatorOfGym;
    private double note;
    private double priceForOneMonth;
    private AddresRepository adress;

    public GymAtGymListRepository(double note)
    {
        this();
        this.note=note;
    }

    public GymAtGymListRepository() {
        this.id=0;
        this.shortDescription="krótki opis dany dla tej strony";
        this.creatorOfGym="Admin";
        this.name="ProGym";
        this.note=4;
        this.dateOfCreate= LocalDate.of(2021, 12, 3);
        this.priceForOneMonth = 99.0;
        this.adress = new AddresRepository("Kraków","Lea",5);
    }

    public GymAtGymListRepository(int id, String name, String shortDescription, LocalDate dateOfCreate, String creatorOfGym, double note, double priceForOneMonth, AddresRepository adress) {
        this.id = id;
        this.name = name;
        this.shortDescription = shortDescription;
        this.dateOfCreate = dateOfCreate;
        this.creatorOfGym = creatorOfGym;
        this.note = note;
        this.priceForOneMonth = priceForOneMonth;
        this.adress = adress;
    }

    @Override
    public int compareTo(GymAtGymListRepository o) {
        return Integer.compare(this.id,o.id);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDateOfCreate() {
        return dateOfCreate;
    }

    public void setDateOfCreate(LocalDate dateOfCreate) {
        this.dateOfCreate = dateOfCreate;
    }

    public String getCreatorOfGym() {
        return creatorOfGym;
    }

    public void setCreatorOfGym(String creatorOfGym) {
        this.creatorOfGym = creatorOfGym;
    }

    public double getNote() {
        return note;
    }

    public void setNote(double note) {
        this.note = note;
    }

    public double getPriceForOneMonth() {
        return priceForOneMonth;
    }

    public void setPriceForOneMonth(double priceForOneMonth) {
        this.priceForOneMonth = priceForOneMonth;
    }

    public AddresRepository getAdress() {
        return adress;
    }

    public void setAdress(AddresRepository adress) {
        this.adress = adress;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }


    public static class AddresRepository {
        private String city;
        private String street;
        private int number;

        public AddresRepository(String city, String street, int number) {
            this.city = city;
            this.street = street;
            this.number = number;
        }

        public AddresRepository() {
        }

        public String getCity() {
            return city;
        }

        public void setCity(String city) {
            this.city = city;
        }

        public String getStreet() {
            return street;
        }

        public void setStreet(String street) {
            this.street = street;
        }

        public int getNumber() {
            return number;
        }

        public void setNumber(int number) {
            this.number = number;
        }
    }
}
