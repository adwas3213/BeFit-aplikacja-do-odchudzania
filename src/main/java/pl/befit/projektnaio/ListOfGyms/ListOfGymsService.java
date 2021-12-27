package pl.befit.projektnaio.ListOfGyms;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.PriorityQueue;

public class ListOfGymsService {

    public static ArrayList<GymAtGymListRepository> sortGymsByPredicate(SortingPredicateDTO predicateDTO, ArrayList<GymAtGymListRepository> current) {

        ArrayList<GymAtGymListRepository> list = new ArrayList<>();
        for (GymAtGymListRepository gymAtGymListRepository : current) {
            list.add(gymAtGymListRepository);
        }
        SortingPredicate predicate = predicateDTO.getPredicate();
        switch (predicate) {
            case LOCATION_DECREASING -> list.sort(((o, p) -> {return -o.getAdress().getCity().compareTo(p.getAdress().getCity());}));
            case LOCATION_INCREASING -> list.sort((Comparator.comparing(o -> o.getAdress().getCity())));
            case DATE_DECREASING -> list.sort(((o, p) -> {return -o.getDateOfCreate().compareTo(p.getDateOfCreate());}));
            case DATE_INCREASING -> list.sort((Comparator.comparing(GymAtGymListRepository::getDateOfCreate)));
            case NOTE_DECREASING -> list.sort(((o, p) -> {return -Double.compare(o.getNote(), p.getNote());}));
            case NOTE_INCREASING -> list.sort((Comparator.comparingDouble(GymAtGymListRepository::getNote)));
            case TICKETPRICE_DECREASING -> list.sort(((o, p) -> {return -Double.compare(o.getPriceForOneMonth(), p.getPriceForOneMonth());}));
            case TICKETPRICE_INCREASING -> list.sort((Comparator.comparingDouble(GymAtGymListRepository::getPriceForOneMonth)));
        }
        return list;
    }

    public static ArrayList<GymAtGymListRepository> createTestData() {
        ArrayList<GymAtGymListRepository> list = new ArrayList<>();
        list.add(new GymAtGymListRepository(5));

        GymAtGymListRepository pierwszy = new GymAtGymListRepository(1, "Grafit", "Tarnów koło basenu", LocalDate.of(2021, 12, 4), "Adam", 5, 89, new GymAtGymListRepository.AddresRepository("Tarnów", "Wojska polskiego", 12));
        GymAtGymListRepository drugi = new GymAtGymListRepository(2, "SimpleGym", "W innym miescu", LocalDate.of(2021, 12, 4), "Admin", 2, 120, new GymAtGymListRepository.AddresRepository("Daleko za lasem", "", 12));
        list.add(pierwszy);
        list.add(drugi);
        return list;
    }
}
