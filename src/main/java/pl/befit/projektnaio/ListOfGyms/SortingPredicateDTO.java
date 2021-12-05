package pl.befit.projektnaio.ListOfGyms;

import jakarta.servlet.http.HttpServletRequest;

public class SortingPredicateDTO {
    private SortingPredicate predicate;
    public SortingPredicateDTO(HttpServletRequest request)
    {
        this.predicate= SortingPredicate.valueOf(request.getParameter("sortingPredicate"));
    }

    public SortingPredicate getPredicate() {
        return predicate;
    }
}
