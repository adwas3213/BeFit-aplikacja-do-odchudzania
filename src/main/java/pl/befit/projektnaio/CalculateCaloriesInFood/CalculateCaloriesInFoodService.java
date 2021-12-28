package pl.befit.projektnaio.CalculateCaloriesInFood;

public class CalculateCaloriesInFoodService {
    public static Dish createDishFromFoodDTO(FoodDTO dto)
    {
        double caloriesInFatInThatPeaceOfFood= 9*dto.getGramsOfFat()*dto.getGramsOfFood()/100;
        double caloriesInNutreinsInThatPeaceOfFood= 4*dto.getGramsOfNutreins()*dto.getGramsOfFood()/100;
        double caloriesInCarbohydratesInThatPeaceOfFood= 4*dto.getGramsOfCarbohydrates()*dto.getGramsOfFood()/100;

        double sum=caloriesInFatInThatPeaceOfFood+caloriesInNutreinsInThatPeaceOfFood+caloriesInCarbohydratesInThatPeaceOfFood;
        double percentageOfFat=(caloriesInFatInThatPeaceOfFood/sum)*100;
        double percentageOfNutreins=(caloriesInNutreinsInThatPeaceOfFood/sum)*100;
        double percentageOfCarbohydrates=(caloriesInCarbohydratesInThatPeaceOfFood/sum)*100;

        percentageOfCarbohydrates=Math.round(percentageOfCarbohydrates);
        percentageOfNutreins=Math.round(percentageOfNutreins);
        percentageOfFat=Math.round(percentageOfFat);

        sum*=1000;
        sum=Math.round(sum);
        sum/=1000;

        caloriesInFatInThatPeaceOfFood*=100;
        caloriesInFatInThatPeaceOfFood=Math.round(caloriesInFatInThatPeaceOfFood);
        caloriesInFatInThatPeaceOfFood/=100;

        caloriesInCarbohydratesInThatPeaceOfFood*=100;
        caloriesInCarbohydratesInThatPeaceOfFood=Math.round(caloriesInCarbohydratesInThatPeaceOfFood);
        caloriesInCarbohydratesInThatPeaceOfFood/=100;

        caloriesInNutreinsInThatPeaceOfFood*=100;
        caloriesInNutreinsInThatPeaceOfFood=Math.round(caloriesInNutreinsInThatPeaceOfFood);
        caloriesInNutreinsInThatPeaceOfFood/=100;

        return new Dish(percentageOfFat,percentageOfCarbohydrates,percentageOfNutreins,caloriesInFatInThatPeaceOfFood,caloriesInCarbohydratesInThatPeaceOfFood,caloriesInNutreinsInThatPeaceOfFood,sum,dto.getNameOfProduct(),dto.getGramsOfFood());
    }
}
